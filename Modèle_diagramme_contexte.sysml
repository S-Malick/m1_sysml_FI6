package spi {
    private import ScalarValues::Boolean;
    package parts{
        /*Acteurs */
        part def Entreprise;
        part def Service_RD;
        part def DataMobilis;
        part def MecaMov;
        part def Conducteurs;
        part def Exploitants_parking;

        /*Contexte */
        part def SystemeParkingIntelligent;
        part def Voitures;
        part def PanneauNumerique;
        part def Smarphones;
        part def Ordinateurs;
        part def Voituriers;
        part def Box;
        part def Capteurs;
        part def Bornes_Recharge;
        part def ReseauElectrique;
        part def ReseauSansFil;
        part def GPS;
    }

    private import spi::parts::*;

    part def contexte{
        part entreprise:Entreprise;
        part service_RD:Service_RD;
        part dataMobilis:Datamobilis;
        part mecaMov:MecaMov;
        part conducteurs:Conducteurs[*];
        part exploitants_parking:Exploitants_parking[*];
        part spi:SystemeParkingIntelligent;
        part voitures:Voitures[*];
        part panneauNumerique:PanneauNumerique[*];
        part smarphones:Smarphones[*];
        part ordinateurs:Ordinateurs[*];
        part voituriers:Voituriers[*];
        part box:Box[*];
        part capteurs:Capteurs[*];
        part bornes_Recharche:Bornes-Recharge[*];
        part reseauSansFil;
        part reseauElectrique;
        part gps;


        flow integre from entreprise to spi;
        flow elabore from service_RD to spi;
        flow concoit from dataMobilis to spi;
        flow concoit from mecaMov to spi;
        flow utilise from conducteurs to spi;
        flow surveille from exploitants_parking to spi;
        flow gare from voitures to spi;
        flow affiche from panneauNumerique to spi;
        flow repere from smarphones to spi;
        flow controle from ordinateurs to spi;
        flow deplace from voituriers to spi;
        flow contient from box to spi;
        flow detecte from capteurs to spi;
        flow recharge from bornes_Recharge to spi;
        connect spi to reseauElectrique;
        connect spi to gps;
        connect spi to reseauSansFil;
    }
}