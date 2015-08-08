<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="WiiMotion.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Wii MotionPlus Interface to Robotics Controller (C and Java)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="/data/WiiMotion.png" alt="">
            </div>

            <div class="col-md-4">
                <p>
				In between semesters, I was able to recieve an undergraduate research fellowship at the University of Michigan - Ann Arbor. The lab I was assigned to had me tasked with implementing I2C, a type of hardware communication protocol.
				</p>
				<p>
				After completing implementing the interface (which was written in C and implemented as part of the custom nanokernel), I decided to write an interface to Nintendo Wii Controller peripherals in Java to demonstrate communications. The professor and other students decided to utilize this technology to implement a very cheap and reliable gyroscrope and accelerometer by using the Wii MotionPlus peripheral.
				</p>
				<a href="http://salgat-urop.blogspot.com/">- Fellowship Experience Blog</a>
				</br>
				<a href="https://www.youtube.com/watch?v=F-jsrnr3r5c">- Video demonstration of interfacing between computer and peripheral</a>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


