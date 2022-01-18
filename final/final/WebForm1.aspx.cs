using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Collections;

namespace final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Okul İhtiyaç Listesi");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("Gönderildi");


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
                CheckBox1.Text = "Üyelik Sözleşmesini Okudum";
            else
                CheckBox1.Text = "Checkbox Tıklayınız";

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs("C:\\Users\\emrah\\source\\repos\\sınav\\sınav\\upload\\" + FileUpload1.FileName);
            Label3.Text = "Dosya Adı: " +
                FileUpload1.PostedFile.FileName +
                "<br />Dosya Boyutu: " +
                FileUpload1.PostedFile.ContentLength +
                "<br />Dosya Türü: " +
                FileUpload1.PostedFile.ContentType;

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}