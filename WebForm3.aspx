<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="GrowthRoom.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.container {
  position: relative;
  text-align: center;
  color: white;
}

.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.top-left {
  position: absolute;
  top: 150px;
  left: 630px;
  transform: translate(-50%, -50%);
  font-size:80px;
  font-weight:400;
  font-family:URW Chancery L, cursive;
  color:white;
}

.top-right {
  position: absolute;
  top: 8px;
  bottom: 30px;
  right: 16px;
  
 }


.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

.centered {
  position: absolute;
  top: 80%;
  left: 60%;
}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
  <div class="container-fluid">
      <img src="Images/imgs/GR-13.jpg" width="2020" height="870">
      <div class="bottom-left"></div>
      <div class="top-left">  Welcome To the Growth Room... </div>
      <div class="top-right"></div>
      <div class="bottom-right">Bottom Right</div>
      <div class="centered"> 
          <br /><br />
         <a href="RC_add.aspx"> 
             <button type="button" class="btn btn-dark btn-lg"> Room Condition Details </button>
         </a>

        <a href="PlantDetails.aspx"> 
            <button type="button" class="btn btn-dark btn-lg" > Bottle with Plant Details</button>
        </a>

        <a href="RC_Report.aspx"> 
            <button type="button" class="btn btn-dark btn-lg"> Room Condition Report </button>
        </a>

      </div>
</div>
    
</asp:Content>
