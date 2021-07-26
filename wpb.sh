#!/bin/bash

mkdir $1 && cd $1 && touch style.css theme.json functions.php index.php

mkdir block-templates && cd block-templates && touch index.html single.html archive.html

cd ../

mkdir block-template-parts && cd block-template-parts && touch header.html fooder.html sidebar.html



echo "<!-- wp:site-title /-->
 
<!-- wp:image {"sizeSlug":"large"} -->
<figure class="wp-block-image size-large">
    <img src="https://cldup.com/0BNcqkoMdq.jpg" alt="" />
</figure>
<!-- /wp:image -->
 
<!-- wp:group -->
<div class="wp-block-group">
    <!-- wp:post-title /-->
    <!-- wp:post-content /-->
</div>
<!-- /wp:group -->
 
<!-- wp:group -->
<div class="wp-block-group">
    <!-- wp:heading -->
    <h2>Footer</h2>
    <!-- /wp:heading -->
</div>
<!-- /wp:group -->" > header.html

cd ../

echo "/*
Theme Name: $1
Theme URI:
Author: The WordPress team
Author URI: https://wordpress.org/
Description:
Tags: full-site-editing, blog
Version: 1.0.0
Requires at least: 5.0
Tested up to: 5.7
Requires PHP: 7.0
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Text Domain: fse-tutorial
 
This theme, like WordPress, is licensed under the GPL.
Use it to make something cool, have fun, and share what you've learned with others.
*/" > style.css

echo '{
  "settings": {
    "color": {
      "custom": true,
      "customGradient": true,
      "gradients": [
        {
          "slug": "fuchsia-ivory",
          "gradient": "linear-gradient(#ff00ff 0%, #fffff0 100%)"
        }
      ],
      "link": true,
      "palette": [
        {
          "slug": "violet",
          "color": "#ee82ee"
        }
      ]
    },
    "spacing": {
      "customPadding": true,
      "units": [
        "px",
        "em",
        "rem",
        "vh",
        "vw"
      ]
    },
    "typography": {
      "customFontSize": true,
      "customLineHeight": true,
      "dropCap": true,
      "fontSizes": [
        {
          "slug": "large",
          "size": 20
        }
      ]
    }
  }
}' > theme.json
