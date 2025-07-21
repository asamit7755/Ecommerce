<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ecom.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .contact-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), url('/Images/contact-hero.jpg') no-repeat center center;
            background-size: cover;
            height: 50vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
        }
        
        .contact-info-card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s;
            height: 100%;
        }
        
        .contact-info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }
        
        .contact-icon {
            font-size: 2rem;
            color: #28a745;
            margin-bottom: 1rem;
        }
        
        #map {
            height: 400px;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        
        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 0 0.25rem rgba(40, 167, 69, 0.25);
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="contact-hero">
        <div class="container">
            <h1 class="display-4 fw-bold">Contact Us</h1>
            <p class="lead">We'd love to hear from you</p>
        </div>
    </section>

    <!-- Contact Info -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card contact-info-card text-center p-4">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <h4>Visit Us</h4>
                        <p class="mb-0">123 Farm Road<br />Countryside, ST 12345</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card contact-info-card text-center p-4">
                        <div class="contact-icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <h4>Call Us</h4>
                        <p class="mb-0">(123) 456-7890<br />Mon-Sat: 8am - 6pm</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card contact-info-card text-center p-4">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <h4>Email Us</h4>
                        <p class="mb-0">info@greenvalleyfarm.com<br />orders@greenvalleyfarm.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form & Map -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-6">
                    <h2 class="fw-bold mb-4">Send Us a Message</h2>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" required>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>
                            <div class="col-12">
                                <label for="subject" class="form-label">Subject</label>
                                <input type="text" class="form-control" id="subject" required>
                            </div>
                            <div class="col-12">
                                <label for="message" class="form-label">Message</label>
                                <textarea class="form-control" id="message" rows="5" required></textarea>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-success btn-lg">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <h2 class="fw-bold mb-4">Find Us</h2>
                    <div id="map"></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Farm Stand Hours -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <h2 class="fw-bold mb-4">Farm Stand Hours</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="table-success">
                                <tr>
                                    <th>Day</th>
                                    <th>Hours</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Monday</td>
                                    <td>9:00 AM - 5:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Tuesday</td>
                                    <td>9:00 AM - 5:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Wednesday</td>
                                    <td>9:00 AM - 5:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Thursday</td>
                                    <td>9:00 AM - 5:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Friday</td>
                                    <td>9:00 AM - 6:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Saturday</td>
                                    <td>8:00 AM - 4:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Sunday</td>
                                    <td>Closed</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="mt-4">Our farm stand is open seasonally from May through October.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-5 bg-success text-white">
        <div class="container py-5 text-center">
            <h2 class="fw-bold mb-4">Join Our CSA Program</h2>
            <p class="lead mb-5">Get fresh, seasonal produce delivered weekly from June through October.</p>
            <a href="#" class="btn btn-light btn-lg px-4">Learn More</a>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script>
        function initMap() {
            // Map initialization code
            var location = { lat: 40.7128, lng: -74.0060 }; // Example coordinates (NYC)
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 14,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script>
</asp:Content>
