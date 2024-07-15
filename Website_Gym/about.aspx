<%@ Page Title="About" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Website_Gym.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Start common page title  -->
    <div data-src="assets/img/common-page-img.png" class="ak-bg">
        <div class="ak-height-200 ak-height-lg-100"></div>
        <div class="container">
            <div class="common-page-title">
                <h2 class="page-title">About Us</h2>
                <div class="page-subtitle">
                    <a href="index.aspx">Home</a>
                    <p>/</p>
                    <p>About </p>
                </div>
            </div>
        </div>
        <div class="ak-height-65 ak-height-lg-50"></div>
    </div>
    <!-- End common page title  -->


    <!-- Start About -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section class="container">
        <div class="about-section">
            <div class="img-content" data-aos="fade-left">
                <div class="img-content-one image-hover-animation">
                    <img src="assets/img/about_1.jpg" class="about_1" alt="...">
                </div>
                <div class="img-content-two">
                    <img src="assets/img/circle.png" class="circle" alt="...">
                    <div class="img-content-about_2 image-hover-animation">
                        <img src="assets/img/about_2.jpg" class="about_2" alt="...">
                    </div>
                </div>
            </div>
            <div class="info-content" data-aos="fade-right">
                <div class="section-heading style-1">
                    <div class="section-subtitle">About Us</div>
                    <h2 class="section-title">
                        Here GYM Fitness Meets
                    </h2>
                    <h2 class="stroke-text" data-text="Excellence!">
                        Excellence!
                    </h2>
                    <p class="section-short-desp mt-2">
                        Welcome to our gym, where fitness isn't just a routine but a lifestyle. We are dedicated to helping
                        individuals of all levels achieve their fitness goals through personalized training programs and
                        expert guidance. Join us on this journey to health and wellness!
                    </p>
                </div>
                <!-- Start Faq -->
                <div class="ak-height-40 ak-height-lg-40"></div>
                <div class="ak-accordion">
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>01.</span>How do I know if my brakes need to be replaced?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            To determine if your brakes need replacing, look for signs such as squeaking noises, longer stopping
                            distances, or a pulsating brake pedal. It's advisable to have them inspected regularly by a
                            professional mechanic.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>02.</span>How do I know which gym class is right for me?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Choosing the right gym class depends on your fitness goals and preferences. Our trainers are here
                            to assess your needs and recommend classes that align with your fitness level and objectives.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>03.</span>Do I need to bring any equipment to a gym class?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Typically, we provide all necessary equipment for our gym classes. However, if you have specific
                            preferences or requirements, feel free to bring your own equipment.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>04.</span>Can I join any type of gym class if I'm a beginner?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Absolutely! We welcome beginners to join any of our gym classes. Our instructors are experienced in
                            working with individuals at every fitness level, ensuring a safe and enjoyable experience for
                            everyone.
                        </div>
                    </div>
                </div>
                <!-- End Faq -->
            </div>
        </div>
        
    </section>
    <!-- End About -->

    <!-- Start Subscribe Email-->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <div class="container">
        <div class="subscribe-email type2" data-aos="fade-up">
            <div class="subscribe-content">
                <h3 class="subscribe-title">SUBSCRIBE TO OUR NEWSLETTER</h3>
                <p class="subscribe-desp ak-font-18">Whether you're a beginner or a seasoned fitness enthusiast
                </p>
            </div>
            <form class="subscribe-form">
                <input type="text" name="email" id="email" placeholder="Enter your email..." class="email-input">
                <button type="submit" class="secondary-btn">
                    <span>
                        SUBSCRIBE
                    </span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="15" viewBox="0 0 13 15" fill="none">
                        <g clip-path="url(#clip0_2079_307)">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M0.695312 13.8691L7.32689 7.23754L0.695312 0.605957H5.41459L12.0462 7.23754L5.41459 13.8691H0.695312Z"
                                fill="#020F23" />
                        </g>
                        <defs>
                            <clipPath id="clip0_2079_307">
                                <rect width="11.7895" height="14" fill="white"
                                    transform="translate(0.263428 0.283203)" />
                            </clipPath>
                        </defs>
                    </svg>
                </button>
            </form>
        </div>
    </div>
    <!-- End Subscribe Email -->
</asp:Content>
