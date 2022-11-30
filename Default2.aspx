<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BloodCorpuscleConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:BloodCorpuscleConnectionString.ProviderName %>" 
        SelectCommand="SELECT [Department], [P_district], [SerialID], [Patient_num] FROM [Patient]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="SerialID" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="P_district" HeaderText="P_district" 
                SortExpression="P_district" />
            <asp:BoundField DataField="SerialID" HeaderText="SerialID" ReadOnly="True" 
                SortExpression="SerialID" />
            <asp:BoundField DataField="Patient_num" HeaderText="Patient_num" 
                SortExpression="Patient_num" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
