using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.BLL
{
    public class CategoryManager
    {
        CategoryGateway categoryGateway=new CategoryGateway();


        public List<Category> ShowAll()
        {

            return categoryGateway.ShowAll();

        }
        public string Save(Category category)
        {

            int rowEffect = categoryGateway.Save(category);
            if (rowEffect > 0)
            {
                return "Save Successful";
            }
            else
            {
                
                return "Dulplicate Category Not Allowed";
            }

        }
    }
}