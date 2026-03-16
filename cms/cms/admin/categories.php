<?php
declare(strict_types = 1);                             // Use strict types
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require __DIR__ . '/../includes/database-connection.php';
require __DIR__ . '/../includes/functions.php';                // Functions

$success = $_GET['success'] ?? null;                   // Check for success message
$failure = $_GET['failure'] ?? null;                   // Check for failure message

$sql = "SELECT category_id, name FROM category;";               // SQL to get all categories
$categories = pdo($pdo, $sql)->fetchAll();             // Get all categories
?>
<?php include '../includes/admin-header.php'; ?>

<main class="container" id="content">
  <section class="header">
    <h1>Categories</h1>
    <?php if ($success) { ?>
      <div class="alert alert-success"><?= $success ?></div>
    <?php } ?>
    <?php if ($failure) { ?>
      <div class="alert alert-danger"><?= $failure ?></div>
    <?php } ?>
    <p><a href="category.php" class="btn btn-primary">Add new category</a></p>
  </section>

  <table class="categories">
    <tr>
      <th>Name</th>
      <th class="edit">Edit</th>
      <th class="del">Delete</th>
    </tr>
    <?php foreach ($categories as $category) { ?>
      <tr>
        <td><strong><?= html_escape($category['name']) ?></strong></td>
        <td><a href="category.php?id=<?= $category['category_id'] ?>"
               class="btn btn-primary">Edit</a></td>
        <td>
          <form action="category-delete.php" method="POST" style="display:inline;">
            <input type="hidden" name="id" value="<?= $category['category_id'] ?>">
            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?');">Delete</button>
          </form>
        </td>
      </tr>
    <?php } ?>
  </table>
</main>
<?php include '../includes/admin-footer.php'; ?>