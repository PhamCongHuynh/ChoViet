<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" EnableEventValidation="false" Inherits="ChoViet_QuanTri.WebForm1" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <FTB:FreeTextBox ID="Ftnoidung" runat="server"></FTB:FreeTextBox>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        <asp:Label ID="Lbthongbao" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
