<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Commerce.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        *{
            font-family:'Segoe UI';
        }
        .auto-style1 {
            width: 100%;
        }
        .btnCart{
            margin-top:10px;
            padding:10px 20px;
            text-decoration:none;
            color:#fff;
            background-color:coral;
        }
        .btnCart:hover{
            box-shadow:10px 10px 50px #000;
        }
        #DataList1{
            border:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
    <div style="margin-left:100px;">
       <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="None" RepeatDirection="Horizontal" HorizontalAlign="Left" RepeatColumns="4">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" BorderWidth="0px" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' Height="250px" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="BrandName" runat="server" Text='<%# Eval("BrandName") %>' ForeColor="#000099"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="ProductName" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b style="font-size:30px;">&#x20b9;</b>
                            <asp:Label ID="lblNewPrice" runat="server" Text='<%# Eval("NewPrice") %>' ForeColor="Black"></asp:Label>&nbsp;
                            <asp:Label ID="lblOldPrice" runat="server" Text='<%# Eval("OldPrice") %>' Font-Strikeout="True" ForeColor="#999999" Font-Size="Small"></asp:Label>&nbsp;
                            <asp:Label ID="lblOff" runat="server" Text='<%# Eval("Off") %>' ForeColor="#CC0000"></asp:Label>
                            <asp:Label ID="lblOffPercentege" runat="server" Text="%OFF" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnCart">AddToCart</asp:LinkButton>
                            
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            
        </asp:DataList>
        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT * FROM [tblProducts]"></asp:SqlDataSource>
    </div>
</asp:Content>
