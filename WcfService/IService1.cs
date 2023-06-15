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


        [OperationContract]
        bool Register(string username, string password);

        [OperationContract]
        User Login(string username, string password);
        [OperationContract]
        List<Book> GetAllBooks();
        [OperationContract]
        void AddToCart(int userId, CartItem item);
        [OperationContract]
        void AddBookToCart(int userId, int bookId);

        //修改密码
        [OperationContract]
        bool ChangePassword(string username, string oldPassword, string newPassword);
        [OperationContract]
        bool AdminLogin(string adminName, string adminPassword);



        // TODO: 在此添加您的服务操作
    }
    [DataContract]
    public class User
    {
        [DataMember]
        public string UserID { get; set; }
        public string Username { get; set; }

        [DataMember]
        public string Password { get; set; }
    }
    
    [DataContract]
    public class Book
    {
        [DataMember]
        public int BookId { get; set; }

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
        public int BookId { get; set; }

        [DataMember]
        public int Quantity { get; set; }
    }


}
