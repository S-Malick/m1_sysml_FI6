package sosyValetUseCases {
    private import ScalarValues::Boolean;
    package parts {
        part def Utilisateur;
        part def Conducteur :> Utilisateur;
        part def ExploitantParking :> Utilisateur;
 
        part def SosyValet;
        part def Voiture;
        part def VoitureElectrique :> Voiture;
        part def SmartPhone;
        part def Ordinateur;
    }
 
    package useCases {
        private import sosyValetUseCases::parts::*;
 
        actor utilisateur:Utilisateur;
        actor conducteur:Conducteur ::> utilisateur;
        actor exploitant:ExploitantParking ::> utilisateur;
 
        package phase1_PreparerSaVenue {
            use case consulterPlacesLibres {
                ref actor utilisateur;
            }
            use case choisirModeALAvance {
                ref actor conducteur;
            }
            use case indiquerHeureDeRetour {
                ref actor conducteur;
            }
            use case indiquerBesoinDeRecharge {
                ref actor conducteur;
            }
            use case demanderAssistance {
                ref actor conducteur;
            }
        }
 
        package phase2_ArriverEtChoisirLeMode {
            use case entrerDansLeParking {
                ref actor conducteur;
            }
            use case lireLesDisponibilites {
                ref actor conducteur;
            }
            use case choisirModeStationnement {
                ref actor conducteur;
            }
        }
 
        package phase3a_SeGarerSoiMeme {
            use case suivreLeGuidage {
                ref actor conducteur;
            }
            use case seGarerSurUnePlaceLibre {
                ref actor conducteur;
            }
        }
 
        package phase3b_DeposerSonVehicule {
            use case arreterVehiculeDansLeBox {
                ref actor conducteur;
            }
            use case validerLaDepose {
                ref actor conducteur;
            }
            use case confirmerLaPriseEnCharge {
                ref actor conducteur;
            }
        }
 
        package phase4_StationnerEtRecharger {
            use case suivreEtatDuVehicule {
                ref actor conducteur;
            }
            use case suivreLaRecharge {
                ref actor conducteur;
            }
            use case accepterDeplacementApresCharge {
                ref actor conducteur;
            }
        }
 
        package phase5_RetournerAPiedAuVehicule {
            use case localiserSonVehicule {
                ref actor conducteur;
            }
            use case rejoindreSonVehiculeAPied {
                ref actor conducteur;
            }
            use case recupererUnObjet {
                ref actor conducteur;
            }
        }
 
        package phase6_RecupererEtSortir {
            use case rejoindreSaPlaceEtSortir {
                ref actor conducteur;
            }
            use case demanderLaRestitution {
                ref actor conducteur;
            }
            use case reprendreVehiculeAuBoxDeSortie {
                ref actor conducteur;
            }
        }
 
        package phase7_SuperviserLeParking {
            use case consulterTableauDeBord {
                ref actor exploitant;
            }
            use case consulterHistorique {
                ref actor exploitant;
            }
            use case traiterLesAlertes {
                ref actor exploitant;
            }
        }
 
        package phase8_EntretenirLeSysteme {
            use case nettoyerOuRemplacerCapteurs {
                ref actor exploitant;
            }
            use case entretenirEnginsEtStation {
                ref actor exploitant;
            }
            use case verifierLesBornes {
                ref actor exploitant;
            }
        }
    }
}
