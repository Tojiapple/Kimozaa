<?php
declare(strict_types = 1);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require __DIR__ . '/../includes/database-connection.php';
require __DIR__ . '/../includes/functions.php';                   // Functions

$sql = "SELECT count(id) FROM article";                   // SQL
$article_count = pdo($pdo, $sql)->fetchColumn();          // Get number of articles
$sql = "SELECT count(id) FROM category";                  // SQL
$category_count = pdo($pdo, $sql)->fetchColumn();         // Get number of categories
?>
<?php include __DIR__ . '/../includes/admin-header.php'; ?>
  <main class="container" id="content">
    <section class="header">
      <h1>Admin</h1>
    </section>
    <table class="admin">
      <tr><th></th><th>Count</th><th class="create">Create</th><th class="view">View</th></tr>
        <tr><td><strong>Categories</strong></td><td><?= $category_count ?></td><td><a href="category.php" class="btn btn-primary">Add</a></td><td><a href="categories.php" class="btn btn-primary">View</a></td></tr>
      <tr><td><strong>Articles</strong></td><td><?= $article_count?></td><td><a href="article.php" class="btn btn-primary">Add</a></td><td><a href="articles.php" class="btn btn-primary">View</a></td></tr>
    </table>
  </main>
<?php include __DIR__ . '/../includes/admin-footer.php'; ?>