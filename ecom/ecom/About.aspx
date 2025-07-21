<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ecom.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .about-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), url('/Images/farm-about-hero.jpg') no-repeat center center;
            background-size: cover;
            height: 50vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
        }
        
        .timeline {
            position: relative;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .timeline::after {
            content: '';
            position: absolute;
            width: 6px;
            background-color: #28a745;
            top: 0;
            bottom: 0;
            left: 50%;
            margin-left: -3px;
        }
        
        .timeline-item {
            padding: 10px 40px;
            position: relative;
            width: 50%;
            box-sizing: border-box;
        }
        
        .timeline-item::after {
            content: '';
            position: absolute;
            width: 25px;
            height: 25px;
            background-color: white;
            border: 4px solid #28a745;
            border-radius: 50%;
            top: 15px;
            z-index: 1;
        }
        
        .left {
            left: 0;
        }
        
        .right {
            left: 50%;
        }
        
        .left::after {
            right: -12px;
        }
        
        .right::after {
            left: -12px;
        }
        
        .timeline-content {
            padding: 20px 30px;
            background-color: white;
            position: relative;
            border-radius: 6px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        
        @media screen and (max-width: 768px) {
            .timeline::after {
                left: 31px;
            }
            
            .timeline-item {
                width: 100%;
                padding-left: 70px;
                padding-right: 25px;
            }
            
            .timeline-item::after {
                left: 18px;
            }
            
            .left::after, .right::after {
                left: 18px;
            }
            
            .right {
                left: 0%;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="about-hero">
        <div class="container">
            <h1 class="display-4 fw-bold">Our Story</h1>
            <p class="lead">Three generations of farming tradition</p>
        </div>
    </section>

    <!-- Our Farm Section -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <h2 class="fw-bold mb-4">Up Agro Foods</h2>
                    <p>Founded in 1995 by John and Mary Green, Green Valley Farm began as a small family operation with just 10 acres of land. What started as a passion project quickly grew into a thriving business as demand for our fresh, organic produce increased.</p>
                    <p>Today, we farm over 200 acres using sustainable methods that prioritize soil health and environmental stewardship. Our farm is now run by the second generation of Greens, with the third generation already learning the ropes!</p>
                    <p>We're proud to provide our community with fresh, nutritious food while protecting the land for future generations.</p>
                </div>
                <div class="col-lg-6">
                    <img src="Assets/Images/Product/product.jpg" alt="Farm Family" class="img-fluid rounded shadow">
                </div>
            </div>
        </div>
    </section>

    <!-- Our Values Section -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Our Values</h2>
                <p class="lead text-muted">What guides everything we do</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center">
                            <i class="fas fa-leaf fa-3x text-success mb-3"></i>
                            <h4>Sustainability</h4>
                            <p>We practice regenerative agriculture to improve soil health and sequester carbon.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center">
                            <i class="fas fa-heart fa-3x text-success mb-3"></i>
                            <h4>Community</h4>
                            <p>We're committed to feeding our local community with fresh, nutritious food.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center">
                            <i class="fas fa-hand-holding-heart fa-3x text-success mb-3"></i>
                            <h4>Integrity</h4>
                            <p>We're transparent about our farming practices and stand behind our products.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Team Section -->
    <section class="py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Meet Our Team</h2>
                <p class="lead text-muted">The people behind your food</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card border-0 shadow-sm h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="John Green">
                        <div class="card-body text-center">
                            <h5 class="card-title">John Green</h5>
                            <p class="text-muted">Founder & Head Farmer</p>
                            <p class="card-text">With over 40 years of farming experience, John oversees all operations.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card border-0 shadow-sm h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="Sarah Green">
                        <div class="card-body text-center">
                            <h5 class="card-title">Sarah Green</h5>
                            <p class="text-muted">Farm Manager</p>
                            <p class="card-text">John's daughter manages day-to-day operations and our CSA program.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-0 shadow-sm h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="Mark Green">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mark Green</h5>
                            <p class="text-muted">Head of Distribution</p>
                            <p class="card-text">Sarah's husband manages deliveries and our farm stand.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Timeline Section -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Our History</h2>
                <p class="lead text-muted">Key moments in our journey</p>
            </div>
            <div class="timeline">
                <div class="timeline-item left">
                    <div class="timeline-content">
                        <h4>1995</h4>
                        <p>John and Mary Green purchase 10 acres of land and establish Green Valley Farm.</p>
                    </div>
                </div>
                <div class="timeline-item right">
                    <div class="timeline-content">
                        <h4>2002</h4>
                        <p>We transition to 100% organic farming practices.</p>
                    </div>
                </div>
                <div class="timeline-item left">
                    <div class="timeline-content">
                        <h4>2008</h4>
                        <p>Expand to 50 acres and launch our first CSA program with 30 members.</p>
                    </div>
                </div>
                <div class="timeline-item right">
                    <div class="timeline-content">
                        <h4>2015</h4>
                        <p>Open our farm stand and begin supplying local restaurants.</p>
                    </div>
                </div>
                <div class="timeline-item left">
                    <div class="timeline-content">
                        <h4>2020</h4>
                        <p>Expand to 200 acres and now serve over 500 CSA members.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-5">
        <div class="container py-5 text-center">
            <h2 class="fw-bold mb-4">Want to Visit Our Farm?</h2>
            <p class="lead mb-5">We offer tours from May through October.</p>
            <a href="Contact.aspx" class="btn btn-success btn-lg px-4">Schedule a Tour</a>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>
