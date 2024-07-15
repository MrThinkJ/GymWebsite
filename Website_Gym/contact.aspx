<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Website_Gym.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Start common page title  -->
    <div data-src="assets/img/common-page-img.png" class="ak-bg">
        <div class="ak-height-200 ak-height-lg-100"></div>
        <div class="container">
            <div class="common-page-title">
                <h2 class="page-title">Contact Us</h2>
                <div class="page-subtitle">
                    <a href="">Home</a>
                    <p>/</p>
                    <p>Contact Us</p>
                </div>
            </div>
        </div>
        <div class="ak-height-65 ak-height-lg-50"></div>
    </div>
    <!-- End common page title  -->


    <!-- Start Map -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <div class="container">
        <div class="ak-google-map ak-bg" data-aos="fade-up">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.148661512402!2d108.23659197497972!3d16.05777358462005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142177e6cb1f55d%3A0x7b672991d9f0379e!2sGym%20Fitness%20Thanh%20H%C3%B9ng!5e0!3m2!1svi!2s!4v1720973553751!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
    <!-- End Map -->


    <!-- Start Contact form and Details -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-5" data-aos="fade-right">
                    <div class="contact-details-info">
                        <h3 class="contact-page-section-title">LOCATION & CONTACT</h3>
                        <p class="title-desp">
                            Discover fitness excellence at our premier gym. With top-notch equipment, expert trainers,
                            and dynamic classes.
                        </p>
                        <div class="icon-details">
                            <div class="icon">
                                <svg width="40" height="41" viewBox="0 0 40 41" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="20" cy="20.5" r="20" fill="white" fill-opacity="0.3" />
                                    <g clip-path="url(#clip0_1961_1620)">
                                        <path
                                            d="M20 10.5C16.4857 10.5 13.5547 13.3309 13.5547 16.9453C13.5547 18.3204 13.9679 19.5466 14.7609 20.6955L19.5068 28.101C19.737 28.461 20.2635 28.4603 20.4932 28.101L25.2597 20.6704C26.0356 19.5734 26.4453 18.2854 26.4453 16.9453C26.4453 13.3914 23.5539 10.5 20 10.5ZM20 19.875C18.3846 19.875 17.0703 18.5607 17.0703 16.9453C17.0703 15.33 18.3846 14.0156 20 14.0156C21.6154 14.0156 22.9297 15.33 22.9297 16.9453C22.9297 18.5607 21.6154 19.875 20 19.875Z"
                                            fill="white" />
                                        <path
                                            d="M24.5806 23.9647L21.6302 28.5774C20.8665 29.7681 19.1293 29.7642 18.3692 28.5786L15.414 23.9659C12.8138 24.567 11.2109 25.6683 11.2109 26.9844C11.2109 29.2681 15.7394 30.5 20 30.5C24.2606 30.5 28.7891 29.2681 28.7891 26.9844C28.7891 25.6674 27.1839 24.5655 24.5806 23.9647Z"
                                            fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1961_1620">
                                            <rect width="20" height="20" fill="white" transform="translate(10 10.5)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div class="icon-info">
                                <h5 class="title">Address: 136 Nguyen Thien Ke, Son Tra, Da Nang, Vietnam</h5>
                                <p class="desp"></p>
                            </div>
                        </div>
                        <div class="icon-details">
                            <div class="icon">
                                <svg width="40" height="41" viewBox="0 0 40 41" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="20" cy="20.7451" r="20" fill="white" fill-opacity="0.3" />
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                        d="M12.4556 14.8423L17.8587 20.2478C19.0372 21.424 20.9635 21.425 22.1429 20.2478L27.5461 14.8423C27.6005 14.7879 27.5925 14.6983 27.5294 14.6543C26.9783 14.27 26.3078 14.0421 25.5855 14.0421H14.4162C13.6939 14.0421 13.0234 14.27 12.4723 14.6543C12.4091 14.6983 12.4012 14.7879 12.4556 14.8423ZM11.0117 17.4465C11.0117 16.8786 11.1525 16.3419 11.4006 15.8702C11.4394 15.7965 11.5377 15.7815 11.5966 15.8405L16.9314 21.1752C18.6207 22.867 21.38 22.868 23.0704 21.1752L28.4051 15.8405C28.464 15.7815 28.5623 15.7965 28.6011 15.8702C28.8491 16.3419 28.99 16.8786 28.99 17.4465V24.5534C28.99 26.4321 27.4618 27.9579 25.5855 27.9579H14.4162C12.5399 27.9579 11.0117 26.4321 11.0117 24.5534V17.4465Z"
                                        fill="white" />
                                </svg>

                            </div>
                            <div class="icon-info">
                                <h5 class="title">Email: </h5>
                                <p class="desp">
                                    gymAdmin@gmail.com</p>
                            </div>
                        </div>
                        <div class="icon-details">
                            <div class="icon">
                                <svg width="40" height="41" viewBox="0 0 40 41" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="20" cy="20.7451" r="20" fill="white" fill-opacity="0.3" />
                                    <g clip-path="url(#clip0_1961_1628)">
                                        <path
                                            d="M26.7162 23.2473C25.7366 23.2473 24.7748 23.0941 23.8633 22.7929C23.4167 22.6405 22.8676 22.7803 22.595 23.0602L20.796 24.4183C18.7096 23.3046 17.4245 22.0199 16.326 19.9492L17.6441 18.197C17.9865 17.855 18.1094 17.3554 17.9622 16.8867C17.6597 15.9704 17.506 15.009 17.506 14.029C17.5061 13.3211 16.9301 12.7451 16.2222 12.7451H13.2839C12.576 12.7451 12 13.3211 12 14.029C12 22.1436 18.6016 28.7451 26.7162 28.7451C27.4241 28.7451 28 28.1692 28 27.4612V24.5311C28 23.8232 27.424 23.2473 26.7162 23.2473Z"
                                            fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1961_1628">
                                            <rect width="16" height="16" fill="white"
                                                transform="translate(12 12.7451)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div class="icon-info">
                                <h5 class="title">Phone Number: </h5>
                                <p class="desp">
                                    +84 349402518</p>
                            </div>
                        </div>
                        <div class="icon-details">
                            <div class="icon">
                                <svg width="40" height="41" viewBox="0 0 40 41" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="20" cy="20.7451" r="20" fill="white" fill-opacity="0.3" />
                                    <g clip-path="url(#clip0_1961_1638)">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M20.0004 30.5023C17.4334 30.5023 15.0525 29.4979 13.2667 27.7122C11.481 25.9264 10.4766 23.5455 10.4766 20.9785C10.4766 18.4488 11.481 16.0306 13.2667 14.2449C15.0525 12.4592 17.4706 11.4547 20.0004 11.4547C22.5301 11.4547 24.9111 12.4592 26.734 14.2449C28.5197 16.0678 29.5242 18.4488 29.5242 20.9785C29.5242 23.5083 28.5197 25.9264 26.734 27.7122C24.9483 29.4979 22.5301 30.5023 20.0004 30.5023ZM19.74 19.8252V16.4398C19.74 16.291 19.8516 16.1794 20.0004 16.1794C20.1492 16.1794 20.2608 16.291 20.2608 16.4398V19.8252C20.7072 19.8997 21.0792 20.2717 21.1536 20.7181H23.3858C23.5346 20.7181 23.6462 20.8297 23.6462 20.9785C23.6462 21.1273 23.5346 21.2389 23.3858 21.2389H21.1536C21.042 21.797 20.5584 22.2062 20.0004 22.2062C19.3307 22.2062 18.7727 21.6482 18.7727 20.9785C18.7727 20.4205 19.1819 19.9369 19.74 19.8252ZM20.0004 14.6913C19.8516 14.6913 19.74 14.5797 19.74 14.4309V12.98C19.74 12.8312 19.8516 12.7196 20.0004 12.7196C20.1492 12.7196 20.2608 12.8312 20.2608 12.98V14.4309C20.2608 14.5797 20.1492 14.6913 20.0004 14.6913ZM25.6551 17.9651C25.5807 17.9651 25.4691 17.9279 25.4319 17.8535C25.3575 17.7047 25.3947 17.5559 25.5435 17.4815L26.8084 16.7375C26.92 16.663 27.0688 16.7002 27.1432 16.8119C27.2176 16.9607 27.1804 17.1095 27.0688 17.1839L25.8039 17.9279C25.7295 17.9651 25.6923 17.9651 25.6551 17.9651ZM26.92 25.2568C26.8828 25.2568 26.8456 25.2568 26.8084 25.2196L25.5435 24.4755C25.3947 24.4011 25.3575 24.2523 25.4319 24.1035C25.5063 23.9919 25.6551 23.9547 25.8039 24.0291L27.0688 24.7732C27.1804 24.8476 27.2176 24.9964 27.1432 25.108C27.106 25.2196 26.9944 25.2568 26.92 25.2568ZM20.0004 29.2747C19.8516 29.2747 19.74 29.163 19.74 29.0142V27.5261C19.74 27.3773 19.8516 27.2657 20.0004 27.2657C20.1492 27.2657 20.2608 27.3773 20.2608 27.5261V29.0142C20.2608 29.163 20.1492 29.2747 20.0004 29.2747ZM13.0435 25.2568C12.9691 25.2568 12.8575 25.2196 12.8203 25.108C12.7459 24.9964 12.7831 24.8476 12.9319 24.7732L14.1968 24.0291C14.3084 23.9547 14.4572 23.9919 14.5316 24.1035C14.606 24.2523 14.5688 24.4011 14.4572 24.4755L13.1923 25.2196C13.1179 25.2568 13.0807 25.2568 13.0435 25.2568ZM14.3084 17.9651C14.2712 17.9651 14.234 17.9651 14.1968 17.9279L12.9319 17.1839C12.7831 17.1095 12.7459 16.9607 12.8203 16.8119C12.8947 16.7002 13.0435 16.663 13.1923 16.7375L14.4572 17.4815C14.5688 17.5559 14.606 17.7047 14.5316 17.8163C14.4944 17.9279 14.3828 17.9651 14.3084 17.9651Z"
                                            fill="white" />
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M19.9998 21.6854C20.3718 21.6854 20.6695 21.3506 20.6695 20.9786C20.6695 20.6066 20.3718 20.309 19.9998 20.309C19.6278 20.309 19.293 20.6066 19.293 20.9786C19.293 21.3506 19.6278 21.6854 19.9998 21.6854Z"
                                            fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1961_1638">
                                            <rect width="19.0476" height="20" fill="white"
                                                transform="translate(10.4766 10.7451)" />
                                        </clipPath>
                                    </defs>
                                </svg>

                            </div>
                            <div class="icon-info">
                                <h5 class="title">Open Hour: </h5>
                                <p class="desp">
                                    Monday to Friday: 9:30 AM - 6:30 PM <br>
                                    Saturday & Sunday: 10:00 AM - 5:00 PM</p>
                            </div>
                        </div>
                    </div>
                    <div class="ak-height-lg-80"></div>
                </div>
                <div class="col-lg-7" data-aos="fade-left">
                    <h3 class="contact-page-section-title">How can we help?</h3>
                    <form>
                        <div class="row">
                            <div class="col-6">
                                <input class="form-control style1 color2 type2" required type="text" name="name"
                                    placeholder="Write your name...">

                            </div>
                            <div class="col-6">
                                <input class="form-control style1 color2 type2" required type="email" name="email"
                                    placeholder="example@gmail.com">
                            </div>
                        </div>
                        <input type="text" name="number" required class="form-control style1 color2 type2"
                            placeholder="(406) 555-0120">
                        <textarea class="form-control style1 color2 type2" required placeholder="Write your message..."
                            name="comment" id="Comment" rows="5"></textarea>
                        <button type="submit" class="button-primary mt-3">
                            SEND MESSAGE
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
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact form and Details -->
</asp:Content>
