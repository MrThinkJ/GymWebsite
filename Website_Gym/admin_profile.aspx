<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="Website_Gym.admin_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <!--start main wrapper-->
  <main class="main-wrapper">
    <div class="main-content">
      <!--breadcrumb-->
      <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Admin</div>
        <div class="ps-3">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
              <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Profile</li>
            </ol>
          </nav>
        </div>
      </div>
      <!--end breadcrumb-->

      <!-- Start Infor Profile -->
      <div class="card rounded-4" style="width: 50%; margin: auto; margin-bottom: 20px;">
        <div class="card-body p-2">
          <div class="position-relative mb-5">
            <img src="material/images/gallery/profile-cover.png" class="img-fluid rounded-4 shadow" alt="">
            <div class="profile-avatar position-absolute top-100 start-50 translate-middle">
              <img src="material/images/avatars/01.png" class="img-fluid rounded-circle p-1 bg-grd-danger shadow"
                width="170" height="170" alt="">
            </div>
          </div>
          <div class="profile-info pt-5 d-flex align-items-center justify-content-center">
            <div class="text-center">
              <h3>Nguyen Thi</h3>
              <p>Admin</p>
            </div>
          </div>
        </div>
      </div>
      <!-- End Infor Profile -->

      <!-- Start Edit Profile -->
      <div class="row">
        <div class="col-12 col-xl-8">
          <div class="card rounded-4 border-top border-4 border-primary border-gradient-1">
            <div class="card-body p-4">
              <div class="d-flex align-items-start justify-content-between mb-3">
                <div class="">
                  <h5 class="mb-0 fw-bold">Edit Profile</h5>
                </div>
              </div>
              <form class="row g-4">
                <div class="col-md-12">
                  <label for="input2" class="form-label">Full Name</label>
                  <input type="text" class="form-control" id="input2" placeholder="Last Name">
                </div>
                <div class="col-md-12">
                  <label for="input3" class="form-label">Phone</label>
                  <input type="text" class="form-control" id="input3" placeholder="Phone">
                </div>
                <div class="col-md-12">
                  <label for="input4" class="form-label">Email</label>
                  <input type="email" class="form-control" id="input4">
                </div>
                <div class="col-md-12">
                  <label for="input5" class="form-label">Password</label>
                  <input type="password" class="form-control" id="input5">
                </div>
                <div class="col-md-12">
                  <label for="input11" class="form-label">Address</label>
                  <textarea class="form-control" id="input11" placeholder="Address ..." rows="4" cols="4"></textarea>
                </div>
                <div class="col-md-12">
                  <div class="d-md-flex d-grid align-items-center gap-3">
                    <button type="button" class="btn btn-grd-primary px-4">Update Profile</button>
                    <button type="button" class="btn btn-light px-4">Reset</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <!-- Start About Pro5 -->
        <div class="col-12 col-xl-4">
          <div class="card rounded-4">
            <div class="card-body">
              <div class="d-flex align-items-start justify-content-center mb-3">
                <div class="">
                  <h5 class="mb-0 fw-bold">About</h5>
                </div>
              </div>
              <div class="full-info">
                <div class="info-list d-flex flex-column gap-3">
                  <div class="info-list-item d-flex align-items-center gap-3"><span
                      class="material-icons-outlined">account_circle</span>
                    <p class="mb-0">Full Name: Nguyen Thi</p>
                  </div>
                  <div class="info-list-item d-flex align-items-center gap-3"><span
                      class="material-icons-outlined">flag</span>
                    <p class="mb-0">Address: Da Nang, Vietnam</p>
                  </div>
                  <div class="info-list-item d-flex align-items-center gap-3"><span
                      class="material-icons-outlined">send</span>
                    <p class="mb-0">Email: gymAdmin@gmail.com</p>
                  </div>
                  <div class="info-list-item d-flex align-items-center gap-3"><span
                      class="material-icons-outlined">call</span>
                    <p class="mb-0">Phone: +84 349402518</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- End About Pro5 -->

      </div>
      <!-- End Edit Profile -->

    </div>
  </main>
  <!--end main wrapper-->

</asp:Content>
