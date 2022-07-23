<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RC_add.aspx.cs" Inherits="GrowthRoom.RC_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container"> 
    <div class="row">
        <div class="col-md-8 mx-auto">

            <div class="card border-success mb-4 border-4" style="max-width: 98rem;">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">  
                            <center> 
                                <br /> 
                            </center>
                        </div>
                    </div>

                    
                    <div class="row">
                        <div class="col">
                            <center> 
                                <h4> Room Condition's Details </h4>
                            </center>
                        </div>
                    </div>

                   

                    <div class="row">
                        <div class="col">
                            <hr> 
                        </div>
                    </div> 

                     <div class="row">
                        <div class="col-md-6">
                            <label> Tray ID </label>
                                 <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" > </asp:TextBox>
                                        <asp:Button id="button2" class="btn btn-primary" runat="server" Text="Search" OnClick="button2_Click"/>
                                   </div> 
                                </div>
                        </div>

                          <div class="col-md-6">
                              <label> Tray Number </label>
                                 <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Tray 01" Value="Tray 01" />
                                        <asp:ListItem Text="Tray 02" Value="Tray 02" />
                                        <asp:ListItem Text="Tray 03" Value="Tray 03" />
                                        <asp:ListItem Text="Tray 04" Value="Tray 04" />
                                        <asp:ListItem Text="Tray 05" Value="Tray 05" />
                                        <asp:ListItem Text="Tray 06" Value="Tray 06" />
                                        <asp:ListItem Text="Tray 07" Value="Tray 07" />
                                        <asp:ListItem Text="Tray 08" Value="Tray 08" />
                                    </asp:DropDownList> 
                                  </div> 
                              
                        </div>
                        </div> <br />

                        <div class="row">
                        <div class="col-md-6">
                            <label> Variety Name </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>

                        <div class="col-md-6">
                            <label> Light Condition </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                        </div> <br />

                        <div class="row">
                        <div class="col-md-4">
                              <label> Temperature Range </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>

                        <div class="col-md-4">
                            <label> Humidity Range </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                            
                          <div class="col-md-4">
                              <label> Oxygen Level </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                        </div> <br />

                        <div class="row">
                        <div class="col-md-6">
                            <label> Heating </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                            
                          <div class="col-md-6">
                              <label> Safety </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" > </asp:TextBox>
                                   </div> 
                        </div>
                        </div> <br />

                        <div class="col-md-12">
                              <label> Special Note </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="MultiLine"> </asp:TextBox>
                                   </div> 
                        
                            <br /> 

                            <div class="d-grid gap-2">
                                    <asp:Button id="button11" class="btn btn-warning btn-lg border-3"  runat="server" Text="Add" OnClick="Button11_Click"   /> 
                                </div>
                             <div class="d-grid gap-2">
                                    <asp:Button id="button12" class="btn btn-danger btn-lg border-3" runat="server" Text="Update" OnClick="Button12_Click"  />
                                </div>
                              <div class="d-grid gap-2">
                                    <asp:Button id="button1" class="btn btn-success btn-lg border-3" runat="server" Text="Delete" OnClick="Button1_Click"  />
                                    
                                </div>
                           
                            <br /> <br />

                                     <a href="RC_report.aspx" > << View Room Condition Report </a>
                                     <a href="PlantDetails.aspx" style="float: right;">  View Bottle with Plant List >> </a>
                       </div>          
                    </div> 
                </div> 
            </div>
        </div>
    </div>
</div>
</asp:Content>
