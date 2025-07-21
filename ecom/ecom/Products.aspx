<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ecom.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Order Online - Fresh Produce
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .order-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), url('/Images/produce-hero.jpg') no-repeat center center;
            background-size: cover;
            height: 50vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
        }
        
        .basket-card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: all 0.3s;
            margin-bottom: 30px;
        }
        
        .basket-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }
        
        .basket-img {
            height: 200px;
            object-fit: cover;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        
        .basket-title {
            color: #28a745;
            font-weight: 700;
        }
        
        .basket-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: #333;
        }
        
        .quantity-control {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 15px 0;
        }
        
        .quantity-btn {
            width: 30px;
            height: 30px;
            border: 1px solid #ddd;
            background: #f8f9fa;
            font-size: 1.1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        
        .quantity-input {
            width: 50px;
            height: 30px;
            text-align: center;
            border: 1px solid #ddd;
            margin: 0 5px;
        }
        
        .add-to-cart {
            width: 100%;
            padding: 10px;
            font-weight: 600;
        }
        
        .section-title {
            position: relative;
            margin-bottom: 30px;
            padding-bottom: 10px;
        }
        
        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background: #28a745;
        }

        /* Cart Sidebar Styles */
        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -350px;
            width: 350px;
            height: 100%;
            background: white;
            box-shadow: -2px 0 10px rgba(0,0,0,0.1);
            padding: 20px;
            transition: right 0.3s ease;
            z-index: 1000;
            overflow-y: auto;
        }
        
        .cart-sidebar.open {
            right: 0;
        }
        
        .cart-header {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .cart-item {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px solid #eee;
        }
        
        .cart-item-name {
            font-weight: bold;
        }
        
        .cart-item-price {
            color: #666;
        }
        
        .cart-item-quantity {
            display: flex;
            align-items: center;
            margin: 5px 0;
        }
        
        .cart-item-total {
            font-weight: bold;
        }
        
        .cart-subtotal {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
            font-weight: bold;
            font-size: 1.2rem;
        }
        
        .checkout-btn {
            width: 100%;
            padding: 12px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            margin-top: 20px;
            font-weight: bold;
            cursor: pointer;
        }
        
        .view-cart-btn {
            position: fixed;
            top: 20px;
            right: 20px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 15px;
            cursor: pointer;
            z-index: 999;
        }
        
        .secure-checkout {
            font-size: 0.8rem;
            color: #666;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="order-hero" style="margin-top:150px;">
        <div class="container">
            <h1 class="display-4 fw-bold">Order Online</h1>
            <p class="lead">Fresh Produce Delivered Weekly</p>
        </div>
    </section>

    <!-- Baskets Section -->
    <section class="py-5">
        <div class="container py-5">
            <h2 class="section-title">Choose Your Basket</h2>
            
            <div class="row">
                <!-- Classic Basket -->
                <div class="col-md-6 col-lg-4">
                    <div class="card basket-card">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top basket-img" alt="Classic Basket">
                        <div class="card-body text-center">
                            <h3 class="basket-title">Classic Basket</h3>
                            <p class="text-muted">Perfect for singles or couples</p>
                            <p class="basket-price">₹15.00</p>
                            
                            <div class="quantity-control">
                                <button class="quantity-btn minus">-</button>
                                <input type="text" class="quantity-input" value="1">
                                <button class="quantity-btn plus">+</button>
                            </div>
                            
                            <button class="btn btn-success add-to-cart" data-name="Classic Basket" data-price="15.00">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <!-- Mixed Basket -->
                <div class="col-md-6 col-lg-4">
                    <div class="card basket-card">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top basket-img" alt="Mixed Basket">
                        <div class="card-body text-center">
                            <h3 class="basket-title">Mixed Basket</h3>
                            <p class="text-muted">Great variety for small families</p>
                            <p class="basket-price">₹25.00</p>
                            
                            <div class="quantity-control">
                                <button class="quantity-btn minus">-</button>
                                <input type="text" class="quantity-input" value="1">
                                <button class="quantity-btn plus">+</button>
                            </div>
                            
                            <button class="btn btn-success add-to-cart" data-name="Mixed Basket" data-price="25.00">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <!-- Wholesome Family Basket -->
                <div class="col-md-6 col-lg-4">
                    <div class="card basket-card">
                        <img src="Assets/Images/Product/product.jpg" class="card-img-top basket-img" alt="Family Basket">
                        <div class="card-body text-center">
                            <h3 class="basket-title">Wholesome Family Basket</h3>
                            <p class="text-muted">Plenty for the whole family</p>
                            <p class="basket-price">₹45.00</p>
                            
                            <div class="quantity-control">
                                <button class="quantity-btn minus">-</button>
                                <input type="text" class="quantity-input" value="1">
                                <button class="quantity-btn plus">+</button>
                            </div>
                            
                            <button class="btn btn-success add-to-cart" data-name="Wholesome Family Basket" data-price="45.00">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Delivery Info -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <h2 class="section-title">Delivery Information</h2>
                    <ul class="list-unstyled">
                        <li class="mb-3"><i class="fas fa-check-circle text-success me-2"></i> Weekly deliveries every Wednesday</li>
                        <li class="mb-3"><i class="fas fa-check-circle text-success me-2"></i> Free delivery for orders over ₹500</li>
                        <li class="mb-3"><i class="fas fa-check-circle text-success me-2"></i> Contactless delivery available</li>
                        <li class="mb-3"><i class="fas fa-check-circle text-success me-2"></i> Customization options available</li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <img src="Assets/Images/delivery-cartoon-illustration.png" alt="Delivery" class="img-fluid rounded shadow">
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-5">
        <div class="container py-5 text-center">
            <h2 class="fw-bold mb-4">Have Questions About Our Baskets?</h2>
            <p class="lead mb-5">Our team is happy to help you choose the perfect option for your needs.</p>
            <a href="/Contact" class="btn btn-success btn-lg px-4">Contact Us</a>
        </div>
    </section>

    <!-- Cart Sidebar -->
    <button class="view-cart-btn" id="viewCartBtn">
        <i class="fas fa-shopping-cart"></i> <span id="cartItemCount">0</span>
    </button>

    <div class="cart-sidebar" id="cartSidebar">
        <div class="cart-header">Your Cart (<span id="cartCount">0</span> items)</div>
        <div id="cartItems">
            <!-- Cart items will be added here dynamically -->
            <div class="text-muted text-center py-5" id="emptyCartMessage">Your cart is empty</div>
        </div>
        <div class="cart-subtotal">Subtotal: ₹<span id="cartTotal">0.00</span></div>
        <p class="text-muted small">Taxes and shipping are calculated at checkout.</p>
        <button class="checkout-btn">Proceed to Checkout</button>
        <div class="secure-checkout">
            <i class="fas fa-lock"></i> Secure Checkout
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            let cart = [];

            // Quantity controls
            $('.quantity-btn').click(function () {
                let input = $(this).siblings('.quantity-input');
                let currentVal = parseInt(input.val());

                if ($(this).hasClass('plus')) {
                    input.val(currentVal + 1);
                } else if ($(this).hasClass('minus') && currentVal > 1) {
                    input.val(currentVal - 1);
                }
            });

            // Add to cart functionality
            $('.add-to-cart').click(function () {
                let name = $(this).data('name');
                let price = parseFloat($(this).data('price'));
                let quantity = parseInt($(this).closest('.basket-card').find('.quantity-input').val());

                // Check if item already exists in cart
                let existingItem = cart.find(item => item.name === name);

                if (existingItem) {
                    existingItem.quantity += quantity;
                } else {
                    cart.push({
                        name: name,
                        price: price,
                        quantity: quantity
                    });
                }

                updateCart();
                $('#cartSidebar').addClass('open');
            });

            // Update cart display
            function updateCart() {
                let totalItems = 0;
                let totalPrice = 0;
                let cartItemsHtml = '';

                cart.forEach(item => {
                    totalItems += item.quantity;
                    let itemTotal = item.price * item.quantity;
                    totalPrice += itemTotal;

                    cartItemsHtml += `
                        <div class="cart-item">
                            <div class="cart-item-name">${item.name}</div>
                            <div class="cart-item-price">₹${item.price.toFixed(2)}</div>
                            <div class="cart-item-quantity">
                                <span>${item.quantity}</span>
                            </div>
                            <div class="cart-item-total">₹${itemTotal.toFixed(2)}</div>
                        </div>
                    `;
                });

                // Update cart counts and totals
                $('#cartCount').text(totalItems);
                $('#cartItemCount').text(totalItems);
                $('#cartTotal').text(totalPrice.toFixed(2));

                // Show/hide empty cart message
                if (cart.length > 0) {
                    $('#emptyCartMessage').hide();
                    $('#cartItems').html(cartItemsHtml);
                } else {
                    $('#emptyCartMessage').show();
                    $('#cartItems').html('<div class="text-muted text-center py-5">Your cart is empty</div>');
                }
            }

            // Toggle cart sidebar
            $('#viewCartBtn').click(function (e) {
                e.stopPropagation();
                $('#cartSidebar').toggleClass('open');
            });

            // Close cart when clicking outside
            $(document).click(function (e) {
                if (!$(e.target).closest('#cartSidebar').length &&
                    !$(e.target).closest('#viewCartBtn').length) {
                    $('#cartSidebar').removeClass('open');
                }
            });

            // Prevent cart from closing when clicking inside
            $('#cartSidebar').click(function (e) {
                e.stopPropagation();
            });
        });
    </script>
</asp:Content>