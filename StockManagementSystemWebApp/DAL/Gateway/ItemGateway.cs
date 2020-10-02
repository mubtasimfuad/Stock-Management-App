using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class ItemGateway
    {


        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;
        string query;

        public ItemGateway()
        {
            string ConString = WebConfigurationManager.ConnectionStrings["StockManagementDB"].ConnectionString;
            connection = new SqlConnection(ConString);

        }


        public int Save(Item item)
        {
            int rowAffect = 0;
            if (IsItemExists(item) == false)
            {
                query = "INSERT INTO Items(CompanyId,CategoryId, Name,ReorderLevel,Quantity) VALUES (@companyId,@categoryId, @name,@reorderLevel,@quantity)";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@companyId", item.CompanyId);
                command.Parameters.AddWithValue("@categoryId", item.CategoryId);

                command.Parameters.AddWithValue("@name", item.Name);

                command.Parameters.AddWithValue("@reorderLevel", item.ReorderLevel);
                command.Parameters.AddWithValue("@quantity", item.Quantity);



                connection.Open();
                rowAffect = command.ExecuteNonQuery();
                connection.Close();

                return rowAffect;
            }
            return rowAffect;

        }

        private bool IsItemExists(Item item)
        {
            query = "SELECT * FROM Items WHERE CompanyId = @companyId AND Name=@name";

            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@companyId", item.CompanyId);
            command.Parameters.AddWithValue("@name", item.Name);



            connection.Open();
            reader = command.ExecuteReader();
            bool rowAffect = reader.HasRows;
            reader.Close();
            connection.Close();

            return rowAffect;
        }





        public List<Category> CatagoryDropDownList()
        {
            string query = "SELECT * FROM Category";

            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Category> categoryList = new List<Category>();
            while (reader.Read())
            {
                Category category = new Category();

                category.Id = Convert.ToInt32(reader["Id"]);
                category.Name = reader["Name"].ToString();
                categoryList.Add(category);

            }
            reader.Close();
            connection.Close();

            return categoryList;
        }

public List<Company> CompanyDropDownList()
        {
            string query = "SELECT * FROM Company";

            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Company> companyList = new List<Company>();
            while (reader.Read())
            {
                Company company = new Company();
                company.Id = Convert.ToInt32(reader["Id"]);
                company.Name = reader["Name"].ToString();
                companyList.Add(company);
            }
            reader.Close();
            connection.Close();

            return companyList;
        }


    }
}