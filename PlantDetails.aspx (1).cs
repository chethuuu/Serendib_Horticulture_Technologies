using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GrowthRoom
{

    public partial class PlantDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getBottleByID();
        }

        //Add Button
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (checkIfBottleExists())
            {
                Response.Write("<script> alert ('Plant with this ID is already Exist. You cannot add another Plant with the same Plant ID');</script>");
            }
            else
            {
                addNewBottle();
            }
        }

        //Update Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfBottleExists())
            {
                updateBottle();
            }
            else
            {
                Response.Write("<script> alert ('Bottle does not Exist');</script>");
            }
        }

        //Delete Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBottleExists())
            {
                deleteBottle();
            }
            else
            {
                Response.Write("<script> alert ('Bottle does not Exist');</script>");
            }
        }

        //user defined function
        void addNewBottle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Plantdetailstbl (Bottle_ID, Variety_Name, Status, Growth_Potential, Date, Special_Note ) values (@Bottle_ID, @Variety_Name, @Status, @Growth_Potential, @Date, @Special_Note)", con);

                cmd.Parameters.AddWithValue("@Bottle_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Variety_Name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Status", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Growth_Potential", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Special_Note", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bottle added Successfully');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from Plantdetailstbl where Bottle_ID='" + TextBox1.Text.ToString() + "';", con);
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

        void updateBottle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Plantdetailstbl SET Variety_Name='"+ TextBox2.Text.ToString() + "' , Status = '" + TextBox3.Text.ToString() + "' , Growth_Potential = '" + TextBox4.Text.ToString() + "' , Special_Note = '" + TextBox9.Text.ToString() + "' where Bottle_ID='" + TextBox1.Text.Trim() + "'", con);

             

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bottle Updated Successfully'); </script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deleteBottle()
        {
            try
            {
                SqlConnection con = new SqlConnection (strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM Plantdetailstbl WHERE Bottle_ID='" + TextBox1.Text.ToString() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bottle Deleted Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getBottleByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Plantdetailstbl WHERE Bottle_ID='" + TextBox1.Text.ToString() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox9.Text = dr.GetValue(5).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Plant ID');</script>");
                }

                
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        } 
    }
}