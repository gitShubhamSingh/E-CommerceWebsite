<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBrands.aspx.cs" Inherits="E_Commerce.Admin.AddBrands" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
        <h2>ADD Brand</h2>
        <table>
            <tr>
                <td><asp:Label ID="lblBrandName" runat="server" Text="Brand Name :"></asp:Label></td>
                <td><asp:TextBox ID="tbBrandName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnAddBrand" runat="server" Text="AddBrand"/></td>
            </tr>
        </table>
        <br /><hr />
        <h2>Add ProductMobile</h2>

    </div>
    </form>
</body>
</html>
