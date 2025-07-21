# Ecommerce
Ecommerce_Templates_1

# 🛍️ E-Commerce UI with ASP.NET Web Forms

![ASP.NET](https://img.shields.io/badge/ASP.NET-Web_Forms-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/ECommerce-ASP.NET)

A fully-featured e-commerce platform built with ASP.NET Web Forms, featuring product management, user authentication, and secure checkout.

## 🌟 Live Demo
[![Demo](https://img.shields.io/badge/View-Demo-brightgreen)](https://yourdemo.link) 
[![Video Walkthrough](https://img.shields.io/badge/Watch-Video_Tutorial-red)](https://youtube.com/yourdemo)

## 📌 Key Features
| Feature | Description |
|---------|-------------|
| 🛒 **Product Catalog** | Categorized products with search/sort |
| 🔐 **User System** | Login, registration, password recovery |
| 💳 **Checkout** | Multi-step checkout with mock payment |
| 📦 **Order Management** | Order history & tracking |
| 📱 **Responsive** | Mobile-friendly Bootstrap layout |

## 🛠 Tech Stack
### Frontend
- ASP.NET Web Forms (.aspx)
- Bootstrap 5.3
- jQuery 3.6
- Toastr notifications

### Backend
- C# 10
- ADO.NET for data access
- Forms Authentication
- Session-based cart

### Database
![SQL Server](https://img.shields.io/badge/Database-SQL_Server-important)
- Products table
- Users table
- Orders table
- Categories table

## 🚀 Getting Started

### Prerequisites
- [Visual Studio 2022](https://visualstudio.microsoft.com/) (Community Edition works)
- [.NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48)
- [SQL Server 2019+](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

### Installation
1. Clone the repo:
   ```sh
   git clone https://github.com/yourusername/ECommerce-ASP.NET.git

📂 Project Structure
ECommerce-ASP.NET/
├── Admin/                  # Admin dashboard pages
│   ├── Products/           # CRUD operations
│   ├── Orders/             # Order management
├── App_Code/
│   ├── Models/             # Data classes
│   ├── Utilities/          # Helper methods
├── Assets/
│   ├── css/                # Custom styles
│   ├── js/                 # Client-side scripts
│   └── images/             # Product images
├── Controls/               # Custom user controls
│   ├── ProductCard.ascx    # Reusable product card
├── MasterPages/
│   ├── Admin.Master        # Admin layout
│   └── Site.Master        # Main layout
└── Web.config             # Configuration
