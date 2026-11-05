package spi{
    private import ScalarValues::Boolean;
    action arriverEtChoisirLeMode {
        attribute vehiculeArrive : Boolean;
        attribute modeAutomatique : Boolean;
        attribute modeManuel : Boolean;

        action detecterVehicule;
        action afficherMessageBienvenue;
        action proposerModesStationnement;
        action selectionnerMode;
        action enregistrerModeChoisi;
        action terminerArrivee;
        
        decide decide0;
 
        first start;
        succession start if vehiculeArrive then detecterVehicule;
        then afficherMessageBienvenue;
        then proposerModesStationnement;
        then selectionnerMode;
        then decide decide0;
            if modeAutomatique then enregistrerModeChoisi;
            if modeManuel then enregistrerModeChoisi;
        succession enregistrerModeChoisi then terminerArrivee;
        then done;
    }
}