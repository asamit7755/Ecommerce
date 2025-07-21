<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ecom.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
    .blog-hero {
        background: linear-gradient(rgba(0, 0, 0, 0.5), url('/Images/blog-hero.jpg') no-repeat center center;
        background-size: cover;
        height: 50vh;
        display: flex;
        align-items: center;
        color: white;
        text-align: center;
    }
    
    .blog-card {
        transition: all 0.3s;
        border: none;
        overflow: hidden;
    }
    
    .blog-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }
    
    .blog-img {
        height: 200px;
        object-fit: cover;
        transition: transform 0.5s;
    }
    
    .blog-card:hover .blog-img {
        transform: scale(1.05);
    }
    
    .blog-meta {
        font-size: 0.9rem;
        color: #6c757d;
    }
    
    .blog-category {
        position: absolute;
        top: 15px;
        right: 15px;
        background-color: #28a745;
        color: white;
        padding: 3px 10px;
        border-radius: 20px;
        font-size: 0.8rem;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Hero Section -->
    <section class="blog-hero">
        <div class="container">
            <h1 class="display-4 fw-bold">Farm Blog</h1>
            <p class="lead">News, tips, and stories from our farm</p>
        </div>
    </section>

    <!-- Blog Posts -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row g-4">
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Farming Tips</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> June 15, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 5 Comments
                            </div>
                            <h5 class="card-title">Preparing Your Garden for Summer</h5>
                            <p class="card-text">Learn our top tips for getting your garden ready for the hot summer months, including watering strategies and pest control.</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Recipes</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> May 28, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 12 Comments
                            </div>
                            <h5 class="card-title">5 Fresh Tomato Recipes</h5>
                            <p class="card-text">Make the most of tomato season with these delicious recipes that highlight the flavor of fresh, ripe tomatoes.</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Farm News</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> May 10, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 8 Comments
                            </div>
                            <h5 class="card-title">Meet Our New Baby Goats</h5>
                            <p class="card-text">We're excited to introduce the newest members of our farm family - six adorable baby goats born this spring!</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Sustainability</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> April 22, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 15 Comments
                            </div>
                            <h5 class="card-title">Our Composting System</h5>
                            <p class="card-text">How we turn waste into wealth with our comprehensive composting program that feeds our soil.</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Seasonal</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> April 5, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 7 Comments
                            </div>
                            <h5 class="card-title">What's in Season: Spring Edition</h5>
                            <p class="card-text">A guide to the fresh produce you can expect this spring and how to use it in your kitchen.</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card blog-card h-100">
                        <div class="position-relative">
                            <img src="Assets/Images/blog.jpeg" class="card-img-top blog-img" alt="Blog Post">
                            <span class="blog-category">Farming Tips</span>
                        </div>
                        <div class="card-body">
                            <div class="blog-meta mb-2">
                                <i class="far fa-calendar-alt me-1"></i> March 18, 2023
                                <i class="far fa-comments ms-3 me-1"></i> 9 Comments
                            </div>
                            <h5 class="card-title">Starting Seeds Indoors</h5>
                            <p class="card-text">Our step-by-step guide to starting your vegetable and herb seeds indoors for a successful growing season.</p>
                            <a href="#" class="btn btn-outline-success">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Pagination -->
            <nav aria-label="Blog pagination" class="mt-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <h2 class="fw-bold mb-4">Subscribe to Our Newsletter</h2>
                    <p class="lead mb-5">Get farm updates, seasonal recipes, and gardening tips delivered to your inbox.</p>
                    <div class="row g-3 justify-content-center">
                        <div class="col-md-8">
                            <input type="email" class="form-control form-control-lg" placeholder="Your email address">
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-success btn-lg w-100">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>
