<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="GameBoyEmulator.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Game Boy Emulator (C++)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="/data/GameBoyEmulator.png" alt="">
            </div>

            <div class="col-md-4">
                <p>
				GBS is a free, open-source, and cross-platform implementation of the Game Boy console written in C++14 with a single library dependency of <a href="http://www.sfml-dev.org/">SFML</a>.
				</p>
				<p>
				As of now, the emulator can play games that support either the base memory controller, or the MC1 and MC3 variants. The emulator was implemented by having a GameBoy class that held instances of a memory controller, CPU, renderer, input, and timer class (which mimicked the hardware layout of the original Game Boy). 
				</p>
				<p>
				This project holds a close place in my heart as the Game Boy was my favorite console growing up. As an added bonus, this project took advantage of my "SerializeQueue" serialization library for saving game states.
				</p>
				<a href="https://github.com/Salgat/GameBoyEmulator-GBS">- GitHub Repository</a>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


