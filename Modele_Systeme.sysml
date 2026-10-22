package MonPremierModele {
    // Définition d'un système simple (ex: un système de commande de vélo)
    part def SystemeVelocommande {
        attribute mass : MassValue;
        port capteurVitesse;
    }

    // Instanciation du système
    part monVelocommande : SystemeVelocommande {
        poids = 12.5;
    }
}
