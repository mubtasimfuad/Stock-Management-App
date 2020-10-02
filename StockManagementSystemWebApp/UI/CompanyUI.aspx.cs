using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.BLL;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.UI
{
    public partial class CompanyUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        Company company = new Company();


        protected void Page_Load(object sender, EventArgs e)
        {
            ShowGridView();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = companyNameTextBox.Text;
            if (name != "")///Empty name check
            {
                company.Name = name;
                string message = companyManager.Save(company);
                outputLabel.Text = message;
                ShowGridView();
            }
            else
            {
                outputLabel.Text = "Please insert a Company";
                outputLabel.ForeColor = Color.Red;
            }

        }


        void ShowGridView()
        {
            companyGridView.DataSource = companyManager.ShowAllCompany();
            companyGridView.DataBind();
        }



    }
}