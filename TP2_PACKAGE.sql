---------------------------------------------------------------
---------------------------EN TETE-----------------------------
---------------------------------------------------------------
CREATE OR REPLACE PACKAGE TP2P
IS
type VOL_tapi_rec
IS
  record
  (
    NB_PLACE VOL.NB_PLACE%type ,
    PORTE VOL.PORTE%type ,
    AEROPORT_DEPART VOL.AEROPORT_DEPART%type ,
    HEURE_ARRIVEE VOL.HEURE_ARRIVEE%type ,
    DESTINATION VOL.DESTINATION%type ,
    ETAT_NO_ETAT VOL.ETAT_NO_ETAT%type ,
    AVION_NO_AVION VOL.AVION_NO_AVION%type ,
    NO_VOL VOL.NO_VOL%type ,
    HEURE_DEPART VOL.HEURE_DEPART%type );
type VOL_tapi_tab
IS
  TABLE OF VOL_tapi_rec;
  -- insert
  PROCEDURE ins_vol(
      p_NB_PLACE        IN VOL.NB_PLACE%type DEFAULT NULL ,
      p_PORTE           IN VOL.PORTE%type DEFAULT NULL ,
      p_AEROPORT_DEPART IN VOL.AEROPORT_DEPART%type DEFAULT NULL ,
      p_HEURE_ARRIVEE   IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
      p_DESTINATION     IN VOL.DESTINATION%type DEFAULT NULL ,
      p_ETAT_NO_ETAT    IN VOL.ETAT_NO_ETAT%type ,
      p_AVION_NO_AVION  IN VOL.AVION_NO_AVION%type ,
      p_NO_VOL          IN VOL.NO_VOL%type ,
      p_HEURE_DEPART    IN VOL.HEURE_DEPART%type DEFAULT NULL );
  -- update
  PROCEDURE upd_vol(
      p_NB_PLACE        IN VOL.NB_PLACE%type DEFAULT NULL ,
      p_PORTE           IN VOL.PORTE%type DEFAULT NULL ,
      p_AEROPORT_DEPART IN VOL.AEROPORT_DEPART%type DEFAULT NULL ,
      p_HEURE_ARRIVEE   IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
      p_DESTINATION     IN VOL.DESTINATION%type DEFAULT NULL ,
      p_ETAT_NO_ETAT    IN VOL.ETAT_NO_ETAT%type ,
      p_AVION_NO_AVION  IN VOL.AVION_NO_AVION%type ,
      p_NO_VOL          IN VOL.NO_VOL%type ,
      p_HEURE_DEPART    IN VOL.HEURE_DEPART%type DEFAULT NULL );
  -- delete
  PROCEDURE del_vol(
      p_NO_VOL IN VOL.NO_VOL%type );
------------------------------------------------------------------------
type BILLETS_tapi_rec
IS
  record
  (
    PRIX BILLETS.PRIX%type ,
    CLIENT_NO_CLIENT BILLETS.CLIENT_NO_CLIENT%type ,
    NO_BILLET BILLETS.NO_BILLET%type );
type BILLETS_tapi_tab
IS
  TABLE OF BILLETS_tapi_rec;
  -- insert
  PROCEDURE ins_billets(
      p_PRIX             IN BILLETS.PRIX%type DEFAULT NULL ,
      p_CLIENT_NO_CLIENT IN BILLETS.CLIENT_NO_CLIENT%type ,
      p_NO_BILLET        IN BILLETS.NO_BILLET%type );
  -- update
  PROCEDURE upd_billets(
      p_PRIX             IN BILLETS.PRIX%type DEFAULT NULL ,
      p_CLIENT_NO_CLIENT IN BILLETS.CLIENT_NO_CLIENT%type ,
      p_NO_BILLET        IN BILLETS.NO_BILLET%type );
  -- delete
  PROCEDURE del_billets(
      p_NO_BILLET IN BILLETS.NO_BILLET%type );
--------------------------------------------------------------------
type EQUIPAGE_tapi_rec
IS
  record
  (
    NO_EQUIPAGE EQUIPAGE.NO_EQUIPAGE%type ,
    NOM EQUIPAGE.NOM%type ,
    VOL_NO_VOL EQUIPAGE.VOL_NO_VOL%type );
type EQUIPAGE_tapi_tab
IS
  TABLE OF EQUIPAGE_tapi_rec;
  -- insert EQUIPAGE
  PROCEDURE ins_equipage(
      p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type ,
      p_NOM         IN EQUIPAGE.NOM%type ,
      p_VOL_NO_VOL  IN EQUIPAGE.VOL_NO_VOL%type );
  -- update EQUIPAGE
  PROCEDURE upd_equipage(
      p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type ,
      p_NOM         IN EQUIPAGE.NOM%type ,
      p_VOL_NO_VOL  IN EQUIPAGE.VOL_NO_VOL%type );
  -- delete EQUIPAGE
  PROCEDURE del_equipage(
      p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type );
--------------------------------------------------------------------
type AEROPORT_tapi_rec
IS

  record
  (
    NOM AEROPORT.NOM%type ,
    NO_AEROPORT AEROPORT.NO_AEROPORT%type );
type AEROPORT_tapi_tab
IS
  TABLE OF AEROPORT_tapi_rec;
  -- insert AEROPORT
  PROCEDURE ins_aeroport(
      p_NOM         IN AEROPORT.NOM%type DEFAULT NULL ,
      p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type );
  -- update AEROPORT
  PROCEDURE upd_aeroport(
      p_NOM         IN AEROPORT.NOM%type DEFAULT NULL ,
      p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type );
  -- delete AEROPORT
  PROCEDURE del_aeroport(
      p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type );
--------------------------------------------------------------------
type AMIS_tapi_rec
IS
record
  (
    NOM AMIS.NOM%type ,
    CLIENT_NO_CLIENT AMIS.CLIENT_NO_CLIENT%type ,
    NO_AMI AMIS.NO_AMI%type );


type AMIS_tapi_tab
IS
  TABLE OF AMIS_tapi_rec;
  -- insert AMIS
  PROCEDURE ins_amis(
      p_NOM              IN AMIS.NOM%type DEFAULT NULL ,
      p_CLIENT_NO_CLIENT IN AMIS.CLIENT_NO_CLIENT%type DEFAULT NULL ,
      p_NO_AMI           IN AMIS.NO_AMI%type );
  -- update AMIS
  PROCEDURE upd_amis(
      p_NOM              IN AMIS.NOM%type DEFAULT NULL ,
      p_CLIENT_NO_CLIENT IN AMIS.CLIENT_NO_CLIENT%type DEFAULT NULL ,
      p_NO_AMI           IN AMIS.NO_AMI%type );
  -- delete AMIS
  PROCEDURE del_amis(
      p_NO_AMI IN AMIS.NO_AMI%type );
----------------------------------------------------------------
type AVION_tapi_rec
IS
  record
  (
    DESCRIPTION AVION.DESCRIPTION%type ,
    TRANSPORTEUR_NO_TRANSPORTEUR AVION.TRANSPORTEUR_NO_TRANSPORTEUR%type ,
    NO_AVION AVION.NO_AVION%type ,
    MANUFACTURIER AVION.MANUFACTURIER%type ,
    ETAT_NO_ETAT AVION.ETAT_NO_ETAT%type ,
    CAPACITE AVION.CAPACITE%type ,
    MODELE AVION.MODELE%type );
type AVION_tapi_tab
IS
  TABLE OF AVION_tapi_rec;
  -- insert AVION
  PROCEDURE ins_avion(
      p_DESCRIPTION                  IN AVION.DESCRIPTION%type DEFAULT NULL ,
      p_TRANSPORTEUR_NO_TRANSPORTEUR IN AVION.TRANSPORTEUR_NO_TRANSPORTEUR%type ,
      p_NO_AVION                     IN AVION.NO_AVION%type ,
      p_MANUFACTURIER                IN AVION.MANUFACTURIER%type DEFAULT NULL ,
      p_ETAT_NO_ETAT                 IN AVION.ETAT_NO_ETAT%type ,
      p_CAPACITE                     IN AVION.CAPACITE%type DEFAULT NULL ,
      p_MODELE                       IN AVION.MODELE%type DEFAULT NULL );
  -- update AVION
  PROCEDURE upd_avion(
      p_DESCRIPTION                  IN AVION.DESCRIPTION%type DEFAULT NULL ,
      p_TRANSPORTEUR_NO_TRANSPORTEUR IN AVION.TRANSPORTEUR_NO_TRANSPORTEUR%type ,
      p_NO_AVION                     IN AVION.NO_AVION%type ,
      p_MANUFACTURIER                IN AVION.MANUFACTURIER%type DEFAULT NULL ,
      p_ETAT_NO_ETAT                 IN AVION.ETAT_NO_ETAT%type ,
      p_CAPACITE                     IN AVION.CAPACITE%type DEFAULT NULL ,
      p_MODELE                       IN AVION.MODELE%type DEFAULT NULL );
  -- delete AVION
  PROCEDURE del_avion(
      p_NO_AVION IN AVION.NO_AVION%type );
---------------------------------------------------------------------------
type CLIENT_tapi_rec
IS
  record
  (
    MODE_PAIEMENT CLIENT.MODE_PAIEMENT%type ,
    NOM CLIENT.NOM%type ,
    NO_CLIENT CLIENT.NO_CLIENT%type );
type CLIENT_tapi_tab
IS
  TABLE OF CLIENT_tapi_rec;
  -- insert CLIENT
  PROCEDURE ins_client(
      p_MODE_PAIEMENT IN CLIENT.MODE_PAIEMENT%type DEFAULT NULL ,
      p_NOM           IN CLIENT.NOM%type DEFAULT NULL ,
      p_NO_CLIENT     IN CLIENT.NO_CLIENT%type );
  -- update CLIENT
  PROCEDURE upd_client(
      p_MODE_PAIEMENT IN CLIENT.MODE_PAIEMENT%type DEFAULT NULL ,
      p_NOM           IN CLIENT.NOM%type DEFAULT NULL ,
      p_NO_CLIENT     IN CLIENT.NO_CLIENT%type );
  -- delete CLIENT
  PROCEDURE del_client(
      p_NO_CLIENT IN CLIENT.NO_CLIENT%type );
---------------------------------------------------------------------
type EMPLOYE_tapi_rec
IS
  record
  (
    EQUIPAGE_NO_EQUIPAGE EMPLOYE.EQUIPAGE_NO_EQUIPAGE%type ,
    NOM EMPLOYE.NOM%type ,
    NO_EMPLOYE EMPLOYE.NO_EMPLOYE%type );
type EMPLOYE_tapi_tab
IS
  TABLE OF EMPLOYE_tapi_rec;
  -- insert EMPLOYE
  PROCEDURE ins_employe(
      p_EQUIPAGE_NO_EQUIPAGE IN EMPLOYE.EQUIPAGE_NO_EQUIPAGE%type DEFAULT NULL ,
      p_NOM                  IN EMPLOYE.NOM%type DEFAULT NULL ,
      p_NO_EMPLOYE           IN EMPLOYE.NO_EMPLOYE%type );
  -- update EMPLOYE
  PROCEDURE upd_employe(
      p_EQUIPAGE_NO_EQUIPAGE IN EMPLOYE.EQUIPAGE_NO_EQUIPAGE%type DEFAULT NULL ,
      p_NOM                  IN EMPLOYE.NOM%type DEFAULT NULL ,
      p_NO_EMPLOYE           IN EMPLOYE.NO_EMPLOYE%type );
  -- delete EMPLOYE
  PROCEDURE del_employe(
      p_NO_EMPLOYE IN EMPLOYE.NO_EMPLOYE%type );
-------------------------------------------------------------------
type ETAT_tapi_rec
IS
  record
  (
    ETAT_ACTUAL ETAT.ETAT_ACTUAL%type ,
    NO_ETAT ETAT.NO_ETAT%type );
type ETAT_tapi_tab
IS
  TABLE OF ETAT_tapi_rec;
  -- insert ETAT
  PROCEDURE ins_etat(
      p_ETAT_ACTUAL IN ETAT.ETAT_ACTUAL%type ,
      p_NO_ETAT     IN ETAT.NO_ETAT%type );
  -- update ETAT
  PROCEDURE upd_etat(
      p_ETAT_ACTUAL IN ETAT.ETAT_ACTUAL%type ,
      p_NO_ETAT     IN ETAT.NO_ETAT%type );
  -- delete ETAT
  PROCEDURE del_etat(
      p_NO_ETAT IN ETAT.NO_ETAT%type );
------------------------------------------------------------------
type PISTE_tapi_rec
IS
  record
  (
    AEROPORT_NO_AEROPORT PISTE.AEROPORT_NO_AEROPORT%type ,
    ETAT_NO_ETAT PISTE.ETAT_NO_ETAT%type ,
    VOL_NO_VOL PISTE.VOL_NO_VOL%type ,
    NO_PISTE PISTE.NO_PISTE%type );
type PISTE_tapi_tab
IS
  TABLE OF PISTE_tapi_rec;
  -- insert PISTE
  PROCEDURE ins_piste(
      p_AEROPORT_NO_AEROPORT IN PISTE.AEROPORT_NO_AEROPORT%type ,
      p_ETAT_NO_ETAT         IN PISTE.ETAT_NO_ETAT%type ,
      p_VOL_NO_VOL           IN PISTE.VOL_NO_VOL%type DEFAULT NULL ,
      p_NO_PISTE             IN PISTE.NO_PISTE%type );
  -- update PISTE
  PROCEDURE upd_piste(
      p_AEROPORT_NO_AEROPORT IN PISTE.AEROPORT_NO_AEROPORT%type ,
      p_ETAT_NO_ETAT         IN PISTE.ETAT_NO_ETAT%type ,
      p_VOL_NO_VOL           IN PISTE.VOL_NO_VOL%type DEFAULT NULL ,
      p_NO_PISTE             IN PISTE.NO_PISTE%type );
  -- delete PISTE
  PROCEDURE del_piste(
      p_NO_PISTE IN PISTE.NO_PISTE%type );
----------------------------------------------------------------------------
type PLACE_tapi_rec
IS
  record
  (
    PRIX_SIEGE PLACE.PRIX_SIEGE%type ,
    NO_SIEGE PLACE.NO_SIEGE%type ,
    CLIENT_NO_CLIENT PLACE.CLIENT_NO_CLIENT%type ,
    NO_VOL PLACE.NO_VOL%type );
type PLACE_tapi_tab
IS
  TABLE OF PLACE_tapi_rec;
  -- insert PLACE
  PROCEDURE ins_place(
      p_PRIX_SIEGE       IN PLACE.PRIX_SIEGE%type DEFAULT NULL ,
      p_NO_SIEGE         IN PLACE.NO_SIEGE%type ,
      p_CLIENT_NO_CLIENT IN PLACE.CLIENT_NO_CLIENT%type ,
      p_NO_VOL           IN PLACE.NO_VOL%type DEFAULT NULL );
  -- update PLACE
  PROCEDURE upd_place(
      p_PRIX_SIEGE       IN PLACE.PRIX_SIEGE%type DEFAULT NULL ,
      p_NO_SIEGE         IN PLACE.NO_SIEGE%type ,
      p_CLIENT_NO_CLIENT IN PLACE.CLIENT_NO_CLIENT%type ,
      p_NO_VOL           IN PLACE.NO_VOL%type DEFAULT NULL );
  -- delete PLACE
  PROCEDURE del_place(
      p_NO_SIEGE IN PLACE.NO_SIEGE%type );
-----------------------------------------------------------------------
type POSITION_tapi_rec
IS
  record
  (
    ORIENTATION POSITION.ORIENTATION%type ,
    NO_POSITION POSITION.NO_POSITION%type ,
    VOL_NO_VOL POSITION.VOL_NO_VOL%type ,
    ALTITUDE POSITION.ALTITUDE%type ,
    LONGITUDE POSITION.LONGITUDE%type ,
    VITESSE POSITION.VITESSE%type ,
    LATITUDE POSITION.LATITUDE%type );
type POSITION_tapi_tab
IS
  TABLE OF POSITION_tapi_rec;
  -- insert POSITION
  PROCEDURE ins_position(
      p_ORIENTATION IN POSITION.ORIENTATION%type DEFAULT NULL ,
      p_NO_POSITION IN POSITION.NO_POSITION%type ,
      p_VOL_NO_VOL  IN POSITION.VOL_NO_VOL%type ,
      p_ALTITUDE    IN POSITION.ALTITUDE%type DEFAULT NULL ,
      p_LONGITUDE   IN POSITION.LONGITUDE%type DEFAULT NULL ,
      p_VITESSE     IN POSITION.VITESSE%type DEFAULT NULL ,
      p_LATITUDE    IN POSITION.LATITUDE%type DEFAULT NULL );
  -- update POSITION
  PROCEDURE upd_position(
      p_ORIENTATION IN POSITION.ORIENTATION%type DEFAULT NULL ,
      p_NO_POSITION IN POSITION.NO_POSITION%type ,
      p_VOL_NO_VOL  IN POSITION.VOL_NO_VOL%type ,
      p_ALTITUDE    IN POSITION.ALTITUDE%type DEFAULT NULL ,
      p_LONGITUDE   IN POSITION.LONGITUDE%type DEFAULT NULL ,
      p_VITESSE     IN POSITION.VITESSE%type DEFAULT NULL ,
      p_LATITUDE    IN POSITION.LATITUDE%type DEFAULT NULL );
  -- delete
  PROCEDURE del_position(
      p_NO_POSITION IN POSITION.NO_POSITION%type );
-------------------------------------------------------------------------
type TRANSPORTEUR_tapi_rec
IS
  record
  (
    NOM TRANSPORTEUR.NOM%type ,
    NO_TRANSPORTEUR TRANSPORTEUR.NO_TRANSPORTEUR%type );
type TRANSPORTEUR_tapi_tab
IS
  TABLE OF TRANSPORTEUR_tapi_rec;
  -- insert TRANSPORTEUR
  PROCEDURE ins_transporteur(
      p_NOM             IN TRANSPORTEUR.NOM%type DEFAULT NULL ,
      p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type );
  -- update TRANSPORTEUR
  PROCEDURE upd_transporteur(
      p_NOM             IN TRANSPORTEUR.NOM%type DEFAULT NULL ,
      p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type );
  -- delete TRANSPORTEUR
  PROCEDURE del_transporteur(
      p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type );
--------------------------------------------------------------------------
type UTILISATEUR_tapi_rec
IS
  record
  (
    NOM UTILISATEUR.NOM%type ,
    MOT_DE_PASSE UTILISATEUR.MOT_DE_PASSE%type ,
    NO_UTILISATEUR UTILISATEUR.NO_UTILISATEUR%type );
type UTILISATEUR_tapi_tab
IS
  TABLE OF UTILISATEUR_tapi_rec;
  -- insert UTILISATEUR
  PROCEDURE ins_utilisateur(
      p_NOM            IN UTILISATEUR.NOM%type DEFAULT NULL ,
      p_MOT_DE_PASSE   IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL ,
      p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type );
  -- update UTILISATEUR
  PROCEDURE upd_utilisateur(
      p_NOM            IN UTILISATEUR.NOM%type DEFAULT NULL ,
      p_MOT_DE_PASSE   IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL ,
      p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type );
  -- delete UTILISATEUR
  PROCEDURE del_utilisateur(
      p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type );     
      
END TP2P;
---------------------------------------------------------------
-----------------------------BODY------------------------------
---------------------------------------------------------------
CREATE OR REPLACE PACKAGE body TP2P
IS
  -- insert VOL
PROCEDURE ins_vol(
    p_NB_PLACE        IN VOL.NB_PLACE%type DEFAULT NULL ,
    p_PORTE           IN VOL.PORTE%type DEFAULT NULL ,
    p_AEROPORT_DEPART IN VOL.AEROPORT_DEPART%type DEFAULT NULL ,
    p_HEURE_ARRIVEE   IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
    p_DESTINATION     IN VOL.DESTINATION%type DEFAULT NULL ,
    p_ETAT_NO_ETAT    IN VOL.ETAT_NO_ETAT%type ,
    p_AVION_NO_AVION  IN VOL.AVION_NO_AVION%type ,
    p_NO_VOL          IN VOL.NO_VOL%type ,
    p_HEURE_DEPART    IN VOL.HEURE_DEPART%type DEFAULT NULL )
IS
valeur_nulle exception;
pragma exception_init(valeur_nulle, -1400);
BEGIN
  INSERT
  INTO VOL
    (
      NB_PLACE ,
      PORTE ,
      AEROPORT_DEPART ,
      HEURE_ARRIVEE ,
      DESTINATION ,
      ETAT_NO_ETAT ,
      AVION_NO_AVION ,
      NO_VOL ,
      HEURE_DEPART
    )
    VALUES
    (
      p_NB_PLACE ,
      p_PORTE ,
      p_AEROPORT_DEPART ,
      p_HEURE_ARRIVEE ,
      p_DESTINATION ,
      p_ETAT_NO_ETAT ,
      p_AVION_NO_AVION ,
      p_NO_VOL ,
      p_HEURE_DEPART
    );
    EXCEPTION 
      WHEN DUP_VAL_ON_INDEX then
        dbms_output.put_line('Vol deja existant');
      WHEN valeur_nulle then
        dbms_output.put_line('La clé primaire est nulle');
END;
-- update VOL
PROCEDURE upd_vol
  (
    p_NB_PLACE        IN VOL.NB_PLACE%type DEFAULT NULL ,
    p_PORTE           IN VOL.PORTE%type DEFAULT NULL ,
    p_AEROPORT_DEPART IN VOL.AEROPORT_DEPART%type DEFAULT NULL ,
    p_HEURE_ARRIVEE   IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
    p_DESTINATION     IN VOL.DESTINATION%type DEFAULT NULL ,
    p_ETAT_NO_ETAT    IN VOL.ETAT_NO_ETAT%type ,
    p_AVION_NO_AVION  IN VOL.AVION_NO_AVION%type ,
    p_NO_VOL          IN VOL.NO_VOL%type ,
    p_HEURE_DEPART    IN VOL.HEURE_DEPART%type DEFAULT NULL
  )
IS
no_update exception;
BEGIN
  UPDATE VOL
  SET NB_PLACE      = p_NB_PLACE ,
    PORTE           = p_PORTE ,
    AEROPORT_DEPART = p_AEROPORT_DEPART ,
    HEURE_ARRIVEE   = p_HEURE_ARRIVEE ,
    DESTINATION     = p_DESTINATION ,
    ETAT_NO_ETAT    = p_ETAT_NO_ETAT ,
    AVION_NO_AVION  = p_AVION_NO_AVION ,
    HEURE_DEPART    = p_HEURE_DEPART
  WHERE NO_VOL      = p_NO_VOL;
  
    IF SQL%ROWCOUNT = 0 THEN
      RAISE no_update;
    END IF;
    EXCEPTION
      WHEN no_update THEN
        dbms_output.put_line('Le vol nexiste pas pour le mise a jour');
END;
-- del VOL
PROCEDURE del_vol(
    p_NO_VOL IN VOL.NO_VOL%type )
IS
no_delete exception;
BEGIN
  DELETE FROM VOL WHERE NO_VOL = p_NO_VOL;
    IF SQL%ROWCOUNT = 0 THEN
      RAISE no_delete;
    END IF;
    EXCEPTION
      WHEN no_delete THEN
        dbms_output.put_line('Le vol nexiste pas pour le supprimer');
END;
-----------------------------------------------------------------------------------
  -- insert BILLETS
PROCEDURE ins_billets(
    p_PRIX             IN BILLETS.PRIX%type DEFAULT NULL ,
    p_CLIENT_NO_CLIENT IN BILLETS.CLIENT_NO_CLIENT%type ,
    p_NO_BILLET        IN BILLETS.NO_BILLET%type )
IS
valeur_nulle exception;
pragma exception_init(valeur_nulle, -1400);
BEGIN
  INSERT
  INTO BILLETS
    (
      PRIX ,
      CLIENT_NO_CLIENT ,
      NO_BILLET
    )
    VALUES
    (
      p_PRIX ,
      p_CLIENT_NO_CLIENT ,
      p_NO_BILLET
    );
    EXCEPTION 
      WHEN DUP_VAL_ON_INDEX then
        dbms_output.put_line('Billets existant');
      WHEN valeur_nulle then
        dbms_output.put_line('La clé primaire est nulle');
    
END;
-- update BILLETS
PROCEDURE upd_billets
  (
    p_PRIX             IN BILLETS.PRIX%type DEFAULT NULL ,
    p_CLIENT_NO_CLIENT IN BILLETS.CLIENT_NO_CLIENT%type ,
    p_NO_BILLET        IN BILLETS.NO_BILLET%type
  )
IS
no_delete exception;
BEGIN
  UPDATE BILLETS
  SET PRIX           = p_PRIX ,
    CLIENT_NO_CLIENT = p_CLIENT_NO_CLIENT
  WHERE NO_BILLET    = p_NO_BILLET;
  IF SQL%ROWCOUNT = 0 THEN
    RAISE no_delete;
  END IF;
EXCEPTION
    WHEN no_delete THEN
      dbms_output.put_line('Le billet nexiste pas pour le mise a jour');
END;
-- del BILLETS
PROCEDURE del_billets(
    p_NO_BILLET IN BILLETS.NO_BILLET%type )
IS
no_delete exception;
BEGIN
  DELETE FROM BILLETS WHERE NO_BILLET = p_NO_BILLET;
  IF SQL%ROWCOUNT = 0 THEN
    RAISE no_delete;
END IF;
  EXCEPTION
    WHEN no_delete THEN
      dbms_output.put_line('Le billet nexiste pas');
END;
-------------------------------------------------------------------
  -- insert EQUIPAGE
PROCEDURE ins_equipage(
    p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type ,
    p_NOM         IN EQUIPAGE.NOM%type ,
    p_VOL_NO_VOL  IN EQUIPAGE.VOL_NO_VOL%type )
IS
valeur_nulle exception;
pragma exception_init(valeur_nulle,-1400);
BEGIN
  INSERT
  INTO EQUIPAGE
    (
      NO_EQUIPAGE ,
      NOM ,
      VOL_NO_VOL
    )
    VALUES
    (
      p_NO_EQUIPAGE ,
      p_NOM ,
      p_VOL_NO_VOL
    );
    EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
     DBMS_OUTPUT.PUT_LINE('Equipage existante');
    WHEN valeur_nulle THEN
     DBMS_OUTPUT.PUT_LINE('Equipage a besoin de une cle primaire');
END;
-- update EQUIPAGE
PROCEDURE upd_equipage
  (
    p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type ,
    p_NOM         IN EQUIPAGE.NOM%type ,
    p_VOL_NO_VOL  IN EQUIPAGE.VOL_NO_VOL%type
  )
IS
cle_parent_trouver exception;
pragma exception_init (cle_parent_trouver,-2291);
BEGIN
  UPDATE EQUIPAGE
  SET NOM           = p_NOM ,
    VOL_NO_VOL      = p_VOL_NO_VOL
  WHERE NO_EQUIPAGE = p_NO_EQUIPAGE;
EXCEPTION
  WHEN cle_parent_trouver THEN
    DBMS_OUTPUT.PUT_LINE('Aucun vol ne est associez a la cle indiquer');
END;
-- del EQUIPAGE
PROCEDURE del_equipage(
    p_NO_EQUIPAGE IN EQUIPAGE.NO_EQUIPAGE%type )
IS
no_delete exception;
child_found exception;
pragma exception_init(child_found,-2292);
BEGIN
  DELETE FROM EQUIPAGE WHERE NO_EQUIPAGE = p_NO_EQUIPAGE;
  IF SQL%ROWCOUNT = 0 THEN
    raise no_delete;
  END IF;
EXCEPTION
  WHEN child_found THEN
     DBMS_OUTPUT.PUT_LINE('Des employés sont encore associés à cette équipage'); 
  WHEN no_delete THEN
     DBMS_OUTPUT.PUT_LINE('Aucun ID ne est associez a cette equipage'); 
END;
-----------------------------------------------------------------------
  -- insert AEROPORT
PROCEDURE ins_aeroport(
    p_NOM         IN AEROPORT.NOM%type DEFAULT NULL ,
    p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type )
IS
BEGIN
  INSERT INTO AEROPORT
    ( NOM ,NO_AEROPORT
    ) VALUES
    ( p_NOM ,p_NO_AEROPORT
    );
END;
-- update AEROPORT
PROCEDURE upd_aeroport
  (
    p_NOM         IN AEROPORT.NOM%type DEFAULT NULL ,
    p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type
  )
IS
BEGIN
  UPDATE AEROPORT SET NOM = p_NOM WHERE NO_AEROPORT = p_NO_AEROPORT;
END;
-- del AEROPORT
PROCEDURE del_aeroport(
    p_NO_AEROPORT IN AEROPORT.NO_AEROPORT%type )
IS
BEGIN
  DELETE FROM AEROPORT WHERE NO_AEROPORT = p_NO_AEROPORT;
END;
-----------------------------------------------------------
-- insert AMIS
PROCEDURE ins_amis(
    p_NOM              IN AMIS.NOM%type DEFAULT NULL ,
    p_CLIENT_NO_CLIENT IN AMIS.CLIENT_NO_CLIENT%type DEFAULT NULL ,
    p_NO_AMI           IN AMIS.NO_AMI%type )
IS
BEGIN
  INSERT
  INTO AMIS
    (
      NOM ,
      CLIENT_NO_CLIENT ,
      NO_AMI
    )
    VALUES
    (
      p_NOM ,
      p_CLIENT_NO_CLIENT ,
      p_NO_AMI
    );
END;
-- update AMIS
PROCEDURE upd_amis
  (
    p_NOM              IN AMIS.NOM%type DEFAULT NULL ,
    p_CLIENT_NO_CLIENT IN AMIS.CLIENT_NO_CLIENT%type DEFAULT NULL ,
    p_NO_AMI           IN AMIS.NO_AMI%type
  )
IS
BEGIN
  UPDATE AMIS
  SET NOM            = p_NOM ,
    CLIENT_NO_CLIENT = p_CLIENT_NO_CLIENT
  WHERE NO_AMI       = p_NO_AMI;
END;
-- del AMIS
PROCEDURE del_amis(
    p_NO_AMI IN AMIS.NO_AMI%type )
IS
BEGIN
  DELETE FROM AMIS WHERE NO_AMI = p_NO_AMI;
END;
--------------------------------------------------------------------
-- insert AVION
PROCEDURE ins_avion(
    p_DESCRIPTION                  IN AVION.DESCRIPTION%type DEFAULT NULL ,
    p_TRANSPORTEUR_NO_TRANSPORTEUR IN AVION.TRANSPORTEUR_NO_TRANSPORTEUR%type ,
    p_NO_AVION                     IN AVION.NO_AVION%type ,
    p_MANUFACTURIER                IN AVION.MANUFACTURIER%type DEFAULT NULL ,
    p_ETAT_NO_ETAT                 IN AVION.ETAT_NO_ETAT%type ,
    p_CAPACITE                     IN AVION.CAPACITE%type DEFAULT NULL ,
    p_MODELE                       IN AVION.MODELE%type DEFAULT NULL )
IS
BEGIN
  INSERT
  INTO AVION
    (
      DESCRIPTION ,
      TRANSPORTEUR_NO_TRANSPORTEUR ,
      NO_AVION ,
      MANUFACTURIER ,
      ETAT_NO_ETAT ,
      CAPACITE ,
      MODELE
    )
    VALUES
    (
      p_DESCRIPTION ,
      p_TRANSPORTEUR_NO_TRANSPORTEUR ,
      p_NO_AVION ,
      p_MANUFACTURIER ,
      p_ETAT_NO_ETAT ,
      p_CAPACITE ,
      p_MODELE
    );
END;
-- update AVION
PROCEDURE upd_avion
  (
    p_DESCRIPTION                  IN AVION.DESCRIPTION%type DEFAULT NULL ,
    p_TRANSPORTEUR_NO_TRANSPORTEUR IN AVION.TRANSPORTEUR_NO_TRANSPORTEUR%type ,
    p_NO_AVION                     IN AVION.NO_AVION%type ,
    p_MANUFACTURIER                IN AVION.MANUFACTURIER%type DEFAULT NULL ,
    p_ETAT_NO_ETAT                 IN AVION.ETAT_NO_ETAT%type ,
    p_CAPACITE                     IN AVION.CAPACITE%type DEFAULT NULL ,
    p_MODELE                       IN AVION.MODELE%type DEFAULT NULL
  )
IS
BEGIN
  UPDATE AVION
  SET DESCRIPTION                = p_DESCRIPTION ,
    TRANSPORTEUR_NO_TRANSPORTEUR = p_TRANSPORTEUR_NO_TRANSPORTEUR ,
    MANUFACTURIER                = p_MANUFACTURIER ,
    ETAT_NO_ETAT                 = p_ETAT_NO_ETAT ,
    CAPACITE                     = p_CAPACITE ,
    MODELE                       = p_MODELE
  WHERE NO_AVION                 = p_NO_AVION;
END;
-- del AVION
PROCEDURE del_avion(
    p_NO_AVION IN AVION.NO_AVION%type )
IS
BEGIN
  DELETE FROM AVION WHERE NO_AVION = p_NO_AVION;
END;
-------------------------------------------------------------------------
  -- insert CLIENT
PROCEDURE ins_client(
    p_MODE_PAIEMENT IN CLIENT.MODE_PAIEMENT%type DEFAULT NULL ,
    p_NOM           IN CLIENT.NOM%type DEFAULT NULL ,
    p_NO_CLIENT     IN CLIENT.NO_CLIENT%type )
IS
BEGIN
  INSERT
  INTO CLIENT
    (
      MODE_PAIEMENT ,
      NOM ,
      NO_CLIENT
    )
    VALUES
    (
      p_MODE_PAIEMENT ,
      p_NOM ,
      p_NO_CLIENT
    );
END;
-- update CLIENT
PROCEDURE upd_client
  (
    p_MODE_PAIEMENT IN CLIENT.MODE_PAIEMENT%type DEFAULT NULL ,
    p_NOM           IN CLIENT.NOM%type DEFAULT NULL ,
    p_NO_CLIENT     IN CLIENT.NO_CLIENT%type
  )
IS
BEGIN
  UPDATE CLIENT
  SET MODE_PAIEMENT = p_MODE_PAIEMENT ,
    NOM             = p_NOM
  WHERE NO_CLIENT   = p_NO_CLIENT;
END;
-- del CLIENT
PROCEDURE del_client(
    p_NO_CLIENT IN CLIENT.NO_CLIENT%type )
IS
BEGIN
  DELETE FROM CLIENT WHERE NO_CLIENT = p_NO_CLIENT;
END;
------------------------------------------------------------------------------
  -- insert EMPLOYE
PROCEDURE ins_employe(
    p_EQUIPAGE_NO_EQUIPAGE IN EMPLOYE.EQUIPAGE_NO_EQUIPAGE%type DEFAULT NULL ,
    p_NOM                  IN EMPLOYE.NOM%type DEFAULT NULL ,
    p_NO_EMPLOYE           IN EMPLOYE.NO_EMPLOYE%type )
IS
BEGIN
  INSERT
  INTO EMPLOYE
    (
      EQUIPAGE_NO_EQUIPAGE ,
      NOM ,
      NO_EMPLOYE
    )
    VALUES
    (
      p_EQUIPAGE_NO_EQUIPAGE ,
      p_NOM ,
      p_NO_EMPLOYE
    );
END;
-- update EMPLOYE
PROCEDURE upd_employe
  (
    p_EQUIPAGE_NO_EQUIPAGE IN EMPLOYE.EQUIPAGE_NO_EQUIPAGE%type DEFAULT NULL ,
    p_NOM                  IN EMPLOYE.NOM%type DEFAULT NULL ,
    p_NO_EMPLOYE           IN EMPLOYE.NO_EMPLOYE%type
  )
IS
BEGIN
  UPDATE EMPLOYE
  SET EQUIPAGE_NO_EQUIPAGE = p_EQUIPAGE_NO_EQUIPAGE ,
    NOM                    = p_NOM
  WHERE NO_EMPLOYE         = p_NO_EMPLOYE;
END;
-- del EMPLOYE
PROCEDURE del_employe(
    p_NO_EMPLOYE IN EMPLOYE.NO_EMPLOYE%type )
IS
BEGIN
  DELETE FROM EMPLOYE WHERE NO_EMPLOYE = p_NO_EMPLOYE;
END;
-------------------------------------------------------------------
  -- insert ETAT
PROCEDURE ins_etat(
    p_ETAT_ACTUAL IN ETAT.ETAT_ACTUAL%type ,
    p_NO_ETAT     IN ETAT.NO_ETAT%type )
IS
BEGIN
  INSERT INTO ETAT
    ( ETAT_ACTUAL ,NO_ETAT
    ) VALUES
    ( p_ETAT_ACTUAL ,p_NO_ETAT
    );
END;
-- update ETAT
PROCEDURE upd_etat
  (
    p_ETAT_ACTUAL IN ETAT.ETAT_ACTUAL%type ,
    p_NO_ETAT     IN ETAT.NO_ETAT%type
  )
IS
BEGIN
  UPDATE ETAT SET ETAT_ACTUAL = p_ETAT_ACTUAL WHERE NO_ETAT = p_NO_ETAT;
END;
-- del ETAT
PROCEDURE del_etat(
    p_NO_ETAT IN ETAT.NO_ETAT%type )
IS
BEGIN
  DELETE FROM ETAT WHERE NO_ETAT = p_NO_ETAT;
END;
----------------------------------------------------------------
  -- insert PISTE
PROCEDURE ins_piste(
    p_AEROPORT_NO_AEROPORT IN PISTE.AEROPORT_NO_AEROPORT%type ,
    p_ETAT_NO_ETAT         IN PISTE.ETAT_NO_ETAT%type ,
    p_VOL_NO_VOL           IN PISTE.VOL_NO_VOL%type DEFAULT NULL ,
    p_NO_PISTE             IN PISTE.NO_PISTE%type )
IS
BEGIN
  INSERT
  INTO PISTE
    (
      AEROPORT_NO_AEROPORT ,
      ETAT_NO_ETAT ,
      VOL_NO_VOL ,
      NO_PISTE
    )
    VALUES
    (
      p_AEROPORT_NO_AEROPORT ,
      p_ETAT_NO_ETAT ,
      p_VOL_NO_VOL ,
      p_NO_PISTE
    );
END;
-- update PISTE
PROCEDURE upd_piste
  (
    p_AEROPORT_NO_AEROPORT IN PISTE.AEROPORT_NO_AEROPORT%type ,
    p_ETAT_NO_ETAT         IN PISTE.ETAT_NO_ETAT%type ,
    p_VOL_NO_VOL           IN PISTE.VOL_NO_VOL%type DEFAULT NULL ,
    p_NO_PISTE             IN PISTE.NO_PISTE%type
  )
IS
BEGIN
  UPDATE PISTE
  SET AEROPORT_NO_AEROPORT = p_AEROPORT_NO_AEROPORT ,
    ETAT_NO_ETAT           = p_ETAT_NO_ETAT ,
    VOL_NO_VOL             = p_VOL_NO_VOL
  WHERE NO_PISTE           = p_NO_PISTE;
END;
-- del PISTE
PROCEDURE del_piste(
    p_NO_PISTE IN PISTE.NO_PISTE%type )
IS
BEGIN
  DELETE FROM PISTE WHERE NO_PISTE = p_NO_PISTE;
END;
---------------------------------------------------------------------------
  -- insert PLACE
PROCEDURE ins_place(
    p_PRIX_SIEGE       IN PLACE.PRIX_SIEGE%type DEFAULT NULL ,
    p_NO_SIEGE         IN PLACE.NO_SIEGE%type ,
    p_CLIENT_NO_CLIENT IN PLACE.CLIENT_NO_CLIENT%type ,
    p_NO_VOL           IN PLACE.NO_VOL%type DEFAULT NULL )
IS
BEGIN
  INSERT
  INTO PLACE
    (
      PRIX_SIEGE ,
      NO_SIEGE ,
      CLIENT_NO_CLIENT ,
      NO_VOL
    )
    VALUES
    (
      p_PRIX_SIEGE ,
      p_NO_SIEGE ,
      p_CLIENT_NO_CLIENT ,
      p_NO_VOL
    );
END;
-- update PLACE
PROCEDURE upd_place
  (
    p_PRIX_SIEGE       IN PLACE.PRIX_SIEGE%type DEFAULT NULL ,
    p_NO_SIEGE         IN PLACE.NO_SIEGE%type ,
    p_CLIENT_NO_CLIENT IN PLACE.CLIENT_NO_CLIENT%type ,
    p_NO_VOL           IN PLACE.NO_VOL%type DEFAULT NULL
  )
IS
BEGIN
  UPDATE PLACE
  SET PRIX_SIEGE     = p_PRIX_SIEGE ,
    CLIENT_NO_CLIENT = p_CLIENT_NO_CLIENT ,
    NO_VOL           = p_NO_VOL
  WHERE NO_SIEGE     = p_NO_SIEGE;
END;
-- del PLACE
PROCEDURE del_place(
    p_NO_SIEGE IN PLACE.NO_SIEGE%type )
IS
BEGIN
  DELETE FROM PLACE WHERE NO_SIEGE = p_NO_SIEGE;
END;
--------------------------------------------------------------------
  -- insert POSITION
PROCEDURE ins_position(
    p_ORIENTATION IN POSITION.ORIENTATION%type DEFAULT NULL ,
    p_NO_POSITION IN POSITION.NO_POSITION%type ,
    p_VOL_NO_VOL  IN POSITION.VOL_NO_VOL%type ,
    p_ALTITUDE    IN POSITION.ALTITUDE%type DEFAULT NULL ,
    p_LONGITUDE   IN POSITION.LONGITUDE%type DEFAULT NULL ,
    p_VITESSE     IN POSITION.VITESSE%type DEFAULT NULL ,
    p_LATITUDE    IN POSITION.LATITUDE%type DEFAULT NULL )
IS
BEGIN
  INSERT
  INTO POSITION
    (
      ORIENTATION ,
      NO_POSITION ,
      VOL_NO_VOL ,
      ALTITUDE ,
      LONGITUDE ,
      VITESSE ,
      LATITUDE
    )
    VALUES
    (
      p_ORIENTATION ,
      p_NO_POSITION ,
      p_VOL_NO_VOL ,
      p_ALTITUDE ,
      p_LONGITUDE ,
      p_VITESSE ,
      p_LATITUDE
    );
END;
-- update POSITION
PROCEDURE upd_position
  (
    p_ORIENTATION IN POSITION.ORIENTATION%type DEFAULT NULL ,
    p_NO_POSITION IN POSITION.NO_POSITION%type ,
    p_VOL_NO_VOL  IN POSITION.VOL_NO_VOL%type ,
    p_ALTITUDE    IN POSITION.ALTITUDE%type DEFAULT NULL ,
    p_LONGITUDE   IN POSITION.LONGITUDE%type DEFAULT NULL ,
    p_VITESSE     IN POSITION.VITESSE%type DEFAULT NULL ,
    p_LATITUDE    IN POSITION.LATITUDE%type DEFAULT NULL
  )
IS
BEGIN
  UPDATE POSITION
  SET ORIENTATION   = p_ORIENTATION ,
    VOL_NO_VOL      = p_VOL_NO_VOL ,
    ALTITUDE        = p_ALTITUDE ,
    LONGITUDE       = p_LONGITUDE ,
    VITESSE         = p_VITESSE ,
    LATITUDE        = p_LATITUDE
  WHERE NO_POSITION = p_NO_POSITION;
END;
-- del POSITION
PROCEDURE del_position(
    p_NO_POSITION IN POSITION.NO_POSITION%type )
IS
BEGIN
  DELETE FROM POSITION WHERE NO_POSITION = p_NO_POSITION;
END;
--------------------------------------------------------------------
  -- insert TRANSPORTEUR
PROCEDURE ins_transporteur(
    p_NOM             IN TRANSPORTEUR.NOM%type DEFAULT NULL ,
    p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type )
IS
BEGIN
  INSERT
  INTO TRANSPORTEUR
    (
      NOM ,
      NO_TRANSPORTEUR
    )
    VALUES
    (
      p_NOM ,
      p_NO_TRANSPORTEUR
    );
END;
-- update TRANSPORTEUR
PROCEDURE upd_transporteur
  (
    p_NOM             IN TRANSPORTEUR.NOM%type DEFAULT NULL ,
    p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type
  )
IS
BEGIN
  UPDATE TRANSPORTEUR SET NOM = p_NOM WHERE NO_TRANSPORTEUR = p_NO_TRANSPORTEUR;
END;
-- del TRANSPORTEUR
PROCEDURE del_transporteur(
    p_NO_TRANSPORTEUR IN TRANSPORTEUR.NO_TRANSPORTEUR%type )
IS
BEGIN
  DELETE FROM TRANSPORTEUR WHERE NO_TRANSPORTEUR = p_NO_TRANSPORTEUR;
END;
-----------------------------------------------------------------------------------
  -- insert UTILISATEUR
PROCEDURE ins_utilisateur(
    p_NOM            IN UTILISATEUR.NOM%type DEFAULT NULL ,
    p_MOT_DE_PASSE   IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL ,
    p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type )
IS
BEGIN
  INSERT
  INTO UTILISATEUR
    (
      NOM ,
      MOT_DE_PASSE ,
      NO_UTILISATEUR
    )
    VALUES
    (
      p_NOM ,
      p_MOT_DE_PASSE ,
      p_NO_UTILISATEUR
    );
END;
-- update UTILISATEUR
PROCEDURE upd_utilisateur
  (
    p_NOM            IN UTILISATEUR.NOM%type DEFAULT NULL ,
    p_MOT_DE_PASSE   IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL ,
    p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type
  )
IS
BEGIN
  UPDATE UTILISATEUR
  SET NOM              = p_NOM ,
    MOT_DE_PASSE       = p_MOT_DE_PASSE
  WHERE NO_UTILISATEUR = p_NO_UTILISATEUR;
END;
-- del UTILISATEUR
PROCEDURE del_utilisateur(
    p_NO_UTILISATEUR IN UTILISATEUR.NO_UTILISATEUR%type )
IS
BEGIN
  DELETE FROM UTILISATEUR WHERE NO_UTILISATEUR = p_NO_UTILISATEUR;
END;
END TP2P;