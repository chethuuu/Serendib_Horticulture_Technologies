<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RC_report.aspx.cs" Inherits="GrowthRoom.RC_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class ="container-fluid ">
    <div class="card border-success mb-4 border-4" style="max-width: 129rem;">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center>
                                     <h2> Room Condition Report </h2>
                                 </center>
                             </div>
                        </div> 

                         <div class="row">
                        <div class="col">
                            <hr> 
                        </div>
                    </div>  <br />

                        <div class="row">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=Groom;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Roomcontbl]"></asp:SqlDataSource>
                <div class="col">
                   
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Tray_No" DataSourceID="SqlDataSource1" >
                        <Columns>

                            <asp:BoundField DataField="TID" HeaderText="Tray ID" ReadOnly="True" SortExpression="TID" />
                            <asp:BoundField DataField="Tray_No" HeaderText="Tray Number" ReadOnly="True" SortExpression="Tray_No" />
                            <asp:BoundField DataField="Variety_Name" HeaderText="Variety Name" SortExpression="Variety_Name" />
                            <asp:BoundField DataField="Light_Condition" HeaderText="Light Condition" SortExpression="Light_Condition" />
                            <asp:BoundField DataField="Tem_Range" HeaderText="Temperature Range" SortExpression="Tem_Range" />
                            <asp:BoundField DataField="Humidity" HeaderText="Humidity Range" SortExpression="Humidity" />
                            <asp:BoundField DataField="Oxygen" HeaderText="Oxygen Level" SortExpression="Oxygen" />
                            <asp:BoundField DataField="Heating" HeaderText="Heating" SortExpression="Heating" />
                            <asp:BoundField DataField="Safety" HeaderText="Safety" SortExpression="Safety" />
                            <asp:BoundField DataField="Special_Note" HeaderText="Special Note" SortExpression="Special_Note" />
                        </Columns>
                        

                    </asp:GridView>
                    <br /> <br />

                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <asp:Button id="button13" class="btn btn-warning btn-lg " runat="server" Text= "      Edit        "  PostBackUrl="RC_add.aspx"/> 
                                
                    </div>

                </div> 
            </div>
        </div>
    </div>
        </div> </div>

                 
                
</asp:Content>
