#!/bin/bash
# DNS security review checks
CONF="named.conf"

echo "=== DNS Security Review ==="
echo

echo "[1] Recursion policy"
grep -nE 'recursion\s+yes|allow-recursion\s*\{\s*any' "$CONF"

echo
echo "[2] Zone transfer policy"
grep -nE 'allow-transfer\s*\{\s*any' "$CONF"

echo
echo "[3] DNSSEC validation"
grep -nE 'dnssec-validation\s+no' "$CONF"

echo
echo "[4] Version disclosure"
grep -nE 'version\s+"[^"]+"' "$CONF"

echo
echo "[5] Query rate limiting"
grep -nE 'responses-per-second\s+0' "$CONF"

echo
echo "Review complete."
