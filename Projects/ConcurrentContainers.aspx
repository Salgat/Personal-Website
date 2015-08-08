<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="ConcurrentContainers.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Concurrent Containers Library (C++)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="/data/ConcurrentContainers.png" alt="">
            </div>

            <div class="col-md-4">
                <p>
				The Concurrent Containers Library (CCL) is a personal attempt to create concurrent containers using C++14 and being header only. The interfaces for each container are different than the comparable standard library version. It should be noted that this is a naive implementation of concurrent containers, and should not be used for a serious project (there are no guarantees that it is thread-safe, despite having been tested).</p>
				<p>
				The following concurrent containers are supported,
				</p>
				<ul>
					<li>
					Stack
					</li>
					<li>
					Queue
					</li>
					<li>
					"Data Pool"
					</li>
					<li>
					Map
					</li>
				</ul>	
				<p>
				</p>
				<a href="https://github.com/Salgat/Concurrent-Containers-Library">- GitHub Repository</a>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


