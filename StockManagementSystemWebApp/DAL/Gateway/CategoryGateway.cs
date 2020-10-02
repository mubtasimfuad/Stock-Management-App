using System;
using System.Collections.Generic;                            
using System.Linq;                           
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CategoryGateway
    {

        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;
        private string query;
        public CategoryGateway()
        {
            string conString = WebConfigurationManager.ConnectionStrings["StockManagementDB"].ConnectionString;
            connection = new SqlConnection(conString);
        }
        public int Save(Category category)
        {

           

            int rowEffect = 0;
            if (IsCategoryExists(category) == false)
            {
                query = "INSERT INTO Category(Name) VALUES (@name)";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@name",category.Name);

                connection.Open();
                rowEffect = command.ExecuteNonQuery();
                connection.Close();
                return rowEffect;

            }

            return rowEffect;
        }
        private bool IsCategoryExists(Category category)
        {
            string query = "SELECT * FROM Category WHERE Name= @name"; 
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", category.Name);


            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;
        }

        public List<Category> ShowAll()
        {
            query = "SELECT * FROM Category";
            command = new SqlCommand(query, connection);

            List<Category> categoryList = new List<Category>();

            connection.Open();
            reader = command.ExecuteReader();


            int count = 1;
            while (reader.Read())
            {
                Category category = new Category();

                category.Name = reader["Name"].ToString();

                category.Id = count++;
                categoryList.Add(category);

            }
            
            connection.Close();

            return categoryList;
        }

        
    }
}