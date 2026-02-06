#!/bin/bash
# Build script for Avia Quiz - Staticrypt encryption
set -e

PASS="W5l3bA1MFOYkEn0X"

echo "🔨 Building Avia Quiz..."

# Encrypt each HTML file from src/ to root
for f in src/*.html; do
  fname=$(basename "$f")
  echo "  Encrypting $fname..."
  npx staticrypt "$f" "$PASS" -o "$fname" --short
done

echo "✅ Build complete!"
