<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="final.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
            height: 62px;
        }
        .auto-style2 {
            width: 409px;
        }
        .auto-style3 {
            width: 195px;
        }
    </style>
</head>
<body>
    <br />
            <br />
            <br />
            <br />
            <hr />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="ürün tipi giriniz"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="ürün adedi giriniz" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                        <br />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <hr />
            Lütfen Seçiniz<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Yeni Bağışcı</asp:ListItem>
                <asp:ListItem>Mevcut Bağışcı</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <asp:Label ID="Label2" runat="server" Text="Lütfen Bir Tarih Seçiniz"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <hr />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" />
            <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <hr />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OkulConnectionString %>" DeleteCommand="DELETE FROM [Ihtiyac] WHERE [IhtiyacId] = @IhtiyacId" InsertCommand="INSERT INTO [Ihtiyac] ([okulAdi], [e-posta], [sifre], [Adres], [Telefon], [IhtiyacTuru], [IhtıyacMıktarı], [Aciklama], [TalepTarihi]) VALUES (@okulAdi, @column1, @sifre, @Adres, @Telefon, @IhtiyacTuru, @IhtıyacMıktarı, @Aciklama, @TalepTarihi)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:OkulConnectionString.ProviderName %>" SelectCommand="SELECT [IhtiyacId], [okulAdi], [e-posta] AS column1, [sifre], [Adres], [Telefon], [IhtiyacTuru], [IhtıyacMıktarı], [Aciklama], [TalepTarihi] FROM [Ihtiyac]" UpdateCommand="UPDATE [Ihtiyac] SET [okulAdi] = @okulAdi, [e-posta] = @column1, [sifre] = @sifre, [Adres] = @Adres, [Telefon] = @Telefon, [IhtiyacTuru] = @IhtiyacTuru, [IhtıyacMıktarı] = @IhtıyacMıktarı, [Aciklama] = @Aciklama, [TalepTarihi] = @TalepTarihi WHERE [IhtiyacId] = @IhtiyacId">
                <DeleteParameters>
                    <asp:Parameter Name="IhtiyacId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="okulAdi" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="Telefon" Type="Int32" />
                    <asp:Parameter Name="IhtiyacTuru" Type="String" />
                    <asp:Parameter Name="IhtıyacMıktarı" Type="Int32" />
                    <asp:Parameter Name="Aciklama" Type="String" />
                    <asp:Parameter DbType="Date" Name="TalepTarihi" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="okulAdi" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="Telefon" Type="Int32" />
                    <asp:Parameter Name="IhtiyacTuru" Type="String" />
                    <asp:Parameter Name="IhtıyacMıktarı" Type="Int32" />
                    <asp:Parameter Name="Aciklama" Type="String" />
                    <asp:Parameter DbType="Date" Name="TalepTarihi" />
                    <asp:Parameter Name="IhtiyacId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <hr />
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Üyelik Sözleşmesini Okuyun" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
