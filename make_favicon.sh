# IE is still braindead so still use favicon.ico

convert -resize x16 -gravity center -crop 16x16+0+0 -flatten -colors 256 -background transparent input.png output-16x16.ico
convert -resize x32 -gravity center -crop 32x32+0+0 -flatten -colors 256 -background transparent input.png output-32x32.ico
convert output-16x16.ico output-32x32.ico favicon.ico

# Then, HTML needs to specify size="XxY" as largest size due to browser bugs

<link rel="shortcut icon" href="/favicon.ico" sizes="32x32">

# Create apple ones

convert -resize x152 input.png apple-touch-icon-152x152.png
convert -resize x120 input.png apple-touch-icon-120x120.png
convert -resize x76  input.png apple-touch-icon-76x76.png
convert -resize x60  input.png apple-touch-icon-60x60.png

# HTML for apple

<link rel="apple-touch-icon" sizes="152x152" href="<%= image_path 'apple-touch-icon-152x152.png' %>">
<link rel="apple-touch-icon" sizes="120x120" href="<%= image_path 'apple-touch-icon-120x120.png' %>">
<link rel="apple-touch-icon" sizes="76x76" href="<%= image_path 'apple-touch-icon-76x76png' %>">
<link rel="apple-touch-icon" href="<%= image_path 'apple-touch-icon-60x60.png' %>">

