#!/bin/bash

# Praktika Website Performance Testing Script
BASE_URL="http://localhost:4001"

echo "⚡ Performance Testing Praktika Website..."
echo "========================================"

# Function to test page load time
test_performance() {
    local url=$1
    local name=$2
    
    echo "Testing: $name"
    curl -o /dev/null -s -w "  Load time: %{time_total}s | Size: %{size_download} bytes | Speed: %{speed_download} bytes/s\n" "$url"
}

echo ""
echo "📱 Testing Main Pages Performance..."
test_performance "$BASE_URL" "English Homepage"
test_performance "$BASE_URL/pl/" "Polish Homepage"
test_performance "$BASE_URL/ru/" "Russian Homepage"

echo ""
echo "📰 Testing Blog Performance..."
test_performance "$BASE_URL/ru/blog/" "Russian Blog Index"
test_performance "$BASE_URL/ru/blog/kak-nachat-meditirovat/" "Sample Blog Post"

echo ""
echo "🎨 Testing Assets Performance..."
test_performance "$BASE_URL/assets/style.css" "Main CSS"
test_performance "$BASE_URL/assets/images/logo.svg" "Logo SVG"

echo ""
echo "========================================"
echo "Performance testing completed!"
