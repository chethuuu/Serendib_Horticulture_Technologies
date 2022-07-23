using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrowthRoom
{
    public partial class RC_add : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Add button
        protected void Button11_Click(object sender, EventArgs e)
        {
            if (checkIfBottleExists())
            {
                Response.Write("<script> alert ('Tray with this ID is already Exist. You cannot add another Tray with the same Tray ID');</script>");
            }
            else
            {
                addNewTray();
            }
        }

        //Update Button
        protected void Button12_Click(object sender, EventArgs e)
        {

            if (checkIfBottleExists())
            {
                updateTray();
            }
            else
            {
                Response.Write("<script> alert ('Tray does not Exist');</script>");
            }
        }

        //Delete Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfBottleExists())
            {
                deleteTray();
            }
            else
            {
                Response.Write("<script> alert ('Tray does not Exist');</script>");
            }
        }

        //Search Button
        protected void button2_Click(object sender, EventArgs e)
        {
            getTrayByID();
        }


        //User Defined Functions
        void addNewTray()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Roomcontbl (TID, Tray_No, Variety_Name, Light_Condition, Tem_Range, Humidity, Oxygen, Heating, Safety, Special_Note) VALUES (@TID, @Tray_No, @Variety_Name, @Light_Condition, @Tem_Range, @Humidity, @Oxygen, @Heating, @Safety, @Special_Note)  ", con);

                cmd.Parameters.AddWithValue("@TID", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Tray_No", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Variety_Name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Light_Condition", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Tem_Range", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Humidity", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Oxygen", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Heating", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Safety", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Special_Note", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert ('Tray Details added Sucessfully'); </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert ('" + ex.Message + "'); </script>");
            }
        }

        bool checkIfBottleExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Roomcontbl WHERE TID = '" + TextBox4.Text.ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void updateTray()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Roomcontbl SET Variety_Name='" + TextBox3.Text.ToString() + "' , Light_Condition = '" + TextBox1.Text.ToString() + "' , Tem_Range = '" + TextBox2.Text.ToString() + "' , Humidity = '" + TextBox5.Text.ToString() + "', Oxygen = '" + TextBox6.Text.ToString() + "' , Heating = '" + TextBox7.Text.ToString() + "' , Safety = '" + TextBox8.Text.ToString() + "' , Special_Note = '" + TextBox9.Text.ToString() + "' WHERE TID ='" + TextBox4.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Tray Details Updated Successfully'); </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private void deleteTray()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM Roomcontbl WHERE TID='" + TextBox4.Text.ToString() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Tray Details Deleted Successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getTrayByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Roomcontbl WHERE TID='" + TextBox4.Text.ToString() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        DropDownList1.SelectedItem.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox1.Text = dr.GetValue(3).ToString();
                        TextBox2.Text = dr.GetValue(4).ToString();
                        TextBox5.Text = dr.GetValue(5).ToString();
                        TextBox6.Text = dr.GetValue(6).ToString();
                        TextBox7.Text = dr.GetValue(7).ToString();
                        TextBox8.Text = dr.GetValue(8).ToString();
                        TextBox9.Text = dr.GetValue(9).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Tray ID');</script>");
                }


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}