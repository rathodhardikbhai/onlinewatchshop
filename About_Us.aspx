<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="ADMIN_About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>


    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        
        h1 {
            color: #333;
        }
        
        p {
            color: #666;
            line-height: 1.6;
        }
    </style>


    
        <div class="container">
            <h1>About Us</h1>
            <p>Welcome to our company's About Us page. Here you can learn more about our team, mission, and values.</p>
            <p>Our company is committed to...</p>
            <!-- Add more content as needed -->
        </div>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

