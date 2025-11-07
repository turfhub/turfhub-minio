#!/bin/sh

set -e

echo "⏳ Waiting for MinIO to start..."
sleep 10

echo "✅ Configuring MinIO client alias..."
mc alias set myminio http://localhost:9000 admin strongpassword123

echo "📦 Creating default bucket (optional)..."
mc mb myminio/default || true

echo "🎉 MinIO setup complete."
