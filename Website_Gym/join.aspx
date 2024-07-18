<%@ Page Title="Join" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="Website_Gym.join" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Start common page title  -->
    <div data-src="assets/img/common-page-img.png" class="ak-bg">
        <div class="ak-height-200 ak-height-lg-100"></div>
        <div class="container">
            <div class="common-page-title">
                <h2 class="page-title">JOIN</h2>
                <div class="page-subtitle">
                    <a href="">Home</a>
                    <p>/</p>
                    <p>Join</p>
                </div>
            </div>
        </div>
        <div class="ak-height-65 ak-height-lg-50"></div>
    </div>
    <!-- End common page title  -->

    <!-- Start classespages details info-->
    <div class="ak-height-135 ak-height-lg-0"></div>
    <div class="container" id="classespagesdetails">
        <div class="classespages-details-content style1">
            <div id="sidebarWrap">
                <div class="sidebar" id="sidebar">
                    <h4 class="form-title">REGISTER NOW</h4>
                    <form runat="server">
                        <%--<asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>--%>
                        <asp:TextBox ID="txtName" CssClass="form-control style1" runat="server" Placeholder="Name"></asp:TextBox>

                        <%--<asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>--%>
                        <asp:TextBox ID="txtEmail" CssClass="form-control style1" runat="server" TextMode="Email" Placeholder="Email"></asp:TextBox>

                        <%--<asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>--%>
                        <asp:TextBox ID="txtPhone" CssClass="form-control style1" runat="server" Placeholder="Phone"></asp:TextBox>

                        <%--<select class="form-select style1" name="class" aria-label="Default select example">
                            <option selected>Class</option>
                            <option value="1">Zumbo</option>
                            <option value="2">Cardio</option>
                            <option value="3">Nutritional Guidance</option>
                        </select>--%>
                        <asp:DropDownList ID="ddlClass" CssClass="form-select style1" runat="server" aria-label="Default select example">
                        </asp:DropDownList>

                        <asp:DropDownList ID="ddlInstructor" CssClass="form-select style1" runat="server" aria-label="Default select example">
                        </asp:DropDownList>
                        <%--<select class="form-select style1" name="day" aria-label="Default select example">
                            <option selected>Day</option>
                            <option value="1">Sunday</option>
                            <option value="2">Monday</option>
                            <option value="3">Tuesday</option>
                            <option value="3">Wednesday</option>
                            <option value="3">Thursday</option>
                            <option value="3">Friday</option>
                        </select>--%>
                        <asp:DropDownList ID="ddlDay" CssClass="form-select style1" runat="server" aria-label="Default select example">
                            <asp:ListItem Text="Day" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Sunday" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Monday" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Tuesday" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Wednesday" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Thursday" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Friday" Value="6"></asp:ListItem>
                        </asp:DropDownList>
                        <div class="ak-height-35 ak-height-lg-20"></div>
                       <asp:LinkButton runat="server" ID="btnRegister" CssClass="button-primary" OnClick="btnRegister_Click">
                            <span>REGISTER</span>
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="20" viewBox="0 0 16 20" fill="none">
                                    <g clip-path="url(#clip0_1735_935)">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M0.585999 18.938L9.586 9.93799L0.585999 0.937988H6.99073L15.9907 9.93799L6.99073 18.938H0.585999Z"
                                            fill="white">
                                        </path>
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1735_935">
                                            <rect width="16" height="19" fill="white" transform="translate(0 0.5)">
                                            </rect>
                                        </clipPath>
                                    </defs>
                                </svg>
                            </span>
                        </asp:LinkButton>
                    </form>
                </div>
            </div>
            <div id="content">
                <div class="details-content">
                    <h2 class="title">Why We Need to Train Ourselves</h2>
                    <p class="desp">
                        Training ourselves is crucial for maintaining not just physical fitness, but overall health
                        and well-being. At our gym, we emphasize the importance of regular exercise as a fundamental part of
                        life. Whether you're aiming to improve strength, flexibility, or cardiovascular health, committing to a
                        consistent training regimen can yield immense benefits.
                    </p>

                    <div class="ak-height-50 ak-height-lg-30"></div>
                    <h5 class="title-secendry">Benefits of Training:</h5>
                    <p class="desp">
                        Regular exercise not only enhances physical fitness but also boosts mental clarity and
                        emotional well-being. It reduces stress, improves sleep quality, and increases overall energy levels.
                        Moreover, it helps in maintaining a healthy weight and reduces the risk of chronic diseases such as heart
                        disease and diabetes.
                    </p>

                    <div class="ak-height-50 ak-height-lg-30"></div>
                    <h5 class="title-secendry">Personal Growth and Discipline:</h5>
                    <p class="desp">
                        Committing to a training routine fosters discipline and resilience. It teaches us the
                        importance of setting goals, staying consistent, and pushing our limits. Through training, we not only
                        transform our bodies but also cultivate a mindset of continuous improvement and self-mastery.
                    </p>

                    <div class="ak-height-50 ak-height-lg-30"></div>
                    <img src="assets/img/classespages-two.png" class="img-fluid" alt="...">
                    <div class="ak-height-50 ak-height-lg-30"></div>
                    <p class="desp">
                        We invite you to embark on this journey with us at Gym Name. Discover the transformative
                        power of training and witness firsthand how it can enhance your life. Whether you're a beginner or a
                        seasoned fitness enthusiast, our supportive community and expert guidance are here to help you achieve
                        your fitness aspirations. Join us today and take the first step towards a healthier, stronger, and more
                        empowered version of yourself!
                    </p>
                </div>
            </div>

            <div id="footer"></div>
        </div>
    </div>
    <!-- End classespages details info -->


    <!--Start Sliding Text  -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section class="sliding-text type2">
        <div class="moving-section-wrap type2 ak-normal text-uppercase">
            <div class="moving-section-in">
                <div class="moving-section">
                    <h4 class="moving-text type2">
                        <span>Stronger every rep </span>
                        <span>💪</span>
                        <span>prouder every ste</span>
                        <span>💪</span>
                        <span>Push your limits</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span>prouder every step</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span>prouder every step</span>
                        <span>💪</span>

                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text type2">
                        <span>Stronger every rep </span>
                        <span>💪</span>
                        <span>prouder every ste</span>
                        <span>💪</span>
                        <span>Push your limits</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span>prouder every step</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span>prouder every step</span>
                    </h4>
                </div>
            </div>
        </div>
    </section>
    <!--End Sliding Text  -->
</asp:Content>
