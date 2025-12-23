#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "📦 Installing dependencies..."
yarn install

echo "🏗️ Building shared packages..."
yarn build

echo "🚀 Starting web app (apps/web)..."
yarn workspace @app/web dev
