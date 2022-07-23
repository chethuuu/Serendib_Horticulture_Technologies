<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PlantDetails.aspx.cs" Inherits="GrowthRoom.PlantDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script>
    $(document).ready(function() {
    $('#GridView1').DataTable();
    });
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-4">
                <div class="card border-success mb-4 border-4" style="max-width: 48rem;">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> Bottle with Plant Details </h4>
                                    </center>
                            </div>
                        </div> <br />

                        <div class="row">
                            <div class="col">
                                <center>
                                      <img width="270px" src="Images/imgs/bottle3.jpg" /> 
                                </center>
                                <br />
                                
                      <div class="row">
                        <div class="col-md-6">
                            <label> Bottle ID </label>
                                 <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" > </asp:TextBox>
                                        <asp:Button id="button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                        
                                      </div>
                                  </div> 
                        </div>
                            
                          <div class="col-md-6">
                              <label> Variety Name </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                        </div> <br />

                        <div class="row">
                        <div class="col-md-4">
                            <label> Status </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                            
                          <div class="col-md-4">
                              <label> Growth Potential </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>

                            <div class="col-md-4">
                              <label for="bday"> Date </label>
                                <div class="form-group">
                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" type="date"  name="bday" runat="server" > </asp:TextBox>
                                        <span class="validity"></span>
                                    </div>
                                </div>
                        </div> <br />

                        <div class="col-md-12">
                              <label> Special Note </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="MultiLine"> </asp:TextBox>
                                   </div> 
                        </div> <br />

                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <asp:Button id="button7" class="btn btn-lg btn-block btn-success" runat="server" Text= "           Add           " OnClick="Button7_Click"  />
                                </div>
                                <div class="col-4">
                                    <asp:Button id="button3" class="btn btn-lg btn-block btn-warning" runat="server" Text= "         Update        " OnClick="Button3_Click"  />
                                </div>
                                <div class="col-4">
                                    <asp:Button id="button4" class="btn btn-lg btn-block btn-danger" runat="server" Text= "         Delete         " OnClick="Button4_Click"  />
                                    
                                </div>
                            </div>
                          </div>
                        </div>

                        </div>
                    </div>
                    </div>
             
            <div class="col-md-8">
                <div class="card border-success mb-4 border-4" style="max-width: 98rem;">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center>
                                     <h4> Bottle with Plant List </h4>
                                 </center>
                             </div>
                        </div> 

                        <div class="row">
                        <div class="col">
                            <hr> 
                        </div>
                    </div>  <br />

                        <div class="row">
                            
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=Groom;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Plantdetailstbl]"></asp:SqlDataSource>
                            <div class="col">
                                
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="Bottle_ID" DataSourceID="SqlDataSource2" AllowPaging="True">
                                    <Columns>
                                        <asp:BoundField DataField="Bottle_ID" HeaderText="Bottle ID" ReadOnly="True" SortExpression="Bottle_ID" />
                                        <asp:BoundField DataField="Variety_Name" HeaderText="Variety Name" SortExpression="Variety_Name" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                        <asp:BoundField DataField="Growth_Potential" HeaderText="Growth Potential" SortExpression="Growth_Potential" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:BoundField DataField="Special_Note" HeaderText="Special Note" SortExpression="Special_Note" />
                                    </Columns>
                                </asp:GridView>
                        </div>
                            <br />
                            <a href="WebForm3.aspx" > << Go to the Growth Room Home Page </a>
                    </div> 
                </div>
            </div> </div>
        </div>
        
        
        
        </div>
            </div>
       
    



</asp:Content>
