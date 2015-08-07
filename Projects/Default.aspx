<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="Default.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">BubbleGrow (C++)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="../data/testbench.png" alt="">
            </div>

            <div class="col-md-4">
                <h3>Projects - C++</h3>
                <ul>
					<li><a href="GreyWeaver.aspx">GreyWeaver - Diablo Clone</a></li>
                    <li><a href="gameboyemulator.aspx">Game Boy Emulator</a></li>
                    <li><a href="serializequeue.aspx">SerializeQueue</a></li>
                    <li><a href="bubblegrow.aspx">BubbleGrow</a></li>
                    <li><a href="concurrentcontainers.aspx">Concurrent Containers Library (CCL)</a></li>
                </ul>
				<h3>Projects - C and Java</h3>
				<ul>
                    <li><a href="wiimotion.aspx">WiiMotion+ Interface to Robotics Controller</a></li>
                </ul>
				<h3>Projects - C#</h3>
				<ul>
                    <li><a href="previewlite.aspx">PreviewLite Image Viewer</a></li>
                </ul>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


