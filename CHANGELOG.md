# Changelog

All notable changes to AlphaSSL will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.1.2] - 2024-10-04

### ✨ Added
- Enhanced multi-domain SSL certificate support
- Improved error handling and user feedback
- Better compatibility with enterprise proxy panels
- Automatic fallback mechanism improvements

### 🔧 Fixed
- Certificate installation path issues
- Domain validation edge cases
- Package manager detection bugs
- File permission inconsistencies

### 📈 Improved
- Performance optimizations for large domain lists
- Reduced memory footprint during operations
- Faster certificate deployment process
- Enhanced logging and debugging capabilities

### 🛡️ Security
- Improved input validation mechanisms
- Enhanced privilege escalation protection
- Better temporary file handling
- Strengthened error message sanitization

---

## [3.1.1] - 2024-09-15

### ✨ Added
- Support for additional Linux distributions
- Enhanced logging system with detailed output
- Improved certificate validation checks
- Better error recovery mechanisms

### 🔧 Fixed
- acme.sh installation issues on some systems
- Path resolution problems with custom directories
- Compatibility issues with older bash versions
- Certificate renewal workflow improvements

### 📈 Improved
- Streamlined installation process
- Faster dependency installation
- Better user experience with progress indicators
- Enhanced documentation and help text

---

## [3.1.0] - 2024-08-20

### 🚀 Major Changes
- Complete architecture overhaul for better maintainability
- Redesigned command-line interface
- Improved error handling and user feedback

### ✨ Added
- Support for enterprise proxy panels (Marzban, X-UI, etc.)
- Multi-domain certificate generation in single command
- Automatic dependency installation
- Enhanced security validations
- Better integration with system package managers

### 🔧 Fixed
- Certificate installation reliability issues
- Cross-platform compatibility problems
- Memory leaks in long-running operations
- Edge cases in domain validation

### 📈 Improved
- Significantly faster certificate deployment
- Better resource utilization
- Enhanced user experience
- Comprehensive error reporting

### 🛡️ Security
- Implemented secure coding practices
- Added input sanitization
- Improved privilege handling
- Enhanced file permission management

---

## [3.0.5] - 2024-07-10

### 🔧 Fixed
- Critical bug in certificate path resolution
- Issues with special characters in domain names
- Compatibility problems with Ubuntu 22.04
- Memory usage optimization

### 📈 Improved
- Better error messages for debugging
- Enhanced compatibility testing
- Improved documentation

---

## [3.0.4] - 2024-06-25

### ✨ Added
- Support for wildcard certificates
- Enhanced debugging capabilities
- Better integration with systemd services

### 🔧 Fixed
- Race conditions in concurrent operations
- Issues with IPv6-only environments
- Certificate renewal notification problems

---

## [3.0.3] - 2024-06-01

### 🔧 Fixed
- Critical security vulnerability in input validation
- Certificate verification edge cases
- Compatibility issues with CentOS 8

### 🛡️ Security
- Enhanced input validation
- Improved error handling
- Better privilege management

---

## [3.0.2] - 2024-05-15

### ✨ Added
- Interactive mode for easier usage
- Better progress indicators
- Enhanced help system

### 🔧 Fixed
- Installation script improvements
- Path handling on different distributions
- Dependency resolution issues

---

## [3.0.1] - 2024-05-01

### 🔧 Fixed
- Initial release bug fixes
- Documentation improvements
- Installation script refinements

---

## [3.0.0] - 2024-04-20

### 🚀 Initial Release
- Core SSL certificate automation functionality
- Support for Let's Encrypt via acme.sh and certbot
- Multi-domain certificate support
- Basic enterprise panel integration
- Comprehensive documentation
- GNU GPL v3.0 licensing

---

## 📅 Release Schedule

We follow a regular release schedule:

- **Major releases**: Every 6-12 months
- **Minor releases**: Every 2-3 months
- **Patch releases**: As needed for bug fixes and security updates

## 🔗 Links

- [Releases](https://github.com/sobhanaz/alpha-ssl-master/releases)
- [Issues](https://github.com/sobhanaz/alpha-ssl-master/issues)
- [Documentation](README.md)
- [Contributing](CONTRIBUTING.md)

---

*For detailed commit history, see the [GitHub commit log](https://github.com/sobhanaz/alpha-ssl-master/commits/main)*