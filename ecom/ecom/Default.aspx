<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecom.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* Slider Styles */
        #mainSlider .carousel-item {
            height: 70vh;
            min-height: 500px;
            background-color: #f8f9fa; /* Fallback color */
        }

            #mainSlider .carousel-item img {
                object-fit: cover;
                width: 100%;
                height: 100%;
            }

        #mainSlider .carousel-caption {
            bottom: 30%;
            background-color: rgba(40, 167, 69, 0.7);
            padding: 20px;
            border-radius: 5px;
        }

        #mainSlider .carousel-indicators button {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background-color: #28a745;
        }

        /* Hero Section */
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/Images/farm-hero.jpg') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
        }

        /* Feature Icons */
        .feature-icon {
            font-size: 3rem;
            color: #28a745;
            margin-bottom: 1rem;
        }

        /* Product Cards */
        .product-card {
            transition: transform 0.3s;
        }

            .product-card:hover {
                transform: translateY(-10px);
            }

        /* Testimonials */
        .testimonial-card {
            transition: all 0.3s;
        }

            .testimonial-card:hover {
                transform: scale(1.03);
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            }

        .carousel-inner {
            position: relative !important;
            width: 100% !important;
            overflow: hidden !important;
            padding-block: 65px  !important;
        }

        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Slider -->
    <div id="mainSlider" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="Assets/Images/Slider/banner-image-1.png" class="d-block w-100" alt="Fresh Produce">
                <%--<div class="carousel-caption">
                    <h2 class="display-4 fw-bold">Fresh Produce Delivery</h2>
                    <p class="lead">From Our Farm to Your Doorstep</p>
                </div>--%>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="Assets/Images/Slider/banner-image-2.png" class="d-block w-100" alt="Organic Farming">
                <%--<div class="carousel-caption">
                    <h2 class="display-4 fw-bold">100% Organic</h2>
                    <p class="lead">Grown with natural methods</p>
                </div>--%>
            </div>
            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="Assets/Images/Slider/banner-image-3.png" class="d-block w-100" alt="Seasonal Products">
                <%--<div class="carousel-caption">
                    <h2 class="display-4 fw-bold">Seasonal Selection</h2>
                    <p class="lead">Fresh picks every season</p>
                </div>--%>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#mainSlider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#mainSlider" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1 class="display-3 fw-bold mb-4">Fresh From Our Farm to Your Table</h1>
            <p class="lead mb-5">Organic, sustainable produce grown with care</p>
            <a href="Products.aspx" class="btn btn-success btn-lg px-4 me-2">Our Products</a>
            <a href="Contact.aspx" class="btn btn-success btn-outline-light btn-lg px-4">Contact Us</a>
        </div>
    </section>

    <!-- About Section -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <img src="Assets/Images/Product/product.jpg" alt="Our Farm" class="img-fluid rounded shadow">
                </div>
                <div class="col-lg-6">
                    <h2 class="fw-bold mb-4">About Our Farm</h2>
                    <p class="lead">Family-owned and operated since 1995, Green Valley Farm is committed to sustainable agriculture and providing the freshest produce to our community.</p>
                    <p>We use organic farming methods to grow a variety of fruits, vegetables, and herbs. Our farm is pesticide-free and we prioritize soil health through crop rotation and composting.</p>
                    <a href="About.aspx" class="btn btn-outline-success mt-3">Learn More</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Why Choose Us</h2>
                <p class="lead text-muted">What makes our farm special</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4 text-center">
                    <div class="feature-icon">
                        <i class="fas fa-seedling"></i>
                    </div>
                    <h4>Organic Practices</h4>
                    <p>No synthetic pesticides or fertilizers. Just pure, natural growing methods.</p>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <h4>Local Delivery</h4>
                    <p>Fresh produce delivered to your doorstep within 24 hours of harvest.</p>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon">
                        <i class="fas fa-heart"></i>
                    </div>
                    <h4>Sustainable</h4>
                    <p>We prioritize environmental stewardship in all our farming practices.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section class="py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Our Seasonal Products</h2>
                <p class="lead text-muted">Fresh from our fields</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card product-card h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="Tomatoes">
                        <div class="card-body">
                            <h5 class="card-title">Heirloom Tomatoes</h5>
                            <p class="card-text">Juicy, flavorful tomatoes grown from heirloom seeds.</p>
                            <a href="Products.aspx" class="btn btn-success">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card product-card h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="Berries">
                        <div class="card-body">
                            <h5 class="card-title">Fresh Berries</h5>
                            <p class="card-text">Sweet strawberries, blueberries, and raspberries.</p>
                            <a href="Products.aspx" class="btn btn-success">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card product-card h-100">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top" alt="Greens">
                        <div class="card-body">
                            <h5 class="card-title">Leafy Greens</h5>
                            <p class="card-text">Kale, spinach, and lettuce packed with nutrients.</p>
                            <a href="Products.aspx" class="btn btn-success">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="Products.aspx" class="btn btn-outline-success btn-lg">View All Products</a>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-5 bg-success text-white">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold">What Our Customers Say</h2>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card bg-transparent border-light h-100 testimonial-card">
                        <div class="card-body text-center">
                            <i class="fas fa-quote-left fa-2x mb-3 opacity-50"></i>
                            <p class="card-text">"The best produce I've ever tasted! You can really tell the difference from supermarket vegetables."</p>
                            <p class="fw-bold mb-0">- Sarah J.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-transparent border-light h-100 testimonial-card">
                        <div class="card-body text-center">
                            <i class="fas fa-quote-left fa-2x mb-3 opacity-50"></i>
                            <p class="card-text">"I love knowing exactly where my food comes from and that it's grown sustainably."</p>
                            <p class="fw-bold mb-0">- Michael T.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-transparent border-light h-100 testimonial-card">
                        <div class="card-body text-center">
                            <i class="fas fa-quote-left fa-2x mb-3 opacity-50"></i>
                            <p class="card-text">"The farm stand is my weekly ritual. The staff is so friendly and knowledgeable."</p>
                            <p class="fw-bold mb-0">- Emily R.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-5">
        <div class="container py-5 text-center">
            <h2 class="fw-bold mb-4">Ready to Experience Farm Fresh?</h2>
            <p class="lead mb-5">Join our CSA program or visit our farm stand today!</p>
            <a href="Contact.aspx" class="btn btn-success btn-lg px-4 me-3">Contact Us</a>
            <a href="Products.aspx" class="btn btn-outline-success btn-lg px-4">Order Now</a>
        </div>
    </section>
</asp:Content>
