<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application de gestion de syndicats des enseignants de l'Université de Yaoundé1</title>
    <!-- Liaison du fichier css Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Syndicat des Enseignants de Yaoundé1</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home.php">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="propos.php">À propos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.php">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Jumbotron  -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <!-- Formulaire d'inscription -->
<div class="container mt-5">
    <h2>Inscription Membre Syndicat</h2>
    <form>
        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" class="form-control" id="nom" name="nom_enseignant" placeholder="Entrez votre nom">
        </div>
        <div class="form-group">
            <label for="prenom">Prénom</label>
            <input type="text" class="form-control" id="prenom" name="prenom_enseignant" placeholder="Entrez votre prénom">
        </div>
        <div class="form-group">
            <label for="prenom">Adresse</label>
            <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrez votre adresse">
        </div>
        <div class="form-group">
            <label for="email">Adresse e-mail</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Entrez votre adresse e-mail">
        </div>
        <div class="form-group">
            <label for="prenom">Département</label>
            <input type="text" class="form-control" id="departement" name="departement" placeholder="Entrez votre département">
        </div>
        <div class="form-group">
            <label for="prenom">Matière</label>
            <input type="text" class="form-control" id="matière" name="matiere" placeholder="Entrez votre matière">
        </div>
        <div class="form-group">
            <label for="password">Mot de passe</label>
            <input type="password" class="form-control" id="password" name="mdp" placeholder="Entrez votre mot de passe">
        </div>
        <button type="submit" class="btn btn-primary">Inscription</button>
    </form>
</div>

        </div>
    </div>

    <!-- Liaison du fichier js Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>  