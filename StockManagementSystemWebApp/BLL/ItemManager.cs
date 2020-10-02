using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;

namespace StockManagementSystemWebApp.BLL
{
    public class ItemManager
    {
        ItemGateway itemGateway=new ItemGateway();

        public List<Company> CompanyDropDownList()
        {
            return itemGateway.CompanyDropDownList();
        }

        public List<Category> CatagoryDropDownList()
        {
            return itemGateway.CatagoryDropDownList();

        }

        public string Save(Item item)
        {
            int rowEffect = itemGateway.Save(item);
            if (rowEffect > 0)
            {
                return "Save Successful!!!";
            }
            else
            {
                return "Company already Exists";
            }

        }
        }
    }
