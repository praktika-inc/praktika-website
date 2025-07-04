#!/bin/bash

# Praktika Website URL Testing Script
BASE_URL="http://localhost:4001"

echo "🧪 Testing Praktika Website URLs..."
echo "=================================="

# Function to test URL
test_url() {
    local url=$1
    local expected_code=${2:-200}
    
    response=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$response" -eq "$expected_code" ]; then
        echo "✅ $url - HTTP $response"
    else
        echo "❌ $url - HTTP $response (expected $expected_code)"
    fi
}

echo ""
echo "📱 Testing Main Pages..."
test_url "$BASE_URL"                    # English homepage
test_url "$BASE_URL/pl/"               # Polish homepage  
test_url "$BASE_URL/ru/"               # Russian homepage

echo ""
echo "📰 Testing Blog Pages..."
test_url "$BASE_URL/ru/blog/"          # Russian blog index
test_url "$BASE_URL/blog/"             # English blog (should redirect or show content)

echo ""
echo "📄 Testing Static Pages..."
test_url "$BASE_URL/privacy-policy/"   # Privacy policy
test_url "$BASE_URL/license/"          # License
test_url "$BASE_URL/pl/privacy-policy/" # Polish privacy policy
test_url "$BASE_URL/ru/privacy-policy/" # Russian privacy policy

echo ""
echo "🔧 Testing System Pages..."
test_url "$BASE_URL/404.html" 404     # 404 page
test_url "$BASE_URL/sitemap.xml"      # Sitemap
test_url "$BASE_URL/robots.txt"       # Robots.txt

echo ""
echo "🎨 Testing Assets..."
test_url "$BASE_URL/assets/style.css"
test_url "$BASE_URL/assets/images/logo.svg"

echo ""
echo "📱 Testing Sample Blog Posts..."
test_url "$BASE_URL/ru/blog/kak-nachat-meditirovat/"
test_url "$BASE_URL/ru/blog/meditaciya-protiv-stressa/"

echo ""
echo "=================================="
echo "Testing completed!"
