using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.BLL;
using StockManagementSystemWebApp.DAL.Models;
using StockManagementSystemWebApp.DAL.Gateway;



namespace StockManagementSystemWebApp.UI
{
    public partial class Category : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        DAL.Models.Category category=new DAL.Models.Category();
        //CategoryGateway categoryGateway=new CategoryGateway();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowGridView();
        }
        protected void saveButton_Click(object sender, EventArgs e)
        {

            string name = categoryNameTextBox.Text;

           ;

            if (name!="")
            {
                category.Name = name;

                
                string message = categoryManager.Save(category);
                outputLabel.Text = message;
                ShowGridView();
            }
            else
            {
                outputLabel.Text = "Category name can't be empty";
                outputLabel.ForeColor = Color.Red;

            }
        }
         public void ShowGridView()
        {
            categoryGridView.DataSource = categoryManager.ShowAll();
            categoryGridView.DataBind();
        }

         protected void categoryGridView_SelectedIndexChanged(object sender, EventArgs e)
         {

         }


    }
}