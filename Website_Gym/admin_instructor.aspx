<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_instructor.aspx.cs" Inherits="Website_Gym.admin_instructor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start main wrapper-->
        <main class="main-wrapper">
            <div class="main-content">

                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                    <div class="breadcrumb-title pe-3">Dashboard</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Instructor</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->

                <!-- Start Main Content -->
                <div class="row">

                    <!-- Start 
                        er Instructor -->
                    <div class="row g-3">
                        <div class="d-flex justify-content-between">
                            <div class="col-auto">
                                <div class="position-relative">
                                    <h1 class="">Table of Instructors</h1>
                                </div>
                            </div>
                            <div class="col-auto">
                                <div class="d-flex align-items-center gap-2 justify-content-lg-end">
                                    <button class="btn btn-filter px-4"><i class="bi bi-box-arrow-right me-2"></i>Export</button>
                                    <button class="btn btn-primary px-4"><i class="bi bi-plus-lg me-2"></i><a href="#instructorInformation" class="text-white">Add Customers</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Header Instructor -->

                    <!-- Start Instructor -->
                    <div class="card mt-4">
                        <div class="card-body">
                            <div class="customer-table">
                                <div class="table-responsive white-space-nowrap">
                                    <asp:GridView ID="InstructorGridView" runat="server" AutoGenerateColumns="False" CssClass="table align-middle">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <a class="d-flex align-items-center gap-3" href="javascript:;">
                                                        <div class="customer-pic">
                                                            <img src="material/images/avatars/01.png" class="rounded-circle" width="40" height="40" alt="">
                                                        </div>
                                                        <p class="mb-0 customer-name fw-bold"><%# Eval("Name") %></p>
                                                    </a>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                            <asp:BoundField DataField="class_name" HeaderText="Class" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" />
                                            <asp:BoundField DataField="Day" HeaderText="Day" />
                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <div class="d-md-flex d-grid align-items-center gap-1">
                                                        <asp:Button runat="server" Text="Delete" CssClass="btn btn-grd-primary px-1" CommandName="Delete" CommandArgument='<%# Eval("instructor_id") %>' OnCommand="ActionButton_Command" />
                                                        <asp:Button runat="server" Text="Edit" CssClass="btn btn-grd-info px-1" CommandName="Edit" CommandArgument='<%# Eval("instructor_id") %>' OnCommand="ActionButton_Command" />
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Table Instructor -->

                    <!-- Start Form Instructor -->
                    <div class="card">
                        <div id="instructorInformation" runat="server">
                            <div class="card-body p-4">
                                <h5 class="mb-4">Instructor Information</h5>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="txtName" CssClass="col-sm-3 col-form-label" runat="server">Enter Name</asp:Label>
                                    <div class="col-sm-9">
                                        <div class="position-relative input-icon">
                                            <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Enter Name" runat="server" />
                                            <span class="position-absolute top-50 translate-middle-y"><i class="material-icons-outlined fs-5">person_outline</i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="txtPhone" CssClass="col-sm-3 col-form-label" runat="server">Phone No</asp:Label>
                                    <div class="col-sm-9">
                                        <div class="position-relative input-icon">
                                            <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="Phone No" runat="server" />
                                            <span class="position-absolute top-50 translate-middle-y"><i class="material-icons-outlined fs-5">phone</i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="txtEmail" CssClass="col-sm-3 col-form-label" runat="server">Email Address</asp:Label>
                                    <div class="col-sm-9">
                                        <div class="position-relative input-icon">
                                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Address" runat="server" />
                                            <span class="position-absolute top-50 translate-middle-y"><i class="material-icons-outlined fs-5">send</i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="txtDay" CssClass="col-sm-3 col-form-label" runat="server">Choose Day</asp:Label>
                                    <div class="col-sm-9">
                                        <div class="position-relative input-icon">
                                            <asp:TextBox ID="txtDay" CssClass="form-control" placeholder="Input Day" runat="server" />
                                            <span class="position-absolute top-50 translate-middle-y"><i class="material-icons-outlined fs-5">vpn_key</i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="ddlClasses" CssClass="col-sm-3 col-form-label" runat="server">Select Class</asp:Label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="ddlClasses" CssClass="form-select" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <asp:Label AssociatedControlID="txtAddress" CssClass="col-sm-3 col-form-label" runat="server">Address</asp:Label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAddress" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Address" runat="server" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9">
                                        <div class="d-md-flex d-grid align-items-center gap-3">
                                            <asp:Button ID="btnSubmit" CssClass="btn btn-grd-primary px-4" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
                                            <asp:Button ID="btnReset" CssClass="btn btn-grd-royal px-4" Text="Reset" OnClick="btnReset_Click" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End Form Instructor -->



                </div>
            </div>
        </main>
        <!--end main wrapper-->
</asp:Content>
