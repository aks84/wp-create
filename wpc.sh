#!/bin/bash

mkdir $1 && cd $1 && touch style.css functions.php index.php single.php page.php footer.php header.php

mkdir assets && cd assets && touch $1.js

cd ../

echo "
@charset "UTF-8";

/*
Theme Name: $1
Theme URI:
Author: The $1 team
Author URI: https://$1.org/
Description:
Tags: full-site-editing, blog
Version: 1.0.0
Requires at least: 5.0
Tested up to: 5.7
Requires PHP: 7.0
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Text Domain: $1
 
This theme, like WordPress, is licensed under the GPL.
Use it to make something cool, have fun, and share what you've learned with others.
*/" > style.css

echo "
<?php wp_header(); ?>
 
<main>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
 
<h3><?php the_title(); ?></h3>
 
<?php the_content(); ?>
<?php wp_link_pages(); ?>
<?php edit_post_link(); ?>
 
<?php endwhile; ?>
 
<?php
if ( get_next_posts_link() ) {
next_posts_link();
}
?>
<?php
if ( get_previous_posts_link() ) {
previous_posts_link();
}
?>
 
<?php else: ?>
 
<p>No posts found. :(</p>
 
<?php endif; ?>

</main>
<?php wp_footer(); ?>
</body>
</html>" > index.php


echo "<?php 

function $1_scripts() {
    wp_enqueue_style( '$1_style', get_stylesheet_uri() );
    wp_enqueue_script( '$1_script', get_template_directory_uri() . 'assests/js/$1.js', array(), '1.0.0', true );
}
add_action( 'wp_enqueue_scripts', '$1_scripts' );

" > functions.php


echo "<!DOCTYPE html>
<html>
<head>
<meta charset=\"<?php bloginfo( 'charset' ); ?>\">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel=\"stylesheet\" href=\"<?php echo esc_url( get_stylesheet_uri() ); ?>\" type=\"text/css\" />
<?php wp_head(); ?>
</head>
<body>
<header>
<h1><?php bloginfo( 'name' ); ?></h1>
<h2><?php bloginfo( 'description' ); ?></h2>
</header>" > header.php


echo "<footer> 
<p> This is them footer</p>
</footer>" > footer.php

echo "$1 theme created successfully."


