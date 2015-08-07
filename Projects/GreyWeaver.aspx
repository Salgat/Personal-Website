<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="GreyWeaver.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">GreyWeaver (C++)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-5">
                <img class="img-responsive" src="/data/GreyWeaver.png" alt="">
            </div>

            <div class="col-md-6">
                <p>
				GreyWeaver is a closed source C++ game whose gameplay and visuals can best be described as a Diablo-clone. This is a long-term project that has been in the works for over a year. SFML is used for the graphics; GIMP, Blender, and Python are used for all visuals; and the game is designed to be cross-platform compatible.
				</p>
				<p>
				While the game is close-sourced, details about it are occasionally released on my blog. Below is a list of features that are implemented so far,
				</p>
				<ul>
					<li>
					<b>Audio:</b> Audio effects are in the game, including sound effects for running, attacking, etc. Each map has its own music too. Check out a preview <a href="http://salgat.blogspot.com/2015/03/feature-update-audio.html">here</a>.
					</li>
					<br />
					<li>
					<b>Random Map Generation:</b> The game supports both hand-made maps and randomly generated maps. For the technical details, <a href="http://salgat.blogspot.com/2015/03/first-stages-map-generation.html">check out this blog post</a>.
					</li>
					<br />
					<li>
					<b>Questing:</b> Each quest runs off a script that can be assigned to units (NPCs). Check out this <a href="http://salgat.blogspot.com/2015/02/questing-implemented.html">blog post</a> for more information including the script implementation.
					</li>
					<br />
					<li>
					<b>Fully Parallelized:</b> At the heart of the game are the units on the screen, which are processed in parallel using Intel's <a href="https://www.threadingbuildingblocks.org/">Threading Building Blocks</a> library. Using both the Producer-Consumer model to seperate the logic processing from the visual client, and the Actor model to parallelize unit processing, the game achieves high performance that scales with as many cores as you can throw at it. Check out this <a href="http://salgat.blogspot.com/2015/02/parallelizing-game.html">blog post</a> for a great writeup covering the implementation.
					</li>
					<br />
					<li>
					<b>And many more features:</b> Experience and leveling, interface, items and inventory, saving and loading game state, menuing, and so on!
					</li>
				</ul>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


