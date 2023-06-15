using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.UI.WebControls.WebParts;

namespace WcfService
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码、svc 和配置文件中的类名“Service1”。
    // 注意: 为了启动 WCF 测试客户端以测试此服务，请在解决方案资源管理器中选择 Service1.svc 或 Service1.svc.cs，然后开始调试。
    public class Service1 : IService1
    {

        // 数据库连接字符串
        private string connectionString = "Data Source=(local);Initial Catalog=BookStoreDB;Integrated Security=True";

        //管理员登陆

        public bool AdminLogin(string adminName, string adminPassword)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE AdminName = @AdminName AND AdminPassword = @AdminPassword", connection))
                {
                    command.Parameters.AddWithValue("@AdminName", adminName);
                    command.Parameters.AddWithValue("@AdminPassword", adminPassword);

                    int adminCount = (int)command.ExecuteScalar();
                    return adminCount > 0;
                }
            }
        }

        //修改密码
        public bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT Password FROM dbo.Users WHERE Username=@username";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);

                    object result = command.ExecuteScalar();
                    if (result == null || !oldPassword.Equals(result.ToString()))
                    {
                        // Username not found or old password doesn't match
                        return false;
                    }
                }

                query = "UPDATE dbo.Users SET Password=@newPassword WHERE Username=@username";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@newPassword", newPassword);

                    int rowsUpdated = command.ExecuteNonQuery();
                    return rowsUpdated > 0;
                }
            }
        }

        public bool Register(string username, string password)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Check if the username already exists
                using (SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM dbo.Users WHERE Username = @Username", connection))
                {
                    command.Parameters.AddWithValue("@Username", username);

                    int userCount = (int)command.ExecuteScalar();
                    if (userCount > 0)
                    {
                        // If the username already exists, return false
                        return false;
                    }
                }

                // If the username doesn't exist, insert a new row
                using (SqlCommand command = new SqlCommand("INSERT INTO dbo.Users (Username, Password) VALUES (@Username, @Password)", connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password); // 注意：在实际应用中，你应该存储密码的散列，而不是明文密码

                    command.ExecuteNonQuery();
                }
            }

            // If everything went well, return true
            return true;
        }

        //登录
        public User Login(string username, string password)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM dbo.Users WHERE Username = @Username AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return new User { Username = reader["Username"].ToString(), Password = reader["Password"].ToString() };
                        }
                        else
                        {
                            return null;
                        }
                    }
                }
            }
        }
        
        //查询书籍
        public List<Book> GetAllBooks()
        {
            var books = new List<Book>();

            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Books", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    var book = new Book
                    {
                        BookId = (int)rdr["BookId"],
                        Title = rdr["Title"].ToString(),
                        Author = rdr["Author"].ToString(),
                        Price = (decimal)rdr["Price"]
                    };
                    books.Add(book);
                }
            }

            return books;
        }
        //添加购物车
        /*public bool AddBookToCart(int bookId, string userId)
        {
            try
            {
                using (var db = new BookStoreDbContext())
                {
                    // 获取要添加的书籍
                    var book = db.Books.SingleOrDefault(b => b.BookId == bookId);
                    if (book == null)
                    {
                        return false; // 书籍不存在
                    }

                    // 获取用户的购物车
                    var cart = db.Carts.SingleOrDefault(c => c.UserId == userId);
                    if (cart == null)
                    {
                        // 如果购物车不存在，就创建一个新的购物车
                        cart = new Cart { UserId = userId };
                        db.Carts.Add(cart);
                    }

                    // 将书籍添加到购物车
                    cart.Books.Add(book);

                    // 保存更改
                    db.SaveChanges();

                    return true;
                }
            }
            catch (Exception)
            {
                // 如果在处理过程中出现异常，返回false
                return false;
            }
        }*/

        //添加购物车
        public void AddToCart(int userId, CartItem item)
        {
            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO dbo.Cart (UserId, BookId, Quantity) VALUES (@UserId, @BookId, @Price) " +
                    "ON DUPLICATE KEY UPDATE Quantity = Quantity + @Quantity", con);

                cmd.Parameters.AddWithValue("@UserId", userId);
                cmd.Parameters.AddWithValue("@BookId", item.BookId);
                cmd.Parameters.AddWithValue("@Quantity", item.Quantity);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        //添加购物车-1
        public void AddBookToCart(int userId, int bookId)
        {
            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Cart (UserId, BookId) VALUES (@UserId, @BookId)", con);
                cmd.Parameters.AddWithValue("@UserId", userId);
                cmd.Parameters.AddWithValue("@BookId", bookId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
