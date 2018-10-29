<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MainId:
                <asp:Label ID="MainIdLabel1" runat="server" Text='<%# Eval("MainId") %>' />
                <br />
                StudentName:
                <asp:TextBox ID="StudentNameTextBox" runat="server" 
                    Text='<%# Bind("StudentName") %>' />
                <br />
                StudentBirthDate:
                <asp:TextBox ID="StudentBirthDateTextBox" runat="server" 
                    Text='<%# Bind("StudentBirthDate") %>' />
                <br />
                MotherName:
                <asp:TextBox ID="MotherNameTextBox" runat="server" 
                    Text='<%# Bind("MotherName") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                UID:
                <asp:TextBox ID="UIDTextBox" runat="server" Text='<%# Bind("UID") %>' />
                <br />
                GenName:
                <asp:TextBox ID="GenNameTextBox" runat="server" Text='<%# Bind("GenName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                StudentName:
                <asp:TextBox ID="StudentNameTextBox" runat="server" 
                    Text='<%# Bind("StudentName") %>' />
                <br />
                StudentBirthDate:
                <asp:TextBox ID="StudentBirthDateTextBox" runat="server" 
                    Text='<%# Bind("StudentBirthDate") %>' />
                <br />
                MotherName:
                <asp:TextBox ID="MotherNameTextBox" runat="server" 
                    Text='<%# Bind("MotherName") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                UID:
                <asp:TextBox ID="UIDTextBox" runat="server" Text='<%# Bind("UID") %>' />
                <br />
                GenName:
                <asp:TextBox ID="GenNameTextBox" runat="server" Text='<%# Bind("GenName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MainId:
                <asp:Label ID="MainIdLabel" runat="server" Text='<%# Eval("MainId") %>' />
                <br />
                StudentName:
                <asp:Label ID="StudentNameLabel" runat="server" 
                    Text='<%# Bind("StudentName") %>' />
                <br />
                StudentBirthDate:
                <asp:Label ID="StudentBirthDateLabel" runat="server" 
                    Text='<%# Bind("StudentBirthDate") %>' />
                <br />
                MotherName:
                <asp:Label ID="MotherNameLabel" runat="server" 
                    Text='<%# Bind("MotherName") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                UID:
                <asp:Label ID="UIDLabel" runat="server" Text='<%# Bind("UID") %>' />
                <br />
                GenName:
                <asp:Label ID="GenNameLabel" runat="server" Text='<%# Bind("GenName") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FarooqDBConnectionString %>" 
            InsertCommand="INSERT INTO TblMain(StudentName, StudentBirthDate, MotherName, Phone, UID, Gennn) VALUES (@StudentName, @StudentBirthDate, @MotherName, @Phone, NEWID(), @Gennn)" 
            SelectCommand="SELECT TblMain.MainId, TblMain.StudentName, TblMain.StudentBirthDate, TblMain.MotherName, TblMain.Phone, TblMain.UID, TblGen.GenName FROM TblMain FULL OUTER JOIN TblGen ON TblMain.Gennn = TblGen.GenID">
            <InsertParameters>
                <asp:Parameter Name="StudentName" />
                <asp:Parameter Name="StudentBirthDate" />
                <asp:Parameter Name="MotherName" />
                <asp:Parameter Name="Phone" />
                <asp:Parameter Name="Gennn" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Insert" />
        <asp:Button ID="Button2" runat="server" Text="Update" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
    </form>
</body>
</html>
