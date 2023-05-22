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
        <a class="navbar-brand" href="home.php">Syndicat des Enseignants de Yaoundé1</a>
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
                <li class="nav-item">
                    <a class="nav-link" href="connexion.php">Connexion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="inscription.php">Inscription</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Jumbotron avec boutons d'inscription et de connexion -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Bienvenue à l'application de gestion de syndicats des enseignants de l'Université de Yaoundé1</h1>
            <p class="lead">Notre application facilite la gestion et la communication entre les membres du syndicat des enseignants.</p>
            <div class="d-flex justify-content-center">
                <a class="btn btn-primary mr-2" href="inscription.php">Inscription</a>
                <a class="btn btn-success" href="connexion.php">Connexion</a>
            </div>
        </div>
    </div>

    <!-- Cards avec liens vers les différentes fonctionnalités de l'application -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Gestion des membres</h5>
                        <p class="card-text">Permet de gérer les membres du syndicat, de les inscrire, les modifier et les supprimer.</p>
                        <a href="#" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Agenda des événements</h5>
                        <p class="card-text">Permet de consulter et de programmer les événements importants du syndicat.</p>
                        <a href="#" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Forums de discussion</h5>
                        <p class="card-text">Permet de partager des idées et des opinions entre les membres du syndicat.</p>
                        <a href="#" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Gestion des cotisations</h5>
                        <p class="card-text">Permet de gérer les cotisations entre les membres du syndicat.</p>
                        <a href="#" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Gestion des candidatures</h5>
                        <p class="card-text">Permet de gérer les candidatures des nouveaux membres du syndicat.</p>
                        <a href="#" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
    </div>
        </div>
    </div>

    <!-- Liaison du fichier js Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>