<h2><?php echo $title; ?></h2>

<?php foreach ($records as $news_item): ?>

        <h3><?php echo $news_item['title']; ?></h3>
        <div class="main">
                <?php echo $news_item['text']; ?>
        </div>
        <p><a href="<?php echo site_url('pages/news_desc/'.$news_item['id']); ?>">View article</a></p>
        <p><a href="<?php echo site_url('pages/update_data/'.$news_item['id']); ?>">Edit</a></p>
        <hr>

<?php endforeach; ?>