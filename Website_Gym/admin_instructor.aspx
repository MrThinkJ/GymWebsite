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

        <!-- Start Header Instructor -->
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
                <button class="btn btn-primary px-4"><i class="bi bi-plus-lg me-2"></i> <a href="#instructorInformation" class="text-white">Add Customers</a></button>
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
                <table class="table align-middle">
                  <thead class="table-light">
                    <tr>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Class</th>
                      <th>Address</th>
                      <th>Day</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <a class="d-flex align-items-center gap-3" href="javascript:;">
                          <div class="customer-pic">
                            <img src="material/images/avatars/01.png" class="rounded-circle" width="40" height="40"
                              alt="">
                          </div>
                          <p class="mb-0 customer-name fw-bold">Andrew Carry</p>
                        </a>
                      </td>
                      <td>
                        <a href="javascript:;" class="font-text1">abcexample.com</a>
                      </td>
                      <td>0349402518</td>
                      <td>Zumbo</td>
                      <td>Da Nang</td>
                      <td>2,3,7</td>
                      <td>
                        <div class="d-md-flex d-grid align-items-center gap-1">
                          <button type="submit" class="btn btn-grd-primary px-1">Delete</button>
                          <button type="reset" class="btn btn-grd-info px-1">Edit</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a class="d-flex align-items-center gap-3" href="javascript:;">
                          <div class="customer-pic">
                            <img src="material/images/avatars/01.png" class="rounded-circle" width="40" height="40"
                              alt="">
                          </div>
                          <p class="mb-0 customer-name fw-bold">Andrew Carry</p>
                        </a>
                      </td>
                      <td>
                        <a href="javascript:;" class="font-text1">abcexample.com</a>
                      </td>
                      <td>0349402518</td>
                      <td>Zumbo</td>
                      <td>Da Nang</td>
                      <td>2,3,7</td>
                      <td>
                        <div class="d-md-flex d-grid align-items-center gap-1">
                          <button type="submit" class="btn btn-grd-primary px-1">Delete</button>
                          <button type="reset" class="btn btn-grd-info px-1">Edit</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a class="d-flex align-items-center gap-3" href="javascript:;">
                          <div class="customer-pic">
                            <img src="material/images/avatars/01.png" class="rounded-circle" width="40" height="40"
                              alt="">
                          </div>
                          <p class="mb-0 customer-name fw-bold">Andrew Carry</p>
                        </a>
                      </td>
                      <td>
                        <a href="javascript:;" class="font-text1">abcexample.com</a>
                      </td>
                      <td>0349402518</td>
                      <td>Zumbo</td>
                      <td>Da Nang</td>
                      <td>2,3,7</td>
                      <td>
                        <div class="d-md-flex d-grid align-items-center gap-1">
                          <button type="submit" class="btn btn-grd-primary px-1">Delete</button>
                          <button type="reset" class="btn btn-grd-info px-1">Edit</button>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- End Table Instructor -->

        <!-- Start Form Instructor -->
        <div class="card">
          
          <form action="" id="instructorInformation">
            <div class="card-body p-4">
              <h5 class="mb-4">Instructor Information</h5>
              <div class="row mb-3">
                <label for="input42" class="col-sm-3 col-form-label">Enter Name</label>
                <div class="col-sm-9">
                  <div class="position-relative input-icon">
                    <input type="text" class="form-control" id="input42" placeholder="Enter Name">
                    <span class="position-absolute top-50 translate-middle-y"><i
                        class="material-icons-outlined fs-5">person_outline</i></span>
                  </div>
                </div>
              </div>
              <div class="row mb-3">
                <label for="input43" class="col-sm-3 col-form-label">Phone No</label>
                <div class="col-sm-9">
                  <div class="position-relative input-icon">
                    <input type="text" class="form-control" id="input43" placeholder="Phone No">
                    <span class="position-absolute top-50 translate-middle-y"><i
                        class="material-icons-outlined fs-5">phone</i></span>
                  </div>
                </div>
              </div>
              <div class="row mb-3">
                <label for="input44" class="col-sm-3 col-form-label">Email Address</label>
                <div class="col-sm-9">
                  <div class="position-relative input-icon">
                    <input type="text" class="form-control" id="input44" placeholder="Email Address">
                    <span class="position-absolute top-50 translate-middle-y"><i
                        class="material-icons-outlined fs-5">send</i></span>
                  </div>
                </div>
              </div>
              <div class="row mb-3">
                <!-- Lười chỉnh quá tôi cho nhập text luôn nhé. Do cũng không tính toán gì -->
                <label for="input45" class="col-sm-3 col-form-label">Choose Day</label>
                <div class="col-sm-9">
                  <div class="position-relative input-icon">
                    <input type="text" class="form-control" id="input45" placeholder="Input Day">
                    <span class="position-absolute top-50 translate-middle-y"><i
                        class="material-icons-outlined fs-5">vpn_key</i></span>
                  </div>
                </div>
              </div>
              <div class="row mb-3">
                <label for="input46" class="col-sm-3 col-form-label">Select Class</label>
                <div class="col-sm-9">
                  <select class="form-select" id="input46">
                    <option value="1">Zumbo</option>
                    <option value="2">Cardio</option>
                    <option value="3">Nutritional Guidance</option>
                  </select>
                </div>
              </div>
              <div class="row mb-3">
                <label for="input47" class="col-sm-3 col-form-label">Address</label>
                <div class="col-sm-9">
                  <textarea class="form-control" id="input47" rows="3" placeholder="Address"></textarea>
                </div>
              </div>
              <div class="row">
                <label class="col-sm-3 col-form-label"></label>
                <div class="col-sm-9">
                  <div class="d-md-flex d-grid align-items-center gap-3">
                    <button type="button" class="btn btn-grd-primary px-4">Submit</button>
                    <button type="button" class="btn btn-grd-royal px-4">Reset</button>
                  </div>
                </div>
              </div>
            </div>
          </form>

        </div>
        <!-- End Form Instructor -->



      </div>
    </div>
  </main>
  <!--end main wrapper-->
</asp:Content>
