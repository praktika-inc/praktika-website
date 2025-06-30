# Praktikapp.scss Cleanup Analysis

## Summary
After analyzing `_praktikapp.scss` (1,865 lines), found **65 unused CSS classes** that can be safely removed.

## Classes Actually Used in Project
```
_0, android-btn, appstore-btn, articles-heading, bh_ic, bh_text, blog, blog-content, 
blog-h1, blog-header, blog-heading, blog-name, blog-preview, blog-store-container, 
blog-store-text, blog-store-wrapper, brand, btn-container-blog, collection-list, 
contacts-wrapper, content, desktop-block, emai-link, en, feedback-form-text, 
first-screen-2, first-screen-wrapper, footer, footer-link, footer-links, gp, gp-en, 
gp-pl, h1, header-content, li-mark, li-text, license-heading, license-text, 
license-title, logo-img, mailto, main, main-col, main-col2, main-list, main-par, 
main-row, mb0, menu-button, menu-row, mob-row, mobile-block, nav, nav-btn-block, 
nav-header, nav-link, nav-menu, navbar, navbar-col, navbar-row, phone-img, pl, post, 
post-articles, post-body, post-card, post-image, post-link, small-text, social-link, 
store-btn, store-btn-block, store-button, text-block-55, view, w--current, w-col, 
w-col-4, w-dyn-empty, w-dyn-items, w-dyn-list, w-inline-block, w-nav, w-nav-button, 
w-nav-link, w-nav-menu, w-richtext, w-row
```

## Major Unused Sections (Can Remove Entirely)

### App Features Section
- `.app-feature`, `.app-feature-description`, `.app-feature-image`, `.app-features`
- `.app-screens`, `.app-screens-wrapper`, `.app-sreens-text`
- Related to app feature showcase (not used in current simplified site)

### Beta/Form Components  
- `.beta-form-block`, `.beta-form-button`, `.beta-form-undertext`
- `.feedback-form`, `.feedback-form-button`, `.feedback-input`, `.feedback-textarea`
- `.form`, `.form-2`, `.form-box`, `.form-contact-link`, `.form-contacts`, `.form-heading`, `.form-lb`, `.form-text`, `.form-wrapper`
- `.email-field`, `.email-input`, `.details-field`
- Legacy form components not used

### Popup/Modal Components
- `.close-popup`, `.wrapper-form`, `.link-block-3`
- Modal/popup functionality not implemented

### Utility/Error Pages
- `.utility-page-content`, `.utility-page-form`, `.utility-page-wrap`
- `.error-message`, `.error-message-2`, `.error-message-copy`
- `.success-message`, `.success-message-2`, `.success-message-3`

### Pagination Components
- `.w-pagination-previous`, `.w-pagination-wrapper`, `.page-butoon`, `.page-count`, `.pagination`

### Other Unused Components
- `.button`, `.cta`, `.descritor`, `.features`, `.heading`, `.image`, `.image-2`, `.image-3`
- `.phone-mockup`, `.top-logo`, `.try-text`, `.try-wrapper`, `.undertext`
- `.scembed`, `.scrctr`, `.scrsd` (unknown components)

## Cleanup Results ✅

**COMPLETED**: Successfully cleaned `_praktikapp.scss`

- **Original size**: 1,865 lines
- **Cleaned size**: 1,005 lines  
- **Reduction**: 860 lines removed (46% smaller!)
- **Build status**: ✅ Successful
- **Functionality**: ✅ All current features preserved

### Files Changed
- **Replaced**: `_sass/_praktikapp.scss` (now contains cleaned version)
- **Created**: `_sass/_praktikapp-backup.scss` (original preserved)

### Major Sections Removed
- Unused app feature showcase components (~200 lines)
- Legacy beta/form components (~300 lines)  
- Unused popup/modal components (~100 lines)
- Unused utility/error page components (~150 lines)
- Unused pagination components (~50 lines)
- Other misc unused components (~60 lines)

This cleanup results in a much more maintainable and performant stylesheet while preserving all current functionality.
