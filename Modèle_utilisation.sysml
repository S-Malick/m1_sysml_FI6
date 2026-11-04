package sosyValetUseCases {
    private import ScalarValues::Boolean;
    package parts {
        /* acteurs */
        part def Utilisateur;
        part def Conducteur :> Utilisateur;
        part def ExploitantParking :> Utilisateur;
 
        /* contexte */
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
 
        /* Phase 1 : Préparer sa venue */
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
 
        /* Phase 2 : Arriver et choisir le mode */
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
 
        /* Phase 3a : Se garer soi-même (mode libre) */
        package phase3a_SeGarerSoiMeme {
            use case suivreLeGuidage {
                ref actor conducteur;
            }
            use case seGarerSurUnePlaceLibre {
                ref actor conducteur;
            }
        }
 
        /* Phase 3b : Déposer son véhicule (mode voiturier, F1) */
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
 
        /* Phase 4 : Stationner et recharger (F2) */
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
 
        /* Phase 5 : Retourner à pied à son véhicule */
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
 
        /* Phase 6 : Récupérer son véhicule et sortir */
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
 
        /* Phase 7 : Superviser le parking */
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
 
        /* Phase 8 : Entretenir le système */
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
