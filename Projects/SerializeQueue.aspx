<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/MasterPage_Projects.master" AutoEventWireup="false" CodeFile="SerializeQueue.aspx.cs" Inherits="Projects_BubbleGrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ProjectContents" Runat="Server">
    <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">SerializeQueue (C++)
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="/data/serializequeue.png" alt="">
            </div>

            <div class="col-md-4">
                <p>
				SerializeQueue (serq) is a C++14 header only library that supports serializing data and STL containers using a queue. Data is pushed onto the queue and is popped in the same order. It is the responsibility of the programmer to ensure that push and pop order is correct, otherwise data will be deserialized incorrectly. Additionally, data integrity is stored using CRC32 and can be optionally checked upon deserialization.
				</p>
				<p>
				SerializeQueue supports the following data types,
				</p>
				<ul>
					<li>
					bool
					</li>
					<li>
					char, unsigned char
					</li>
					<li>
					uint64_t
					</li>
					<li>
					int, unsigned int
					</li>
					<li>
					float, double
					</li>
					<li>
					std::string
					</li>
					<li>
					STL Containers (which can hold any of the supported types, including other STL containers)
					<ul>
						<li>
						std::pair
						</li>
						<li>
						std::tuple (limited to basic types)
						</li>
						<li>
						std::vector
						</li>
						<li>
						std::array
						</li>
						<li>
						std::map, std::unordered_map
						</li>
						<li>
						std::queue
						</li>
						<li>
						std::stack
						</li>
					</ul>
					</li>
				</ul>
				<p>
				This project was created due to the lack of an easy to use serialization library. Being header only, there are no dependencies outside of adding the header file to your project.
				</p>
				<a href="https://github.com/Salgat/SerializeQueue">- GitHub Repository</a>
            </div>

        </div>
        <!-- /.row -->
</asp:Content>


