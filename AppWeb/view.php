<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/GestionPresenceProject/";

require_once($path . './includes/DbConnect.php');


session_start();

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


$connection =  new mysqli('localhost', 'root', '', 'gestionpresencedb');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection)); 
}
$select_db = mysqli_select_db($connection, 'gestionpresencedb'); 
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection)); 
}

$ReadSql = "SELECT etudiant.id, etudiant.nom, etudiant.prenom, etudiant.email, etudiant.adresse_mac, etudiant.isPresent, presence.DateHeure
            FROM etudiant
            LEFT JOIN presence ON etudiant.id = presence.EtudiantID";

$res = mysqli_query($connection, $ReadSql);
if (!$res) {
    die("Erreur MySQL: " . mysqli_error($connection));
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/projetPresence/frontend/css/style_view.css">
    <title>Dashboard</title>
</head>
<body>
    <?php require($path . './AppWeb/header.php') ?>
    <div class="container-fluid my-4">
        <div class="row my-2">
            <h2>Dashboard</h2>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th>Numéro étudiant</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Date et Heure</th>
					<th>Statut</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($r = mysqli_fetch_assoc($res)) {
                ?>
                    <tr>
                        <td><?php echo $r['id']; ?></td>
                        <td><?php echo $r['nom']; ?></td>
                        <td><?php echo $r['prenom']; ?></td>
                        <td><?php echo $r['email']; ?></td>
                        <td><?php echo $r['DateHeure']; ?></td>
						<td><?php echo ($r['isPresent'] == 1) ? 'Présent' : 'Absent'; ?></td>
                        <td>
                            <a href="ajouter.php?id=<?php echo $r['id']; ?>"><button type="button" class="btn btn-primary">Ajouter aliment</button></a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .table-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .table-container table {
            width: 100%;
            border-collapse: collapse;
        }

        .table-container th, .table-container td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table-container th {
            background-color: #003973;
            color: #fff;
        }

        .table-container tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-container tr:hover {
            background-color: #e5e5e5;
        }

        .btn {
            background-color: #003973;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 16px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #E5E5BE;
        }
    </style>
<?php require($path . './AppWeb/footer.php') ?>
</body>
</html>