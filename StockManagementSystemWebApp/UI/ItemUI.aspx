<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.ItemUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     
<head>
  <title>Stock Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Stock Management System </a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="CategoryUI.aspx">Category</a></li>
        <li ><a href="CompanyUI.aspx">Company</a></li>
        <li class="active"><a href="ItemUI.aspx">Item</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Stock <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Stock In</a></li>
          <li><a href="#">Stock Out</a></li>
          
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
  



     
     
<body  background="b.jpg" allign="center">
<body>
    <form id="form1" runat="server">
       <strong> <h1 style="font-family: Century Gothic; color:red;"align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Item</h1></strong>
        <div align="center"/>
        <div class="maindiv" align="center">
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Category" Font-Bold="True" ForeColor="Yellow" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="categoryDropDownList" runat="server" AutoPostBack="True" CssClass="auto-style1" Height="46px" Width="619px" Font-Size="Large">
                            <asp:ListItem Value="0">-- Select Category</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Company" Font-Bold="True" ForeColor="Yellow" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="CompanyDropDownList" runat="server" AutoPostBack="True" Height="46px" Width="619px" Font-Size="Large">
                            <asp:ListItem Value="0">-- Select Category</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Item Name" Font-Bold="True" Font-Italic="False" ForeColor="Yellow" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="itemNameTextBox" runat="server" CssClass="textbox" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Height="39px" Width="619px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Reorder Level " Font-Bold="True" ForeColor="Yellow" Font-Size="Large"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="ReorderLevelTextBox" runat="server" CssClass="textbox" TextMode="Number" Font-Bold="True" Font-Italic="False" ForeColor="#FF6600" Height="39px" Width="620px" Font-Size="Larger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_OnClick" CssClass="button2" BorderColor="Red" BorderStyle="Dotted" Font-Bold="True" ForeColor="Black" Height="35px" Width="143px" Font-Size="Large"/>
                    </td>
                </tr>
                <tr>
                    <td align="center"class="auto-style1">
                        <asp:Label ID="outputLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>


        <footer><p>
            &nbsp;</p></footer>


    </form>
    
        <div align="center">
    
        &nbsp;< p >
        <span style="color: rgb(51, 51, 51); font-family: ff-meta-serif-web-pro, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 20.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">“</span><em style="margin: 0px; padding: 0px; border: 0px; font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 20.8px; line-height: inherit; font-family: ff-meta-serif-web-pro, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; text-decoration: none; vertical-align: baseline; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">If 
        you aren’t willing to own a stock for ten years, don’t even think about owning it for ten minutes ”</em>
            <em style="margin: 0px; padding: 0px; border: 0px; font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 20.8px; line-height: inherit; font-family: ff-meta-serif-web-pro, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; text-decoration: none; vertical-align: baseline; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            <br />
            <br />
&nbsp;-Warren Buffett  </em>  <br />
            <div align="justify">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
          
          
        </div>

</body>
</html>
