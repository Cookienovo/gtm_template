# Cookienovo CMP - Google Tag Manager Template
## Overview

This documentation describes the configuration and usage of the Cookienovo Consent Management Platform (CMP) template for Google Tag Manager. The template allows website owners to manage cookie consent in compliance with privacy regulations.

![Preview of created tag configuration](https://github.com/Cookienovo/gtm_template/blob/main/img/gtm-screen-1.png)

## Tag Configuration

### Basic Settings
- **Tag Type**: Cookienovo (Custom Template)
- **Tag permissions**: 6 permissions enabled
- **Site token**: Your unique site identifier (format: XXXXXXXXXXXXXXXXXXXXXXX)
- **Consent Mode v2**: Enabled

### Default Consent States
The template sets the following default consent states before user interaction:
- **Functionality**: denied
- **Marketing**: denied
- **Analytics**: denied

### Google Tag Configs
- **Wait for update**: 2000 ms (time to wait for consent update)
- **URL passthrough**: false
- **Google Ads Data Redaction**: false

### Region-specific Settings
The template allows configuration of consent behavior based on geographic regions:
- Columns include: Region, functional (functionality_storage), analytics (analytics_storage), marketing (ad_storage, ad_personalization, ad_user_data)
- You can add region-specific rules using the "Add Row" button

### Triggering
The template shoud be triggered by trigger "Consent Initialization - All Pages"

![Detailed tag configuration](https://github.com/Cookienovo/gtm_template/blob/main/img/gtm-screen-2.png)

## Implementation Instructions

1. **Installation**:
   - Import the Cookienovo custom template into your Google Tag Manager container
   - Create a new tag using the Cookienovo template

2. **Configuration**:
   - Enter your site token provided by Cookienovo
   - Verify consent mode is enabled
   - Configure default consent states according to your compliance requirements
   - Adjust Google Tag settings as needed
   - Set up any region-specific rules if required

3. **Triggering**:
   - The template should be triggered on all pages through the "Consent Initialization - All Pages" trigger
   - Ensure this trigger fires early in the page load sequence

4. **Testing**:
   - Use GTM Preview mode to verify the template loads correctly
   - Check that consent preferences are properly respected
   - Verify that other tags are correctly blocked/allowed based on user consent

## Advanced Settings

Additional configuration options are available under the Advanced Settings section (expandable in the interface).

## Support

For additional assistance with the Cookienovo CMP template, contact Cookienovo support or refer to their documentation.

---

*This documentation was created based on the GTM configuration as of March 2025.*
