---
title: Constants
sidebar_title: Constants
permalink: /docs/constants/
---

Current time: 2023-11-29 13:08:23 +0200

Constants are set via the [wp-config.php file](https://codex.wordpress.org/Editing_wp-config.php) and will override any settings configured at the network or site level.

# Settings Constants

## WP_STATELESS_MEDIA_MODE
Settings name: General - Mode  
accepted values (_string_): `disabled`, `backup`, `cdn`, `stateless`, `ephemeral`  
default value: `cdn`

## WP_STATELESS_MEDIA_BODY_REWRITE
Scans post content and meta during presentation and replaces local media file urls with GCS urls. When selecting meta or true depending on the amount of meta, this could be significantly impact performance negatively. This setting does not modify your database.  

Settings name: General - File URL Replacement  
accepted values (_string_): `editor`, `meta`, or `true` (Editor & Meta)  
default value: `false`

## WP_STATELESS_MEDIA_BUCKET
The name of the GCS bucket.  

Settings name: Google Cloud Storage (GCS) - Bucket  
accepted values (_string_): Bucket name  
default value: `null`

## WP_STATELESS_MEDIA_ROOT_DIR
If you would like files to be uploaded into a particular folder within the bucket, define that path here.

Settings name: Google Cloud Storage (GCS) - Bucket Folder  
accepted values (_string_): Root dir  
default value: `null`

## WP_STATELESS_MEDIA_JSON_KEY
Private key in JSON text format for the service account WP-Stateless will use to connect to your Google Cloud project and bucket.

Settings name: Google Cloud Storage (GCS) - Service Account JSON  
accepted values (_JSON_ as _string_): JSON key  
default value: `null`

## WP_STATELESS_MEDIA_KEY_FILE_PATH
File path to private key file. File should be in JSON format.

Settings name: Google Cloud Storage (GCS) - Service Account JSON  
accepted values (_string_): **Absolute path** or relative path to **WordPress root directory**, **Content directory**, **Upload directory** and **WP Stateless plugins root directory**.  
default value: `null`

## WP_STATELESS_MEDIA_CACHE_CONTROL
Override the default cache control assigned by GCS.

Settings name: Google Cloud Storage (GCS) - Cache-Control  
accepted values (_string_): reference Google Cloud Documentation.  
default value: `public, max-age=36000, must-revalidate`  

## WP_STATELESS_MEDIA_DELETE_REMOTE
Delete the GCS file when the file is deleted from WordPress.  

Settings name: Google Cloud Storage (GCS) - Delete GCS File  
accepted values (_string_): `true`, `false`  
default value: `true`  

## WP_STATELESS_MEDIA_CUSTOM_DOMAIN
Replace the default GCS domain with your own custom domain. This will require you to [configure a CNAME](https://cloud.google.com/storage/docs/xml-api/reference-uris#cname). Be advised that the bucket name and domain name must match exactly, and HTTPS is not supported with a custom domain out of the box. 

Settings name: File URL - Domain  
accepted values (_string_): Domain name  
default value: `storage.googleapis.com`

## WP_STATELESS_MEDIA_CACHE_BUSTING
##### WP_STATELESS_MEDIA_HASH_FILENAME (deprecated)
Prepends a random set of numbers and letters to the filename. This is useful for preventing caching issues when uploading files that have the same filename.  

Settings name: File URL - Cache-Busting  
accepted values (_string_): `true`, `false`  
default value: `false`  

## WP_STATELESS_MEDIA_HIDE_SETTINGS_PANEL
Hide the WP-Stateless settings panel.  

accepted values (_bool_): `true`, `false`  
default value: `none`  

## WP_STATELESS_MEDIA_HIDE_SETUP_ASSISTANT
Hide the WP-Stateless setup assistant.  

accepted values (_bool_): `true`, `false`  
default value: `none`  

## WP_STATELESS_CONSOLE_LOG
Enables [Chrome Logger](https://chrome.google.com/webstore/detail/chrome-logger/) log output.

accepted values (_bool_): `true`, `false`  
default value: `none`  

## WP_STATELESS_MEDIA_UPLOAD_CHUNK_SIZE

Since `3.0.0`

Enables uploading files to GCS using chunks of the specified size in bytes. Useful when server memory is limited and `Allocated memory exhausted` error occurs.

accepted values (_int_): `10485760`  
default value: `none`

## WP_STATELESS_SYNC_MAX_BATCH_SIZE

Since `3.1.0`

Sets the maximum size of a background sync batch of items to be saved in a single row in the database.

accepted values (_int_): `10`  
default value: `50`

## WP_STATELESS_SYNC_LOG

Since `3.1.0`

Sets a path to a log file where to output logging information during the background sync. If not defined, a default `error_log` handler will be used.

accepted values (_string_): `/var/www/my-log-file.log`  
default value: `none`

## WP_STATELESS_SYNC_HEALTHCHECK_INTERVAL

Since `3.1.0`

Defines an interval in minutes for a cron task that periodically checks the health of a particular background sync process.

accepted values (_int_): `5`  
default value: `1`

# Compatibility Constants

## WP_STATELESS_DYNAMIC_IMAGE_SUPPORT
##### WP_STATELESS_MEDIA_ON_FLY (deprecated)
Upload image thumbnails generated by your theme and plugins that do not register media objects with the media library.  
  
accepted values (_bool_) `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_ACFIC
Adds compatibility support for Advanced Custom Fields Image Crop Addon and ensures compatibility with image cropping and WP-Stateless in the Stateless mode.  
  
accepted values (_bool_) `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_EDD 
Adds compatibility support for Easy Digital Downloads and ensures compatibility with image cropping and WP-Stateless in the Stateless mode.  
  
accepted values (_bool_): `true`, `false`  
default value: `false`  
  
## WP_STATELESS_COMPATIBILITY_SOCSS  
Ensures compatibility with CSS files generated by SiteOrigin.  
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_GF
Enables support for these Gravity Forms features: file upload field, post image field, custom file upload field type.  
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_WPB
Enables support for these WPBakery Page Builder features: single image element.  
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_IMAGIFY 
Enables support for these Imagify Image Optimizer features: auto-optimize images on upload, bulk optimizer, resize larger images, optimization levels (normal, aggressive, ultra).
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_SHORTPIXEL
Ensures compatibility with ShortPixel Image Optimizer.
  
accepted values (_bool_): `true`, `false`  
default value: `false`  
  
## WP_STATELESS_COMPATIBILITY_WPFORMS
Ensures compatibility with WPForms. 
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

## WP_STATELESS_COMPATIBILITY_WPSMUSH
Ensures compatibility with WP Smush.  
  
accepted values (_bool_): `true`, `false`  
default value: `false`  

# Other Constant:

## WP_STATELESS_LEGACY_URL_TO_POSTID
Use this constant if you change the Bucket Folder (root_dir) after uploading the image.
This can be a little slow at first run.

accepted values (_bool_): `true`  
default value: `none`

## WP_STATELESS_SKIP_ACL_SET
Use this constant if your Google Storage bucket is created with [uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access), that does not support ACL.

accepted values (_bool_): `true`  
default value: `false`