<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_Emp.aspx.cs" Inherits="Stock_Control.Add_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .form-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
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
            transition: background-color 0.3s;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                <asp:Button ID="submitBtn" runat="server" CssClass="btn-submit" Text="Submit" OnClick="submitBtn_Click" />
            </div>
        </div>
</asp:Content>
