package spi{
    private import spi::parts::*;
    package sequences {
        occurrence arriverEtChoisirLeMode {
            part conducteur: Conducteur;
            part application: Application;
            part serveur: Serveur;
            part capteurEntree: CapteurEntree;
 
            message vehiculeDetecte from capteurEntree to application;
            message afficherAccueil of MessageAccueil from application to conducteur;
            message selectionnerMode of ModeStationnement from conducteur to application;
            message transmettreMode of ModeStationnement from application to serveur;
            message confirmerChoix from serveur to application;
            message afficherConfirmation from application to conducteur;
        }
    }
}
