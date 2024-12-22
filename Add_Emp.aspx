<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Emp.aspx.cs" Inherits="Stock_Control.Add_Emp" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 4px rgba(0, 123, 255, 0.5);
        }
        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Add Employee</h2>
            <div class="form-group">
                <label for="badgeNumber">Badge Number</label>
                <asp:TextBox ID="badgeNumber" runat="server" CssClass="form-control" placeholder="Enter Badge Number" Required="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="badgeNumber" 
                    ErrorMessage="Badge Number is required" ForeColor="Red" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="employeeName">Name</label>
                <asp:TextBox ID="employeeName" runat="server" CssClass="form-control" placeholder="Enter Name" Required="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="employeeName"
                    ErrorMessage="Employee Name is required" ForeColor="Red" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="department">Department</label>
                <asp:TextBox ID="department" runat="server" CssClass="form-control" placeholder="Enter Department" Required="true"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="department"
                    ErrorMessage="Department is required" ForeColor="Red" Display="Dynamic" />
            </div>
            <div class="form-group">
                <asp:Button ID="submitBtn" runat="server" CssClass="btn-submit" Text="Submit" OnClick="SubmitBtn_Click" />
            </div>
        </div>
    </form>
</body>
</html>
