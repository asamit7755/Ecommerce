<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ecom.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
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
        
        .basket-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 40px;
        }
        
        .basket-item {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            width: calc(33.333% - 20px);
            min-width: 250px;
        }
        
        .basket-title {
            font-size: 1.5rem;
            color: #28a745;
            margin-bottom: 5px;
        }
        
        .basket-price {
            font-size: 1.25rem;
            font-weight: bold;
            margin-bottom: 15px;
        }
        
        .quantity-control {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        
        .quantity-btn {
            width: 30px;
            height: 30px;
            background: #f8f9fa;
            border: 1px solid #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        
        .quantity-input {
            width: 40px;
            height: 30px;
            text-align: center;
            border: 1px solid #ddd;
            margin: 0 5px;
        }
        
        .add-to-cart {
            width: 100%;
            padding: 10px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        
        /* Cart Sidebar */
        .cart-sidebar {
            position: fixed;
            top: 56px; /* Below navbar */
            right: -200px;
            width: 200px;
            height: calc(100vh - 56px);
            background: white;
            box-shadow: -2px 0 10px rgba(0,0,0,0.1);
            padding: 20px;
            transition: right 0.3s ease;
            overflow-y: auto;
            z-index: 1000;
        }
        
        .cart-sidebar.open {
            right: 0;
        }
        
        .cart-header {
            font-size: 1.25rem;
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
        }
        
        .checkout-btn {
            width: 100%;
            padding: 10px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            margin-top: 15px;
            cursor: pointer;
            font-weight: bold;
        }
        
        .view-cart-btn {
            width: 100%;
            padding: 10px;
            background: #f8f9fa;
            color: #333;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-top: 10px;
            cursor: pointer;
        }
        
        .secure-checkout {
            font-size: 0.8rem;
            color: #666;
            text-align: center;
            margin-top: 10px;
        }
        
        @media (max-width: 768px) {
            .basket-item {
                width: 100%;
            }
            
            .cart-sidebar {
                width: 180px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Hero Section -->
    <section class="order-hero">
        <div class="container">
            <h1 class="display-4 fw-bold">Order Online</h1>
            <p class="lead">Fresh Produce Delivered Weekly</p>
        </div>
    </section>

    <!-- Baskets Section -->
    <section class="py-5">
        <div class="container">
            <div class="basket-container">
                <!-- Classic Basket -->
                <div class="basket-item">
                    <div class="basket-title">Classic Basket</div>
                    <div class="basket-price">$15.00</div>
                    <div class="quantity-control">
                        <button class="quantity-btn minus">-</button>
                        <input type="text" class="quantity-input" value="1">
                        <button class="quantity-btn plus">+</button>
                    </div>
                    <button class="add-to-cart" data-name="Classic Basket" data-price="15.00">Add to Cart</button>
                </div>
                
                <!-- Mixed Basket -->
                <div class="basket-item">
                    <div class="basket-title">Mixed Basket</div>
                    <div class="basket-price">$25.00</div>
                    <div class="quantity-control">
                        <button class="quantity-btn minus">-</button>
                        <input type="text" class="quantity-input" value="1">
                        <button class="quantity-btn plus">+</button>
                    </div>
                    <button class="add-to-cart" data-name="Mixed Basket" data-price="25.00">Add to Cart</button>
                </div>
                
                <!-- Wholesome Family Basket -->
                <div class="basket-item">
                    <div class="basket-title">Wholesome Family Basket</div>
                    <div class="basket-price">$45.00</div>
                    <div class="quantity-control">
                        <button class="quantity-btn minus">-</button>
                        <input type="text" class="quantity-input" value="1">
                        <button class="quantity-btn plus">+</button>
                    </div>
                    <button class="add-to-cart" data-name="Wholesome Family Basket" data-price="45.00">Add to Cart</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Cart Sidebar -->
    <div class="cart-sidebar" id="cartSidebar">
        <div class="cart-header">Cart (<span id="cartCount">0</span> items)</div>
        <div id="cartItems">
            <!-- Cart items will be added here dynamically -->
        </div>
        <div class="cart-subtotal">Subtotal: $<span id="cartTotal">0.00</span></div>
        <p class="text-muted small">Taxes and shipping are calculated at checkout.</p>
        <button class="checkout-btn">Checkout</button>
        <button class="view-cart-btn">View Cart</button>
        <div class="secure-checkout">
            <i class="fas fa-lock"></i> Secure Checkout
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsContent" runat="server">
     <script>
        $(document).ready(function () {
            let cart = [];
            
            // Quantity controls
            $('.quantity-btn').click(function() {
                let input = $(this).siblings('.quantity-input');
                let currentVal = parseInt(input.val());
                
                if ($(this).hasClass('plus')) {
                    input.val(currentVal + 1);
                } else if ($(this).hasClass('minus') && currentVal > 1) {
                    input.val(currentVal - 1);
                }
            });
            
            // Add to cart
            $('.add-to-cart').click(function() {
                let name = $(this).data('name');
                let price = parseFloat($(this).data('price'));
                let quantity = parseInt($(this).closest('.basket-item').find('.quantity-input').val());
                
                // Check if item already in cart
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
                            <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                            <div class="cart-item-quantity">
                                <span>${item.quantity}</span>
                            </div>
                            <div class="cart-item-total">$${itemTotal.toFixed(2)}</div>
                        </div>
                    `;
                });
                
                $('#cartCount').text(totalItems);
                $('#cartTotal').text(totalPrice.toFixed(2));
                $('#cartItems').html(cartItemsHtml);
            }
            
            // Toggle cart sidebar
            $('.view-cart-btn').click(function() {
                $('#cartSidebar').toggleClass('open');
            });
            
            // Close cart when clicking outside
            $(document).click(function(e) {
                if (!$(e.target).closest('#cartSidebar').length && 
                    !$(e.target).closest('.add-to-cart').length) {
                    $('#cartSidebar').removeClass('open');
                }
            });
        });
     </script>
</asp:Content>
