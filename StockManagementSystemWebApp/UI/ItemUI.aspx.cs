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
    public partial class ItemUI : System.Web.UI.Page
    {
       ItemManager itemManager=new ItemManager(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                categoryDropDownList.DataSource = itemManager.CatagoryDropDownList();
                categoryDropDownList.DataTextField = "Name";
                categoryDropDownList.DataValueField = "Id";
                categoryDropDownList.DataBind();
                categoryDropDownList.Items.Insert(0, new ListItem("--Select Category--", "0"));

                CompanyDropDownList.DataSource = itemManager.CompanyDropDownList();
                CompanyDropDownList.DataTextField = "Name";
                CompanyDropDownList.DataValueField = "Id";
                CompanyDropDownList.DataBind();
                CompanyDropDownList.Items.Insert(0, new ListItem("--Select Company--", "0"));
                ReorderLevelTextBox.Text = "0";
            }

        }
        
       
        protected void saveButton_OnClick(object sender, EventArgs e)
        {
            if (itemNameTextBox.Text.ToString() != "")
            {
                Item item = new Item();
                if (categoryDropDownList.Text != "0" && CompanyDropDownList.Text != "0")
                {
                    item.CategoryId = Convert.ToInt32(categoryDropDownList.SelectedValue);
                    item.CompanyId = Convert.ToInt32(CompanyDropDownList.SelectedValue);
                    item.Name = itemNameTextBox.Text;
                    if (ReorderLevelTextBox.Text.ToString() == "")
                    {
                        item.ReorderLevel = 0;
                    }
                    else
                    {
                        item.ReorderLevel = Convert.ToInt32(ReorderLevelTextBox.Text);
                    }

                    outputLabel.Text = itemManager.Save(item);

                    itemNameTextBox.Text = string.Empty;
                    ReorderLevelTextBox.Text = "0";
                }
                else
                {
                    outputLabel.Text = "Please select both company & category";
                    outputLabel.ForeColor = Color.Firebrick;

                }
            }
            else
            {
                outputLabel.Text = "Please Enter a Item Name";
                outputLabel.ForeColor = Color.Firebrick;
            }
        }
    }
}
    