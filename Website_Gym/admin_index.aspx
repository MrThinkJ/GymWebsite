<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_index.aspx.cs" Inherits="Website_Gym.admin_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
              <li class="breadcrumb-item active" aria-current="page">Analysis</li>
            </ol>
          </nav>
        </div>
      </div>
      <!--end breadcrumb-->

      <div class="row">
        <div class="col-xxl-8 d-flex align-items-stretch">
          <div class="card w-100 overflow-hidden rounded-4">
            <div class="card-body position-relative p-4">
              <div class="row">
                <div class="col-12 col-sm-7 ms-auto">
                  <div class="d-flex align-items-center gap-3 mb-5">
                    <img src="material/images/avatars/01.png" class="rounded-circle bg-grd-info p-1" width="60"
                      height="60" alt="user">
                    <div class="">
                      <p class="mb-0 fw-semibold">Welcome back</p>
                      <h4 class="fw-semibold mb-0 fs-4 mb-0">Admin</h4>
                    </div>
                  </div>
                  <div class="d-flex align-items-center gap-5">
                    <div class="">
                      <h4 class="mb-1 fw-semibold d-flex align-content-center">Hello!<i
                          class="ti ti-arrow-up-right fs-5 lh-base text-success"></i>
                      </h4>
                      <p class="mb-3">The business is growing well, please keep trying</p>
                      <div class="progress mb-0" style="height:5px;">
                        <div class="progress-bar bg-grd-success" role="progressbar" style="width: 100%"
                          aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-5">
                  <div class="welcome-back-img pt-4">
                    <img src="material/images/gallery/welcome-back-3.png" height="180" alt="">
                  </div>
                </div>
              </div><!--end row-->
            </div>
          </div>
        </div>

        <!-- Start Access User -->
        <div class="col-xl-6 col-xxl-2 d-flex align-items-stretch">
          <div class="card w-100 rounded-4">
            <div class="card-body">
              <div class="d-flex align-items-start justify-content-between mb-1">
                <div class="">
                  <h5 class="mb-0">Target Access</span></h5>
                  <!-- Biểu đồ tôi chỉnh rồi đổ data vào đây là được -->
                  <p class="mb-0" id="targetUsers">175<span> Users</span> </p>
                </div>
              </div>
              <div class="chart-container2">
                <div id="chart1"></div>
              </div>
              <div class="text-center">
                <!-- Biểu đồ tôi chỉnh rồi đổ data vào đây là được -->
                <p class="mb-0 font-12" id="numberUsers">20<span> Users</span></p>
              </div>
            </div>
          </div>
        </div>
        <!-- End Number User -->


        <!-- Start User Online -->
        <div class="col-xl-6 col-xxl-2 d-flex align-items-stretch">
          <div class="card w-100 rounded-4">
            <div class="card-body">
              <div class="d-flex align-items-start justify-content-between">
                <div class="">
                  <h5 class="mb-0">Users Online</h5>
                  <p class="mb-0" id="onlineUsers">2</p>
                </div>
              </div>
              <div class="chart-container2">
                <div id="chart2"></div>
              </div>
              <div class="text-center">
                <p class="mb-0 mt-1 font-12"><span class=" me-1" id="percentageChange">2</span>Online</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End User Online -->

        <!-- Start Register Daily -->
        <div class="col-xl-6 col-xxl-6 d-flex align-items-stretch">
          <div class="card w-100 rounded-4">
            <div class="card-body">
              <div class="text-center">
                <h5 class="mb-0">Daily Register</h5>
              </div>
              <div class="mt-4" id="chart5"></div>
              <p>Daily Register From User</p>
              <div class="d-none">
                <p id="numberRegisterInMon">2</p>
                <p id="numberRegisterInTue">6</p>
                <p id="numberRegisterInWed">3</p>
                <p id="numberRegisterInThu">8</p>
                <p id="numberRegisterInFri">10</p>
                <p id="numberRegisterInSat">12</p>
                <p id="numberRegisterInSun">9</p>
              </div>
              <div class="d-flex align-items-center gap-3 mt-4">
                <div class="">
                  <h1 class="mb-0 text-primary">Total: <span id="totalRegister">69</span></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Register Daily -->

        <!-- Start Class User -->
        <div class="col-xl-6 col-xxl-6 d-flex align-items-stretch">
          <div class="card w-100 rounded-4">
            <div class="card-body">
              <div class="d-flex flex-column gap-3">
                <div class="d-flex align-items-start justify-content-center">
                  <div class="">
                    <h5 class="mb-0 justify-content-center">User's Class</h5>
                  </div>
                </div>

                <!-- Start Chart Classes -->
                <div class="position-relative">
                  <div class="piechart-legend">
                    <h2 class="mb-1">69</h2>
                    <h6 class="mb-0">Users</h6>
                  </div>
                  <div id="chart6"></div>
                </div>
                <div id="class-data" class="d-flex flex-column gap-3">
                  <!-- Đoạn này anh đổ data vào class-entry là tên lớp -->
                  <!-- Data vào class-value là số lượng học viên của lớp đó nhé a -->
                  <!-- Tôi config ở chart như thế ấy. Để có gì thêm sửa xóa lớp nó tự cập nhật luôn -->
                  <div class="d-flex align-items-center justify-content-between class-entry">
                    <p class="mb-0 d-flex align-items-center gap-2 w-25">Zumbo</p>
                    <div class="">
                      <p class="class-value mb-0">13</p>
                    </div>
                  </div>
                  <div class="d-flex align-items-center justify-content-between class-entry">
                    <p class="mb-0 d-flex align-items-center gap-2 w-25">Cardio</p>
                    <div class="">
                      <p class="class-value mb-0">27</p>
                    </div>
                  </div>
                  <div class="d-flex align-items-center justify-content-between class-entry">
                    <p class="mb-0 d-flex align-items-center gap-2 w-25">Nutritional Guidance</p>
                    <div class="">
                      <p class="class-value mb-0">29</p>
                    </div>
                  </div>
                </div>
                <!-- End Chart Classes -->
                 
              </div>
            </div>
          </div>
        </div>
        <!-- End Class User -->

      </div>
    </div>
  </main>
  <!--end main wrapper-->
</asp:Content>
