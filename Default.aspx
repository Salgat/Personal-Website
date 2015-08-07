<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <!-- Portfolio Item Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Welcome
                <small></small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-7">
            <img class="img-responsive" src="data/salgat.jpg" alt="" />
        </div>

        <div class="col-md-4">
            <h3>Welcome</h3>
            <p>As an engineer, my passion has always been science and technology. If you get a chance, I would love for you to check out both my projects page and blog using the above navigation bar. Also, to read more about me, check out the "About" link.</p>
			<p> - Austin Salgat </p>
        </div>

    </div>
    <!-- /.row -->
</asp:Content>

