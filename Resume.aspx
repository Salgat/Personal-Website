<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <!-- Portfolio Item Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Resume - Austin Salgat
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-10">
			<h3><a href="/data/Salgat_Austin_Resume.pdf">PDF Link</a></h3>
				
            <h3>Technical</h3>
			<ul>
			<h4>Programming Languages and Software:</h4>
			<ul>
            <li>Proficient: C++, C, C#</li>
			<li>Previous Experience: Java, Assembly (68HC11, Z80, AVR, ARM)</li>
			<li>Git, Visual Studio, CLion (JetBrains)</li>
			</ul>
			</ul>
				
            <h3>Personal Projects</h3>
            <ul>
				<h4>Game Boy Emulator (C++):</h4>
				<ul>
                <li>Developed an open-source, cross-platform Game Boy Emulator</li>
				</ul>
				<h4>BubbleGrow (C++):</h4>
				<ul>
                <li>Developed a free, open-source, and cross-platform 2D game meant to help teach others how to develop</li>
				</ul>
				<h4>Nintendo Wii MotionPlus Interface to Robotics Controller (C and Java):</h4>
				<ul>
                <li>Implemented both the hardware communication protocol (I2C) and wrote a Java program to interface with Nintendo peripheral hardware for a cheap and accurate gyroscope</li>
				</ul>
				<h4>SerializeQueue (C++):</h4>
				<ul>
                <li>Developed a header only C++14 serialization library, supporting many types (including STL containers) on a single serializable and deserializable queue</li>
				</ul>
            </ul>
				
			<h3>Education</h3>
            <ul>
			<h4>Bachelor of Science in Engineering, Electrical Engineering</h4>
			<h4>Bachelor of Science in Engineering, Mechanical Engineering</h4>
			<h5>University of Michigan - Ann Arbor, MI</h5>
			<h5>Graduated July 2012</h5>
			</br>
			<h4>Chinese Study Abroad Program</h4>
			<h5>Shanghai Jiao Tong University - Shanghai, China</h5>
			<h5>April 2011 to August 2011</h5>
			<ul>
			<li>Attended engineering courses under University of Michigan's study abroad program</li>
			</ul>
			</ul>
				
			<h3>Experience</h3>
			<ul>
				<h4>Electrical Engineer and Supervisor</h4>
				<h5>ArcelorMittal - Burns Harbor, IN</h5>
				<h5>July 2012 to present</h5>
				<ul>
				<li>Plan and lead major electrical projects and renovations in an industrial setting</li>
				<li>Implemented the reliability program for electrical department</li>
				<li>Direct supervision of 4 electronics and 3 instrumentation technicians</li>
				</ul>
				</br>
				<h4>Electrical Engineering Intern</h4>
				<h5>Visteon - Van Buren Township, MI</h5>
				<h5>April 2010 to August 2010</h5>
				<ul>
				<li>Developed driving sound simulator in C++ using wxWidgets for government agency (NHTSA)</li>
				<li>Developed combustion engine audio modification for electric cars (simulate engine noise)</li>
				</ul>
				</br>
				<h4>Undergraduate Researcher - Jack Kent Cooke Research Fellowship</h4>
				<h5>APRIL Laboratory, University of Michigan - Ann Arbor, MI</h5>
				<h5>April 2009 to December 2009</h5>
				<ul>
				<li>Developed communication bus firmware (I2C) in C for the lab's autonomous robot project</li>
				<li>Developed communication interface between autonomous robot and Nintendo Wii Motion+ (Java)</li>
				</ul>
			</ul>
        </div>

    </div>
    <!-- /.row -->
</asp:Content>

