# 🔐 AlphaSSL - Enterprise SSL Certificate Automation Tool

<div align="center">

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Version](https://img.shields.io/badge/Version-v3.1.2-green.svg)](https://github.com/sobhanaz/alpha-ssl-master/releases)
[![Bash](https://img.shields.io/badge/Shell-Bash-red.svg)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-Linux-orange.svg)](https://github.com/sobhanaz/alpha-ssl-master)
[![Stars](https://img.shields.io/github/stars/sobhanaz/alpha-ssl-master?style=social)](https://github.com/sobhanaz/alpha-ssl-master/stargazers)

**🚀 Professional SSL Certificate Management | Automated | Secure | Enterprise-Ready 🚀**

*Streamline your SSL certificate deployment with intelligent automation and enterprise-grade security*

[📖 Documentation](#-comprehensive-documentation) • [🚀 Quick Start](#-quick-start-guide) • [💻 Installation](#-installation) • [🔧 Configuration](#-configuration) • [🆘 Support](#-support--community)

</div>

---

## 🎯 **Why AlphaSSL?**

> **"Don't just secure your domains — automate your entire SSL infrastructure with enterprise-grade reliability."**

AlphaSSL is not just another SSL tool. It's a **comprehensive SSL automation platform** designed for developers, system administrators, and businesses who demand:

✅ **Zero-Downtime SSL Deployment**  
✅ **Multi-Domain Certificate Management**  
✅ **Enterprise Panel Integration**  
✅ **Fallback Security Mechanisms**  
✅ **Production-Ready Automation**

---

## 🌟 **Key Features**

| 🔒 **Security Excellence** | ⚡ **Performance & Automation** | 🛠️ **Enterprise Integration** |
|---------------------------|--------------------------------|-------------------------------|
| 🛡️ Dual certificate providers (acme.sh + certbot) | 🚀 One-command deployment | 📱 Pre-configured panel paths |
| 🔐 Automatic fallback mechanisms | ⏱️ Zero-configuration setup | 🔧 Custom directory support |
| 🌐 Multi-domain SSL support | 📊 Intelligent error handling | 🏢 Enterprise-ready architecture |
| 🔄 Auto-renewal capabilities | 🎯 Streamlined certificate installation | 📈 Scalable infrastructure |

---

## 🚀 **Quick Start Guide**

### 1️⃣ **One-Line Installation**
```bash
curl -sL https://raw.githubusercontent.com/sobhanaz/alpha-ssl-master/main/alphaSSL.sh | sudo bash -s -- --install
```

### 2️⃣ **Basic SSL Certificate Generation**
```bash
# Single domain
essl admin@yourcompany.com yourdomain.com /etc/ssl/certs

# Multiple domains
essl admin@yourcompany.com domain1.com domain2.com domain3.com /etc/ssl/certs

# Enterprise panel integration
essl admin@yourcompany.com yourdomain.com marzban
```

### 3️⃣ **Verify Installation**
```bash
essl --version
essl --help
```

**🎉 Done! Your SSL certificates are ready for production use.**

---

## 💻 **Installation**

### **System Requirements**
- **OS**: Linux (Ubuntu, Debian, CentOS, RHEL)
- **Privileges**: Root access required
- **Dependencies**: curl, socat (auto-installed)
- **Ports**: 80 (for certificate validation)

### **Installation Methods**

#### **Method 1: Automated Installation (Recommended)**
```bash
# Download and install in one command
curl -sL https://raw.githubusercontent.com/sobhanaz/alpha-ssl-master/main/alphaSSL.sh | sudo bash -s -- --install
```

#### **Method 2: Manual Installation**
```bash
# Download the script
wget https://raw.githubusercontent.com/sobhanaz/alpha-ssl-master/main/alphaSSL.sh

# Make it executable
chmod +x alphaSSL.sh

# Install to system
sudo ./alphaSSL.sh --install
```

#### **Method 3: Git Clone Installation**
```bash
# Clone the repository
git clone https://github.com/sobhanaz/alpha-ssl-master.git
cd alpha-ssl-master

# Install the script
sudo bash alphaSSL.sh --install
```

---

## 🔧 **Configuration**

### **Command Syntax**
```bash
essl [EMAIL] [DOMAIN1 DOMAIN2 ...] [DESTINATION] | [OPTIONS]
```

### **Parameters**

| Parameter | Description | Example |
|-----------|-------------|---------|
| `EMAIL` | Contact email for certificate notifications | `admin@company.com` |
| `DOMAIN(S)` | Single or multiple domains (space-separated) | `example.com www.example.com` |
| `DESTINATION` | Certificate storage location | `/etc/ssl/certs` or `marzban` |

### **Predefined Panel Destinations**

| Panel | Destination Path | Usage |
|-------|------------------|-------|
| `marzban` | `/var/lib/marzban/certs` | Marzban proxy panel |
| `marzneshin` | `/var/lib/marzneshin/certs` | Marzneshin proxy panel |
| `x-ui` | `/certs` | X-UI management panel |
| `3x-ui` | `/certs` | 3X-UI management panel |
| `s-ui` | `/certs` | S-UI management panel |
| `hiddify` | `/certs` | Hiddify proxy panel |

### **Available Commands**

| Command | Description |
|---------|-------------|
| `essl --install` | Install AlphaSSL to system |
| `essl --upgrade` | Upgrade to latest version |
| `essl --version` | Display current version |
| `essl --help` | Show help information |

---

## 📖 **Comprehensive Documentation**

### **Usage Examples**

#### **🏢 Enterprise Multi-Domain Setup**
```bash
# Deploy SSL for main domain and subdomains
essl security@company.com company.com www.company.com api.company.com /etc/nginx/ssl/

# Result: Certificates installed at /etc/nginx/ssl/company.com/
# - privkey.pem (Private key)
# - fullchain.pem (Full certificate chain)
```

#### **🛡️ Proxy Panel Integration**
```bash
# Marzban panel SSL setup
essl admin@proxy-service.com proxy.example.com marzban

# X-UI panel SSL setup
essl admin@proxy-service.com vpn.example.com x-ui

# Custom panel setup
essl admin@service.com panel.example.com /opt/custom-panel/ssl/
```

#### **🌐 Development Environment**
```bash
# Local development with custom path
essl dev@localhost.com dev.local.com test.local.com /home/user/ssl-certs/

# Staging environment
essl staging@company.com staging.company.com /var/www/staging/ssl/
```

### **🔄 Certificate Management**

#### **Automatic Installation Locations**
```bash
# Main certificate directory (per domain)
${DESTINATION}/${FIRST_DOMAIN}/
├── privkey.pem      # Private key file
├── fullchain.pem    # Full certificate chain
└── cert.info        # Certificate information

# System-wide copies (for compatibility)
/root/
├── private.key      # Private key copy
└── cert.crt         # Certificate copy
```

#### **🔍 Certificate Validation**
```bash
# Check certificate details
openssl x509 -in /path/to/fullchain.pem -text -noout

# Verify certificate chain
openssl verify -CAfile /path/to/fullchain.pem /path/to/fullchain.pem

# Test SSL connectivity
openssl s_client -connect yourdomain.com:443 -servername yourdomain.com
```

### **🛠️ Advanced Configuration**

#### **Environment Variables**
```bash
# Set custom acme.sh directory
export ACME_HOME="/opt/acme"

# Custom certificate directory
export SSL_CERT_DIR="/etc/ssl/custom"

# Debug mode
export DEBUG=1
```

#### **🔧 Troubleshooting**

**Common Issues & Solutions:**

| Issue | Solution |
|-------|----------|
| Port 80 blocked | Ensure port 80 is open for domain validation |
| Domain validation failed | Check DNS records and domain propagation |
| Permission denied | Run with sudo privileges |
| Package installation failed | Update package manager: `sudo apt update` |

**Debug Mode:**
```bash
# Enable verbose output
bash -x alphaSSL.sh admin@example.com example.com /etc/ssl/

# Check system logs
sudo tail -f /var/log/syslog | grep -i ssl
```

---

## 🏗️ **Architecture & Security**

### **🔒 Security Features**

- **🛡️ Dual Provider Fallback**: Automatically switches between acme.sh and certbot
- **🔐 Secure Key Generation**: Uses industry-standard encryption
- **🌐 Domain Validation**: ACME protocol compliance
- **📊 Input Validation**: Prevents injection attacks
- **🔄 Safe Installation**: Atomic operations with rollback

### **⚡ Performance Optimizations**

- **📈 Parallel Processing**: Multi-domain certificates in single operation
- **💾 Efficient Storage**: Optimized file system operations
- **🚀 Fast Deployment**: Minimal downtime during certificate installation
- **🔄 Smart Caching**: Reuses validation tokens when possible

---

## 🆘 **Support & Community**

### **📞 Getting Help**

| Resource | Description | Link |
|----------|-------------|------|
| 📖 **Documentation** | Complete usage guide | [Wiki](https://github.com/sobhanaz/alpha-ssl-master/wiki) |
| 🐛 **Bug Reports** | Report issues and bugs | [Issues](https://github.com/sobhanaz/alpha-ssl-master/issues) |
| 💡 **Feature Requests** | Suggest improvements | [Discussions](https://github.com/sobhanaz/alpha-ssl-master/discussions) |
| 🔧 **Technical Support** | Professional assistance | [Contact TECSO](https://tecso.team) |

### **🤝 Contributing**

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

```bash
# Fork the repository
git clone https://github.com/yourusername/alpha-ssl-master.git

# Create feature branch
git checkout -b feature/amazing-feature

# Make changes and commit
git commit -m "Add amazing feature"

# Push and create pull request
git push origin feature/amazing-feature
```

---

## 📋 **Changelog**

### **v3.1.2** - Current Release
- ✨ Enhanced multi-domain support
- 🐛 Fixed certificate installation paths
- 🔧 Improved error handling
- 📈 Performance optimizations

### **v3.1.1**
- 🛡️ Added security validations
- 🔄 Improved fallback mechanisms
- 📊 Enhanced logging system

### **v3.1.0**
- 🚀 Major architecture overhaul
- 🌐 Added enterprise panel support
- ⚡ Faster certificate deployment

---

## 📄 **License**

This project is licensed under the **GNU General Public License v3.0** - see the [LICENSE](LICENSE) file for details.

### **License Summary**
- ✅ Commercial use allowed
- ✅ Modification allowed
- ✅ Distribution allowed
- ✅ Private use allowed
- ❗ Disclose source required
- ❗ License and copyright notice required

---

## 👨‍💻 **About the Author**

<div align="center">

**🎯 Built with ❤️ by [Sobhan Azimzadeh](https://github.com/sobhanaz)**

*CEO & Technical Leader at [TECSO Digital Agency](https://tecso.team)*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/sobhan-azimzadeh-b956aa234)
[![Telegram](https://img.shields.io/badge/Telegram-Contact-blue?style=for-the-badge&logo=telegram)](https://t.me/sobhanazimzadeh)
[![Portfolio](https://img.shields.io/badge/Portfolio-Visit-green?style=for-the-badge&logo=web)](https://tecso.team)

</div>

### **🏢 Enterprise Services**
Need professional SSL management for your organization? [TECSO](https://tecso.team) offers:
- 🏗️ Custom SSL automation solutions
- 🛡️ Enterprise security consulting
- 🔧 DevOps and infrastructure management
- 📈 24/7 technical support

---

## ⭐ **Show Your Support**

If AlphaSSL has helped secure your infrastructure, please consider:

- ⭐ **Star this repository**
- 🐛 **Report bugs and issues**
- 💡 **Suggest new features**
- 🤝 **Contribute to the project**
- 📢 **Share with your network**

<div align="center">

### **🚀 Star History**

[![Star History Chart](https://api.star-history.com/svg?repos=sobhanaz/alpha-ssl-master&type=Date)](https://star-history.com/#sobhanaz/alpha-ssl-master&Date)

</div>

---

<div align="center">

**🔐 AlphaSSL - Making SSL Management Simple, Secure, and Scalable**

*Copyright © 2024 Sobhan Azimzadeh & TECSO Digital Agency. All rights reserved.*

[![Made with ❤️](https://img.shields.io/badge/Made%20with-❤️-red.svg)](https://github.com/sobhanaz)
[![Powered by TECSO](https://img.shields.io/badge/Powered%20by-TECSO-blue.svg)](https://tecso.team)

</div>