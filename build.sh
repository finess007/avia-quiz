#!/bin/bash
# Build script for Avia Quiz - Staticrypt encryption
set -e

PASS="W5l3bA1MFOYkEn0X"

echo "🔨 Building Avia Quiz..."
mkdir -p public

# Encrypt each HTML file from src/ to public/
for f in src/*.html; do
  fname=$(basename "$f")
  echo "  Encrypting $fname..."
  npx staticrypt "$f" -p "$PASS" -d public --short
done

echo "✅ Build complete!"
