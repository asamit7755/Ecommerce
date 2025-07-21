<%@ Page Title="Farm Gallery" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ecom.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Farm Gallery - Our Fields and Seasons
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .gallery-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), url('/Images/gallery-hero.jpg') no-repeat center center;
            background-size: cover;
            height: 50vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
            margin-top: -56px;
            padding-top: 56px;
        }
        
        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.4s ease;
            opacity: 1;
            transform: translateY(0);
        }
        
        .gallery-item.hidden {
            opacity: 0;
            transform: translateY(20px);
            height: 0;
            margin-bottom: 0;
            padding: 0;
            border: 0;
            overflow: hidden;
        }
        
        .gallery-img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .gallery-item:hover .gallery-img {
            transform: scale(1.05);
        }
        
        .gallery-caption {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0,0,0,0.7);
            color: white;
            padding: 15px;
            transform: translateY(100%);
            transition: transform 0.3s ease;
        }
        
        .gallery-item:hover .gallery-caption {
            transform: translateY(0);
        }
        
        .filter-btn {
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        
        .filter-btn.active {
            background-color: #28a745 !important;
            color: white !important;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .gallery-item.show {
            animation: fadeIn 0.4s ease forwards;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="gallery-hero">
        <div class="container">
            <h1 class="display-4 fw-bold">Our Farm Gallery</h1>
            <p class="lead">A visual journey through our fields and seasons</p>
        </div>
    </section>

    <!-- Gallery Filter -->
    <section class="py-4 bg-light sticky-top" style="top: 56px; z-index: 990;">
        <div class="container">
            <div class="d-flex flex-wrap justify-content-center">
                <button class="btn btn-outline-success mx-2 my-1 filter-btn active" data-filter="all">All Photos</button>
                <button class="btn btn-outline-success mx-2 my-1 filter-btn" data-filter="fields">Fields</button>
                <button class="btn btn-outline-success mx-2 my-1 filter-btn" data-filter="produce">Produce</button>
                <button class="btn btn-outline-success mx-2 my-1 filter-btn" data-filter="farmstand">Farm Stand</button>
                <button class="btn btn-outline-success mx-2 my-1 filter-btn" data-filter="team">Our Team</button>
            </div>
        </div>
    </section>

    <!-- Gallery Grid -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row" id="galleryContainer">
                <div class="col-md-6 col-lg-4" data-category="fields">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Field">
                        <div class="gallery-caption">
                            <h5>Spring Planting</h5>
                            <p class="mb-0">Our fields in early spring as we prepare for the growing season.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="produce">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Fresh Produce">
                        <div class="gallery-caption">
                            <h5>Harvest Time</h5>
                            <p class="mb-0">Freshly picked tomatoes ready for our CSA boxes.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="farmstand">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Stand">
                        <div class="gallery-caption">
                            <h5>Farm Stand</h5>
                            <p class="mb-0">Our farm stand on a busy Saturday morning.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="team">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Team">
                        <div class="gallery-caption">
                            <h5>Harvest Crew</h5>
                            <p class="mb-0">Our hardworking team during the summer harvest.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="fields">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Field">
                        <div class="gallery-caption">
                            <h5>Summer Growth</h5>
                            <p class="mb-0">Lush fields in mid-summer at peak growing season.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="produce">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Fresh Produce">
                        <div class="gallery-caption">
                            <h5>Rainbow Carrots</h5>
                            <p class="mb-0">Our colorful carrot harvest ready for market.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="farmstand">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Stand">
                        <div class="gallery-caption">
                            <h5>CSA Pickup</h5>
                            <p class="mb-0">Members picking up their weekly CSA shares.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="team">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Team">
                        <div class="gallery-caption">
                            <h5>Farm Tour</h5>
                            <p class="mb-0">Leading a group of visitors through our fields.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4" data-category="fields">
                    <div class="gallery-item">
                        <img src="Assets/Images/Product/product.jpg" class="gallery-img" alt="Farm Field">
                        <div class="gallery-caption">
                            <h5>Fall Colors</h5>
                            <p class="mb-0">Our fields at sunset during the autumn harvest.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-5 bg-light">
        <div class="container py-5 text-center">
            <h2 class="fw-bold mb-4">See Our Farm in Person</h2>
            <p class="lead mb-5">We offer guided tours from May through October.</p>
            <a href="Contact.aspx" class="btn btn-success btn-lg px-4">Schedule a Tour</a>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script>
        $(document).ready(function () {
            // Make sure jQuery is loaded
            if (typeof jQuery == 'undefined') {
                console.error('jQuery is not loaded');
                return;
            }

            console.log('Document ready - gallery script running');

            // Filter button click handler
            $('.filter-btn').on('click', function () {
                console.log('Filter button clicked');

                // Update active button
                $('.filter-btn').removeClass('active');
                $(this).addClass('active');

                // Get filter value
                var filterValue = $(this).data('filter');
                console.log('Filtering by:', filterValue);

                // Hide all items first
                $('#galleryContainer .col-md-6').addClass('hidden');

                // Show matching items with animation
                setTimeout(function () {
                    if (filterValue === 'all') {
                        $('#galleryContainer .col-md-6').removeClass('hidden').addClass('show');
                    } else {
                        $('#galleryContainer .col-md-6[data-category*="' + filterValue + '"]').removeClass('hidden').addClass('show');
                    }
                }, 50);
            });

            // Initialize all items as visible
            $('#galleryContainer .col-md-6').addClass('show');
        });
    </script>
</asp:Content>