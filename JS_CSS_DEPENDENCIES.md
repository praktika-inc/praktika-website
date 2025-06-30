# JavaScript-CSS Dependencies Analysis

## Critical CSS Classes Used by JavaScript

Based on analysis of `assets/js/webflow.js`, here are all the CSS classes and attributes that JavaScript actively manipulates:

### Navigation Classes (HIGH PRIORITY)
- `w--open` - Added to nav button when mobile menu is open
- `w--nav-dropdown-open` - Added to dropdown menus when open
- `w--nav-dropdown-toggle-open` - Added to dropdown toggles when active
- `w--nav-dropdown-list-open` - Added to dropdown lists when visible
- `w--nav-link-open` - Added to nav links in certain states
- `[data-nav-menu-open]` - Attribute set by JS to show mobile menu ✅ (FIXED)

### Link States
- `w--current` - Added to current/active navigation links

### Form Classes (HIGH PRIORITY)
- `w-form-loading` - Added to forms during submission
- `w--redirected-checked` - Added to custom checkbox/radio elements
- `w--redirected-focus` - Added to focused form elements
- `w--redirected-focus-visible` - Added to keyboard-focused elements

### Focus Management
- `wf-force-outline-none` - Added for focus management

### Animation/Loading States
- Various transform and animation classes (need to verify these exist)

## Audit Results

### ✅ Classes Found in Our CSS
- `w--current` - Present in `_webflow.scss`
- `w--open` - Present (for nav button)
- `[data-nav-menu-open]` - Present (fixed)

### ⚠️ Missing Classes That Need Investigation
- `w-form-loading` - MISSING (forms may not work properly)
- `w--redirected-checked` - MISSING (custom checkboxes/radios may not work)
- `w--redirected-focus` - MISSING (focus states may not work)
- `w--redirected-focus-visible` - MISSING (keyboard navigation may not work)
- `w--nav-dropdown-open` - MISSING (dropdown menus may not work)
- `w--nav-dropdown-toggle-open` - MISSING
- `w--nav-dropdown-list-open` - MISSING
- `w--nav-link-open` - MISSING

## Risk Assessment

### HIGH RISK - Likely Broken
1. **Form submission loading states** - `w-form-loading` class missing
2. **Custom form elements** - Checkbox/radio custom styling may not work
3. **Dropdown navigation** - If site uses dropdown menus, they may not work
4. **Focus management** - Accessibility features may not work properly

### MEDIUM RISK - May Affect UX
1. **Keyboard navigation** - Focus visible states missing
2. **Form validation feedback** - Custom styling may not work

## Next Steps - Immediate Action Required

1. **Check if site has forms** - Test form submission and loading states
2. **Check if site has dropdown menus** - Test navigation dropdowns
3. **Check custom form elements** - Test checkboxes and radio buttons
4. **Add missing classes from backup files**
5. **Test focus management and accessibility**
