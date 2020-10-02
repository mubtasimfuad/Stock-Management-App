<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.Category" %>

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
      <li class="active"><a href="CategoryUI.aspx">Category</a></li>
        <li  ><a href="CompanyUI.aspx">Company</a></li>
        <li><a href="ItemUI.aspx">Item</a></li>
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
  
  



     
     
<body  background="206458.gif" >
    <form id="form1" runat="server">
        <h1 style="font-family: Century Gothic; color:yellow;"align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category</h1>
    <div align = "center">
    
  
                    <asp:Label ID="Label1"  runat="server" Text="Name
                        " Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" ForeColor="#CCFFFF"></asp:Label>
                    <asp:TextBox ID="categoryNameTextBox" runat="server" style="margin-left: 0px; margin-top: 0px;" Width="319px" Height="19px"></asp:TextBox>
               
                    <br />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Width="81px" style="margin-left: 23px" BorderColor="Red" BorderStyle="Dashed" Font-Bold="True" Font-Size="Large" ForeColor="#333333" />
               
           </div >
             <div align="center">
               
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                    <asp:Label ID="outputLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            
            <br />
            <br />
            <br />
            <br />
            
            <br />
        <asp:GridView HorizontalAlign="Center" ID="categoryGridView"  runat="server" CellPadding="4" ForeColor="#FF5050" AutoGenerateColumns="False" Width="593px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Font-Size="Larger">
            <RowStyle HorizontalAlign="Right" BackColor="White" />
            <Columns  >
                
                <asp:TemplateField HeaderText="SL">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Id")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Name")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              </Columns>
            <EditRowStyle Font-Size="X-Large" HorizontalAlign="Center" Wrap="True" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="Yellow" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>
            
           
             </div>
    </form>
 
</body>
</html>
