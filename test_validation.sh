#!/bin/bash

# Test validation functions from AlphaSSL
source alphaSSL_clean.sh

# Test email validation
echo "🧪 Testing Email Validation:"
test_emails=("admin@company.com" "invalid-email" "test@domain" "user@test.co.uk" "")

for email in "${test_emails[@]}"; do
    if validate_email "$email" 2>/dev/null; then
        echo "✅ Valid: $email"
    else
        echo "❌ Invalid: $email"
    fi
done

echo ""
echo "🧪 Testing Domain Validation:"
test_domains=("example.com" "sub.example.com" "invalid_domain" "test.co.uk" "localhost")

for domain in "${test_domains[@]}"; do
    if validate_domain "$domain" 2>/dev/null; then
        echo "✅ Valid: $domain"
    else
        echo "❌ Invalid: $domain"
    fi
done

echo ""
echo "🧪 Testing Certificate Expiry Check:"
# Create a dummy certificate for testing
echo "-----BEGIN CERTIFICATE-----
MIIDXTCCAkWgAwIBAgIJAKL0UG+0z9+pMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
BAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBX
aWRnaXRzIFB0eSBMdGQwHhcNMjQxMDA0MDAwMDAwWhcNMjUxMDA0MDAwMDAwWjBF
MQswCQYDVQQGEwJBVTETMBEGA1UECAwKU29tZS1TdGF0ZTEhMB8GA1UECgwYSW50
ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEAvs7+HwI3gI5mK0O8k9eI7P9xyE7UwPO8CqR7vQ9LJ8NJ8wRQz9g5rX6e
-----END CERTIFICATE-----" > test_cert.pem

check_certificate_expiry "test_cert.pem"
rm -f test_cert.pem

echo ""
echo "✅ Validation Tests Complete!"