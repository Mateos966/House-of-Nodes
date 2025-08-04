<!DOCTYPE html>
<html lang="$language$">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$title$</title>
	<?php
	// Include the styles from the assets/includes directory
	include 'assets/includes/head-styles.html';
	?>

		<?php
	// Include the SEO from the assets/includes directory
	include 'assets/includes/head-seo.html';
	?>

  <style> </style>
</head>
<body>
  <div class="grid-container"> <!-- Start of "grid-container" -->

    <header>
	<?php
	// Include the main navigation from the assets/includes directory
	include 'assets/includes/main-nav.html';
	?>

      <h1>$title$</h1>

    </header>
    
	<main>
		$body$
    </main>

    <aside>
		$aside$ 
    </aside>

	<?php
	// Include the footer from the assets/includes directory
	include 'assets/includes/footer.html';
	?>
  </div> <!-- end of "grid-container" -->
</body>
</html>
