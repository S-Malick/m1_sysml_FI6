package spi {
    private import ScalarValues::Boolean;
    package parts{
        /*Acteurs */
        part def Entreprise;
        part def Service_RD;
        part def Prestataire_externe;
        part def Conducteurs;
        part def Exploitants_parking;

        /*Contexte */
        part def SystemeParkingIntelligent;
        part def Voitures;
        part def PanneauNumerique;
        part def Smarphones;
        part def Ordinateurs;
        part def ReseauElectrique;
        part def ReseauSansFil;
        part def GPS;
    }

    private import spi::parts::*;

    part def contexte{
        part entreprise:Entreprise;
        part service_RD:Service_RD;
        part prestataire_externe:Prestataire_externe;
        part conducteurs:Conducteurs[*];
        part exploitants_parking:Exploitants_parking[*];
        part spi:SystemeParkingIntelligent;
        part voitures:Voitures[*];
        part panneauNumerique:PanneauNumerique[*];
        part smarphones:Smarphones[*];
        part ordinateurs:Ordinateurs[*];
        part reseauSansFil;
        part reseauElectrique;
        part gps;


        flow integre from entreprise to spi;
        flow elabore from service_RD to spi;
        flow concoit from prestataire_externe to spi;
        flow utilise from conducteurs to spi;
        flow surveille from exploitants_parking to spi;
        flow gare from voitures to spi;
        flow affiche from panneauNumerique to spi;
        flow reperer from smarphones to spi;
        flow controle from ordinateurs to spi;
        connect spi to reseauElectrique;
        connect spi to gps;
        connect spi to reseauSansFil;
    }
}