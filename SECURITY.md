# Security Policy

## 🛡️ Supported Versions

We actively support and provide security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| 3.1.x   | ✅ Yes             |
| 3.0.x   | ⚠️ Limited Support |
| < 3.0   | ❌ No              |

## 🚨 Reporting a Vulnerability

We take security seriously at AlphaSSL. If you discover a security vulnerability, please follow these steps:

### 📞 How to Report

1. **DO NOT** create a public GitHub issue for security vulnerabilities
2. **Email us directly** at: security@tecso.team
3. **Use Signal/Telegram** for urgent issues: [@sobhanazimzadeh](https://t.me/sobhanazimzadeh)

### 📋 What to Include

Please include as much information as possible:

- **Description** of the vulnerability
- **Steps to reproduce** the issue
- **Potential impact** assessment
- **Suggested fixes** if available
- **Your contact information** for follow-up

### ⏰ Response Timeline

- **Initial Response**: Within 24 hours
- **Assessment**: Within 72 hours
- **Fix Development**: 1-7 days (depending on severity)
- **Public Disclosure**: After fix is released and tested

### 🏆 Recognition

We maintain a security hall of fame for researchers who responsibly disclose vulnerabilities:

- Public acknowledgment (if desired)
- Priority support for future issues
- Potential bounty rewards for critical findings

## 🔒 Security Best Practices

When using AlphaSSL:

### ✅ Recommended Practices

- **Always run as root** only when necessary
- **Validate domain ownership** before certificate generation
- **Use strong, unique passwords** for email accounts
- **Keep the system updated** with latest security patches
- **Monitor certificate expiration** dates
- **Use secure communication channels** for sensitive operations

### ❌ Security Don'ts

- **Don't share private keys** publicly
- **Don't run untrusted scripts** as root
- **Don't use weak email passwords** for certificate notifications
- **Don't ignore SSL/TLS warnings**
- **Don't store certificates** in publicly accessible directories

## 🛠️ Security Features

AlphaSSL includes several security features:

- **Input validation** to prevent injection attacks
- **Secure random key generation**
- **Proper file permissions** for certificate files
- **Automatic cleanup** of temporary files
- **Safe installation procedures**

## 🔍 Security Auditing

We regularly conduct:

- **Code security reviews**
- **Dependency vulnerability scans**
- **Penetration testing**
- **Third-party security audits**

## 📜 Compliance

AlphaSSL follows:

- **ACME protocol** security standards
- **Let's Encrypt** best practices
- **Industry-standard encryption** methods
- **Open source security** guidelines

## 🆘 Emergency Contact

For critical security issues requiring immediate attention:

- **Emergency Email**: emergency@tecso.team
- **Signal/Telegram**: [@sobhanazimzadeh](https://t.me/sobhanazimzadeh)
- **Phone**: Available upon request for verified researchers

---

**Remember**: Security is a shared responsibility. Please help us keep AlphaSSL secure for everyone! 🔐