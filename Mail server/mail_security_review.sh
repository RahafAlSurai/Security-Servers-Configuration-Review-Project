#!/bin/bash
# Mail server security review checks
CONF="main.cf"

echo "=== Mail Security Review ==="
echo

echo "[1] Trusted networks / relay scope"
grep -nE '^mynetworks\s*=\s*0\.0\.0\.0/0' "$CONF"

echo
echo "[2] TLS policy"
grep -nE '^smtpd_tls_security_level\s*=\s*may|^smtp_tls_security_level\s*=\s*may' "$CONF"

echo
echo "[3] VRFY command"
grep -nE '^disable_vrfy_command\s*=\s*no' "$CONF"

echo
echo "[4] HELO enforcement"
grep -nE '^smtpd_helo_required\s*=\s*no' "$CONF"

echo
echo "[5] TLS-only authentication"
grep -nE '^smtpd_tls_auth_only\s*=\s*no' "$CONF"

echo
echo "[6] Authentication records"
echo "SPF/DKIM/DMARC: not configured in this lab sample"

echo
echo "Review complete."
