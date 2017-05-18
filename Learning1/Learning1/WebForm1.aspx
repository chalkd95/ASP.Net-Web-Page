<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Learning1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Chapter 3 Review
    </title>
    <style type="text/css">
        .auto-style1 {
            height: 195px;
        }
    </style>
</head>
<body>
    <header>
        <link href="StyleSheet1.css" rel="stylesheet" />
        <img src="Images/RhinoLogo.png" alt="Test Logo Rhino" style="height: 144px; width: 300px" />
    </header>
    <main>
        <h1>Dan's 401k Calculator</h1>
        <form id="form1" runat="server" class="auto-style1">
           
            <label for="ddlMonthlyInvestment">Monthly Investment</label>
            
            <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" CssClass="entry">
            </asp:DropDownList><br />

            <label for="txtInterestRate">Annual interest rate:</label>

            <asp:TextBox ID="txtInterestRate" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInterestRate" CssClass="validator" Display="Dynamic" ErrorMessage="Interest rate is required."></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtInterestRate" CssClass="validator" Display="Dynamic" ErrorMessage="Interest rate must range from 1 to 20." MaximumValue="20" MinimumValue="1"></asp:RangeValidator>
            <br />
            <label for="txtYears">Number of years:</label>

            <asp:TextBox ID="txtYears" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYears" CssClass="validator" Display="Dynamic" ErrorMessage="Number of years is required."></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtYears" CssClass="validator" ErrorMessage="Years must range from 1 to 45." MaximumValue="45" MinimumValue="1"></asp:RangeValidator>
            <br />
            <br />
            <label for="lblFutureValue">Future Value:</label>

            <asp:Label ID="lblFutureAmt" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="98px" CssClass="button" OnClick="btnCalculate_Click" style="height: 26px" />

            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="98px" CssClass="button" OnClick="btnClear_Click" />
           
        </form>
    </main>
</body>
</html>
            