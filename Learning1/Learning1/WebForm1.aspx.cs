using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Learning1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
                for (int i = 50; i <= 500; i += 50)
                    this.ddlMonthlyInvestment.Items.Add(i.ToString());
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected decimal CalculateFutureValue(int monthlyInvestment,
      decimal yearlyInterestRate, int years)
        {
            int months = years * 12;
            decimal monthlyInterestRate = yearlyInterestRate / 12 / 100;
            decimal futureValue = 0;

            for (int i = 0; i < months; i++)
            {
                futureValue = (futureValue + monthlyInvestment)
                    * (1 + monthlyInterestRate);
            }
            return futureValue;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int monthlyInvestment =
                    Convert.ToInt32(this.ddlMonthlyInvestment.SelectedValue);
                decimal yearlyInterestRate =
                    Convert.ToDecimal(this.txtInterestRate.Text);
                int years =
                     Convert.ToInt32(this.txtYears.Text);

                decimal futureValue = this.CalculateFutureValue(monthlyInvestment,
                    yearlyInterestRate, years);

                lblFutureAmt.Text = futureValue.ToString("c");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddlMonthlyInvestment.SelectedIndex = 0;
            txtInterestRate.Text = "";
            txtYears.Text = "";
            this.lblFutureAmt.Text = "";
        }
    }
}