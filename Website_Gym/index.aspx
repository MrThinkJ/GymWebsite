<%@ Page Title=" " Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Website_Gym.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Start Hero -->
    <section class="ak-hero ak-style1">
        <div class="container">
            <div class="hero-content">
                <div>
                    <div class="hero-stroke-text">
                        <h2 class="stroke-text hero-stroke-text-one" data-aos="fade-up" data-aos-delay="0">
                            Ignite
                        </h2>
                        <h2 class="stroke-text hero-stroke-text-two" data-aos="fade-up" data-aos-delay="300">
                            Transformation
                        </h2>
                        <h2 class="hero-title-three" data-aos="fade-up" data-aos-delay="600">
                            & Unite Your Strength
                        </h2>
                    </div>
                    <p class="hero-desp" data-aos="fade-up" data-aos-delay="600">Discover fitness excellence at our
                        premier gym. With top-notch equipment,
                        expert trainers, and
                        dynamic classes, we're committed to helping you reach your goals. Join us today and unleash your
                        full potential!
                    </p>
                    <div data-aos="fade-up" data-aos-delay="600">
                        <a href="join.aspx" class="button-primary">
                            JOIN NOW
                            <span class="icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="20"
                                    viewBox="0 0 16 20" fill="none">
                                    <g clip-path="url(#clip0_1735_935)">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M0.585999 18.938L9.586 9.93799L0.585999 0.937988H6.99073L15.9907 9.93799L6.99073 18.938H0.585999Z"
                                            fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1735_935">
                                            <rect width="16" height="19" fill="white" transform="translate(0 0.5)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider hero-1 slider_hero_1">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="assets/img/hero_slider_bg_1.png" class="ak-hero-bg ak-bg object-cover" alt="...">
                </div>
                <div class="swiper-slide">
                    <img src="assets/img/hero_slider_bg_2.png" class="ak-hero-bg ak-bg object-cover" alt="...">
                </div>
                <div class="swiper-slide">
                    <img src="assets/img/hero_slider_bg_3.png" class="ak-hero-bg ak-bg object-cover" alt="...">
                </div>
            </div>
            <div class="hero_slider_controller_1  container">
                <div class="button-arrow-white hero-swiper-button-prev-1">
                    <svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.5637 0.358104L0.122263 10.7495L10.3204 22.275L21.5202 22.8138C21.5202 22.8138 8.11146 17.3445 8.42872 11.291C8.74597 5.23741 22.6691 0.891968 22.6691 0.891968L11.5637 0.358104Z"
                            fill="white" />
                    </svg>
                </div>
                <div class="button-arrow-white hero-swiper-button-next-1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" viewBox="0 0 24 23" fill="none">
                        <path
                            d="M11.6529 0.358104L23.0943 10.7495L12.8962 22.275L1.69636 22.8138C1.69636 22.8138 15.1051 17.3445 14.7878 11.291C14.4706 5.23741 0.547485 0.891968 0.547485 0.891968L11.6529 0.358104Z"
                            fill="white" />
                    </svg>
                </div>
            </div>
        </div>

        <div class="hero-social-icon">
            <span class="dot-line"></span>
            <div class="social-icon">
                <a href="https://www.facebook.com/">
                    <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_365_2385)">
                            <path
                                d="M9.2381 16.9756L9.2381 9.67777L11.6867 9.67777L12.0541 6.83284H9.2381V5.01676C9.2381 4.19335 9.46582 3.6322 10.6479 3.6322L12.1532 3.63158V1.08697C11.8929 1.05314 10.9993 0.975586 9.95931 0.975586C7.78764 0.975586 6.30087 2.30116 6.30087 4.735L6.30087 6.83284H3.84485L3.84485 9.67777H6.30087L6.30087 16.9756H9.2381Z"
                                fill="white" />
                        </g>
                        <defs>
                            <clipPath id="clip0_365_2385">
                                <rect width="16" height="16" fill="white"
                                    transform="translate(-0.000976562 0.975586)" />
                            </clipPath>
                        </defs>
                    </svg>

                </a>
                <a href="https://www.linkedin.com/">
                    <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_365_2387)">
                            <path
                                d="M15.995 16.9761L15.999 16.9754L15.999 11.1074C15.999 8.23672 15.381 6.02539 12.025 6.02539C10.4117 6.02539 9.32899 6.91072 8.88699 7.75006H8.84033V6.29339L5.65833 6.29339L5.65833 16.9754H8.97166L8.97166 11.6861C8.97166 10.2934 9.23566 8.94672 10.9603 8.94672C12.6597 8.94672 12.685 10.5361 12.685 11.7754L12.685 16.9761H15.995Z"
                                fill="white" />
                            <path d="M0.263062 6.29395L3.5804 6.29395L3.5804 16.9759H0.263062L0.263062 6.29395Z"
                                fill="white" />
                            <path
                                d="M1.92036 0.975586C0.85969 0.975586 -0.000976563 1.83625 -0.000976563 2.89692C-0.000976563 3.95759 0.85969 4.83625 1.92036 4.83625C2.98102 4.83625 3.84169 3.95759 3.84169 2.89692C3.84102 1.83625 2.98036 0.975586 1.92036 0.975586Z"
                                fill="white" />
                        </g>
                        <defs>
                            <clipPath id="clip0_365_2387">
                                <rect width="16" height="16" fill="white"
                                    transform="translate(-0.000976562 0.975586)" />
                            </clipPath>
                        </defs>
                    </svg>
                </a>
                <a href="https://x.com/">
                    <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M9.2757 7.92516L14.2721 2.11719H13.0882L8.74973 7.16017L5.28465 2.11719H1.28809L6.52797 9.74307L1.28809 15.8336H2.47215L7.05364 10.5081L10.713 15.8336H14.7096L9.27541 7.92516H9.2757ZM7.65396 9.81025L7.12305 9.05089L2.89879 3.00853H4.71745L8.12647 7.88491L8.65738 8.64427L13.0887 14.9828H11.2701L7.65396 9.81054V9.81025Z"
                            fill="white" />
                    </svg>

                </a>
            </div>
            <span class="dot-line-two"></span>
        </div>

    </section>

    <div class="sliding-text">
        <div class="moving-section-wrap ak-normal text-uppercase">
            <div class="moving-section-in">
                <div class="moving-section">
                    <h4 class="moving-text">
                        <span> Rise up </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span> never give up</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>be proud</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Believe in yourself</span>

                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text"><span> Rise up </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span> never give up</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>be proud</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Believe in yourself</span>
                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text"><span> Rise up </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span> never give up</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Train hard </span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>stay humble</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>be proud</span>
                        <span><img src="assets/img/next.svg" alt="next-arrow"></span>
                        <span>Believe in yourself</span>
                    </h4>
                </div>
            </div>
        </div>
        <div class="moving-section-wrap-two ak-normal text-uppercase">
            <div class="moving-section-in">
                <div class="moving-section">
                    <h4 class="moving-text">
                        <span>Sweat now, shine later</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Stronger every rep</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span> prouder every step</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Push your limits</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>exceed your expectations</span>
                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text">
                        <span>Sweat now, shine later</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Stronger every rep</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span> prouder every step</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Push your limits</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>exceed your expectations</span>
                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text">
                        <span>Sweat now, shine later</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Stronger every rep</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span> prouder every step</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>Push your limits</span>
                        <span><img src="assets/img/next-black.svg" alt="next-arrow"></span>
                        <span>exceed your expectations</span>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <!-- End Hero -->

    <!-- Start About -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section class="container">
        <div class="about-section">
            <div class="img-content" data-aos="fade-right">
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
            <div class="info-content" data-aos="fade-left">
                <div class="section-heading style-1">
                    <div class="section-subtitle">About Us</div>
                    <h2 class="section-title">
                        Here GYM Fitness Meets
                    </h2>
                    <div class="stroke-text" data-text="Excellence!">
                        Excellence!
                    </div>
                    <p class="section-short-desp mt-2">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's stan. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
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
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's stan. Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>02.</span>How do I know which gym class is right for me?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's stan. Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>03.</span>Do I need to bring any equipment to a gym class?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's stan. Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry.
                        </div>
                    </div>
                    <div class="ak-accordion-item">
                        <div class="ak-accordion-title">
                            <h5><span>04.</span>Can I join a gym any type of class if I'm a beginner?</h5>
                        </div>
                        <div class="ak-accordion-tab">
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's stan. Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry.
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Faq -->
        </div>
    </section>
    <!-- End About -->


    <!-- Start Upcoming Classes -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section>
        <div class="container">
            <div class="d-flex justify-content-between flex-column flex-lg-row gap-2">
                <div class="section-heading style-1" data-aos="zoom-out">
                    <h2 class="section-title">
                        Our Upcoming Classes
                    </h2>
                </div>
                <div class="d-flex gap-3" data-aos-delay="150" data-aos="zoom-out">
                    <div class="button-arrow-white slider_2-prev">
                        <svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M11.5637 0.358104L0.122263 10.7495L10.3204 22.275L21.5202 22.8138C21.5202 22.8138 8.11146 17.3445 8.42872 11.291C8.74597 5.23741 22.6691 0.891968 22.6691 0.891968L11.5637 0.358104Z"
                                fill="white" />
                        </svg>
                    </div>
                    <div class="button-arrow-white slider_2-next">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" viewBox="0 0 24 23" fill="none">
                            <path
                                d="M11.6529 0.358104L23.0943 10.7495L12.8962 22.275L1.69636 22.8138C1.69636 22.8138 15.1051 17.3445 14.7878 11.291C14.4706 5.23741 0.547485 0.891968 0.547485 0.891968L11.6529 0.358104Z"
                                fill="white" />
                        </svg>
                    </div>
                </div>
            </div>
            <div class="ak-height-60 ak-height-lg-40"></div>
            <div class="slider slider_2">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="join.aspx" class="classes-card">
                            <img src="assets/img/classes_1.jpg" class="card-img" alt="...">
                            <div class="classes-img-overlay">
                                <h5 class="classes-title">Kickboxing</h5>
                                <p class="classes-text"><small>STADIUM</small></p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="join.aspx" class="classes-card">
                            <img src="assets/img/classes_2.jpg" class="card-img" alt="...">
                            <div class="classes-img-overlay">
                                <h5 class="classes-title">BODY PUMP</h5>
                                <p class="classes-text"><small>GYM CENTER</small></p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="join.aspx" class=" classes-card">
                            <img src="assets/img/classes_3.jpg" class="card-img" alt="...">
                            <div class="classes-img-overlay">
                                <h5 class="classes-title">HIIT Havoc</h5>
                                <p class="classes-text"><small>GYM CENTER</small></p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="join.aspx" class=" classes-card">
                            <img src="assets/img/classes_4.jpg" class="card-img" alt="...">
                            <div class="classes-img-overlay">
                                <h5 class="classes-title">Muscle</h5>
                                <p class="classes-text"><small>INDOOR</small></p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Upcoming Classes -->


    <!-- Start Fun Fact Counter -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <div class="funfact-counter">
        <div class="container">
            <div class="auto-counter-section" id="counter">

                <div class="funfact style1">
                    <div class="funfact-number">
                        <span id="count1" class="counter" data-number="17"></span>
                        <span>+</span>
                    </div>
                    <div class="primary-color-border"></div>
                    <div class="funfact-text">
                        <p>YEARS OF <br> SERVICE</p>
                    </div>
                </div>
                <div class="funfact style1">
                    <div class="funfact-number">
                        <span id="count2" class="counter" data-number="29"></span>
                        <span>+</span>
                    </div>
                    <div class="primary-color-border"></div>
                    <div class="funfact-text">
                        <p>FITNESS <br> TRAINEE</p>
                    </div>
                </div>
                <div class="funfact style1">
                    <div class="funfact-number">
                        <span id="count3" class="counter" data-number="5"></span>
                        <span>K</span>
                    </div>
                    <div class="primary-color-border"></div>
                    <div class="funfact-text">
                        <p>Hours <br> Trained</p>
                    </div>
                </div>
                <div class="funfact style1">
                    <div class="funfact-number">
                        <span id="count4" class="counter" data-number="109"></span>
                        <span>+</span>
                    </div>
                    <div class="primary-color-border"></div>
                    <div class="funfact-text">
                        <p>Happy <br> Clients</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Fun Fact Counter -->

    <!-- Start Testimonial-->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section class="container">
        <div class="testimonial">
            <div class="testimonial-img image-hover-animation animation-2s" data-aos="fade-right">
                <img src="assets/img/testimonial.jpg" alt="...">
            </div>
            <div class="testimonial-info" data-aos="fade-left">
                <h2 class="stroke-text" data-text="Feedback!">
                    Feedback
                </h2>
                <div class="slider testimonial-slider-home">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="testimonial-content">
                                <div class="client">
                                    <div class="primary-color-border-horizontal"></div>
                                    <h5 class="title">Roberts Bush</h5>
                                    <p class="sub-title">From Canada</p>
                                </div>
                                <div class="desp">
                                    <p>
                                        "Joining this gym changed my life. The trainers are top-notch, the classes are
                                        diverse and challenging, and the community is like family. I've never felt
                                        stronger or more
                                        confident.Highly recommend! and the community is like family. I've never felt
                                        stronger or more
                                        confident. Highly recommend, they are awesome!"
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="testimonial-content">
                                <div class="client">
                                    <div class="primary-color-border-horizontal"></div>
                                    <h5 class="title">Jane Smith</h5>
                                    <p class="sub-title">Toronto, Canada</p>
                                </div>
                                <div class="desp">
                                    <p>
                                        "This gym has transformed my fitness journey. The trainers are experienced, the
                                        classes are varied, and the community is supportive. I've never felt healthier
                                        or more motivated. Highly recommend!, and the community is welcoming. I've never
                                        been more fit or motivated. Absolutely recommend"
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonial-->

    <!-- Start Partner Client -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <div class="container">
        <div class="partner-client">
            <div class="title">
                <h1 class="stroke-text">
                    Trusted <br> Client
                </h1>
            </div>
            <div class="slider partner-client-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="assets/img/pc_1.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_2.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_3.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_4.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_1.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_2.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_3.png" alt="...">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/pc_4.png" alt="...">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Partner Client -->

    <!-- Start Subscribe Email-->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <div class="container">
        <div class="subscribe-email">
            <div class="subscribe-content">
                <h3 class="subscribe-title">SUBSCRIBE TO OUR NEWSLETTER</h3>
                <p class="subscribe-desp ak-font-18">Whether you're a beginner or a seasoned fitness enthusiast
                </p>
            </div>
            <form class="subscribe-form">
                <input type="text" name="email" id="email" placeholder="Enter your email..." class="email-input">
                <button type="submit" class="submit-btn">
                    <span class="send">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                            <path
                                d="M23.0345 3.91676C23.5566 2.42362 22.157 0.976718 20.7126 1.51775L3.06022 8.11754C1.61105 8.65982 1.43579 10.704 2.76894 11.5024L8.40369 14.8748L13.4353 9.67315C13.6633 9.44555 13.9686 9.31961 14.2855 9.32246C14.6024 9.3253 14.9055 9.45671 15.1296 9.68837C15.3537 9.92004 15.4808 10.2334 15.4836 10.561C15.4863 10.8887 15.3645 11.2043 15.1444 11.4399L10.1127 16.6415L13.3761 22.4667C14.1472 23.8448 16.1246 23.6624 16.6491 22.1655L23.0345 3.91676Z"
                                fill="white" />
                        </svg>
                    </span>
                </button>
            </form>
        </div>
    </div>
    <!-- End Subscribe Email -->
</asp:Content>
