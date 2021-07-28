#!/bin/bash

mkdir $1 && cd $1 && touch $1.info.yml $1.libraries.yml

mkdir css js && touch css/style.css js/script.js

echo "name: $1
description: 'An example theme.' 
type: theme 
package: Custom 
base theme: false 
core: 8.x
core_version_requirement: ^8 || ^9

libraries: 
  - $1/global-styling

regions:
  header: Header
  primary_menu: 'Primary menu'  
  secondary_menu: 'Secondary menu'  
  page_top: 'Page top'  
  page_bottom: 'Page bottom'  
  highlighted: Highlighted  
  breadcrumb: Breadcrumb  
  content: Content  
  sidebar_first: 'Sidebar first'  
  sidebar_second: 'Sidebar second'
  footer_top_right: 'Footer Right Top'  
  footer_top_left: 'Footer Left Top'  
  footer: 'Footer'">$1.info.yml
  
echo "global-styling:
  css:
    theme:
      css/style.css: {}
      css/print.css: {}
  js:
   js/script.js: {}

  dependencies:
    - core/jquery">$1.libraries.yml
    
echo "console.log('Hello world from $1')">js/script.js

echo "h1,h2{color:orange;}">css/style.css
    



