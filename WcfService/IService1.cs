using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码和配置文件中的接口名“IService1”。
    [ServiceContract]
    public interface IService1
    {
        //注册
        [OperationContract]
        bool Register(string username, string password);
        //登录
        [OperationContract]
        User Login(string username, string password);
        //查询所有书籍
        [OperationContract]
        List<Book> GetAllBooks();
        //添加购物车
        [OperationContract]
        void AddToCart(int userId, CartItem item);
        //添加购物车
        [OperationContract]
        void AddBookToCart(int userId, int BookID);

        //修改密码
        [OperationContract]
        bool ChangePassword(string username, string oldPassword, string newPassword);
        //管理员登录
        [OperationContract]
        bool AdminLogin(string adminName, string adminPassword);

        //关键字查询书籍
        [OperationContract]
        List<Book> SearchBooks(string keyword);
        //查询所有用户
        [OperationContract]
        List<User> GetAllUsers();
        //关键字查找用户
        [OperationContract]
        User[] SearchUsers(string keyword);

        //删除用户
        [OperationContract]
        bool DeleteUser(int userID);
        //通过ID查找书籍
        [OperationContract]
        Book GetBookByID(int BookID);
        //更新用户信息
        [OperationContract]
        bool UpdateUser(User user);
        //通过id查找用户
        [OperationContract]
        User GetUserByID(string userID);
        //删除书籍
        [OperationContract]
        bool DeleteBook(int BookID);
        //更新书籍信息
        [OperationContract]
        bool UpdateBook(Book book);






        // TODO: 在此添加您的服务操作
    }
    [DataContract]
    public class User
    {
        [DataMember]
        public string UserID { get; set; }
        [DataMember]
        public string Username { get; set; }

        [DataMember]
        public string Password { get; set; }

        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public string Phone { get; set; }
        [DataMember]

        public string Detail { get; set; }
    }
    
    [DataContract]
    public class Book
    {
        [DataMember]
        public int BookID { get; set; }

        [DataMember]
        public string Title { get; set; }

        [DataMember]
        public string Author { get; set; }

        [DataMember]
        public decimal Price { get; set; }
    }
    [DataContract]
    public class CartItem
    {
        [DataMember]
        public int BookID { get; set; }

        [DataMember]
        public int Quantity { get; set; }
    }



}
