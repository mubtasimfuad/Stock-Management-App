using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using StockManagementSystemWebApp.DAL.Models;


namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CompanyGateway
    {

        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;
        private string query;


        public CompanyGateway()
        {
            string ConString = WebConfigurationManager.ConnectionStrings["StockManagementDB"].ConnectionString;
            connection = new SqlConnection(ConString);
        }
        public int Save(Company company)
        {
            int rowEffect = 0;
            if (IsCompanyExists(company.Name)== false)
            
            {
                query = "INSERT INTO Company(Name) VALUES (@name)";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@name", company.Name);

                connection.Open();
                rowEffect = command.ExecuteNonQuery();
                connection.Close();
                return rowEffect;

            }
            return rowEffect;

        }
        private bool IsCompanyExists(string companyName)
        {

            string query = "SELECT * FROM Company WHERE Name= @name";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", companyName);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;
        }
        public List<Company> ShowAllCompany()
        {
            string query = "SELECT * FROM Company";
            command = new SqlCommand(query, connection);

            List<Company> companyList = new List<Company>();

            connection.Open();
            reader = command.ExecuteReader();


            int sl = 1;
            while (reader.Read())
            {
                Company aCompany = new Company();

                aCompany.Id = sl++;
                aCompany.Name = reader["Name"].ToString();
                companyList.Add(aCompany);


            }
            connection.Close();

            return companyList;
        }

    }
}