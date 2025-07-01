#!/bin/bash

# Blog images download script
# Run this to download all the blog post images

IMAGES_DIR="/Users/shouldgo/git/praktika-website/assets/images/blog"
mkdir -p "$IMAGES_DIR"

echo "Downloading blog images..."

# First batch (10 images)
curl -o "$IMAGES_DIR/610d06828e657f08e0ff478f_sleep-5.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/610d06828e657f08e0ff478f_sleep-5.jpg'
curl -o "$IMAGES_DIR/5ef4a506739c9d2d1bfbcf16_trial.jpeg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/5ef4a506739c9d2d1bfbcf16_trial.jpeg'
curl -o "$IMAGES_DIR/6025453b3a8fc63a7a2c673b_auth.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/6025453b3a8fc63a7a2c673b_auth.jpg'
curl -o "$IMAGES_DIR/6177c6d8246f11286272ea4b_worklife.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/6177c6d8246f11286272ea4b_worklife.jpg'
curl -o "$IMAGES_DIR/613f7bc9251a867ca78bcaf4_safety.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/613f7bc9251a867ca78bcaf4_safety.jpg'
curl -o "$IMAGES_DIR/5f914bb0a3e50c695e29781d_duck.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/5f914bb0a3e50c695e29781d_duck.jpg'
curl -o "$IMAGES_DIR/602bb96d485f4b7010759820_quick.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/602bb96d485f4b7010759820_quick.jpg'
curl -o "$IMAGES_DIR/6141f53289bef953607bd47f_ddetox.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/6141f53289bef953607bd47f_ddetox.jpg'
curl -o "$IMAGES_DIR/5eb51df9bde4bb43caab43e6_vertigo.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/5eb51df9bde4bb43caab43e6_vertigo.jpg'
curl -o "$IMAGES_DIR/5eb51e597fc025267da6850d_detox.jpg" 'https://uploads-ssl.webflow.com/5e72418b91975542429327e5/5eb51e597fc025267da6850d_detox.jpg'

echo "Downloaded first batch of images."
echo "You can run this script multiple times to download more images."
echo "Blog is ready to use with the downloaded images!"
