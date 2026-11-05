package sosyValetGuidageEtSeGarerSequence {
    package parts {
        /* acteurs */
        part def Conducteur;
 
        /* éléments du système */
        part def Application;
        part def Serveur;
        part def CapteurPlace;
 
        /* informations échangées */
        item def EtatPlace;
        item def Itineraire;
        item def Position;
        item def Instruction;
    }
 
    private import sosyValetGuidageEtSeGarerSequence::parts::*;
 
    /* Vue des séquences – cas d'utilisation suivreLeGuidage (phase 3a) */
    package sequences {
        occurrence suivreLeGuidage {
            part conducteur: Conducteur;
            part application: Application;
            part serveur: Serveur;
            part capteurPlace: CapteurPlace;
 
            message demanderGuidage from conducteur to application;
            message demandeGuidage from application to serveur;
            message etatPlace of EtatPlace from capteurPlace to serveur;
            message envoyerItineraire of Itineraire from serveur to application;
            message afficherItineraire of Itineraire from application to conducteur;
            message positionVehicule of Position from application to serveur;
            message instructionGuidage of Instruction from serveur to application;
            message indiquerDirection of Instruction from application to conducteur;
            message placeOccupee of EtatPlace from capteurPlace to serveur;
            message confirmerStationnement from serveur to application;
            message from application to conducteur;
        }
    }
}
