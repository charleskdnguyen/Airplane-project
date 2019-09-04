--CAS CORRECT
--ÉQUIPAGE
--Insère un nouvel équipage
execute TP2P.INS_EQUIPAGE('8888','team cool','238');

--Update un équipage
execute TP2P.upd_equipage('8888','team alpha','238');

--Supprime un équipage
execute TP2P.del_equipage('8888');

--BILLETS
--Insère un nouveau billet
execute TP2P.ins_billets('2500', '789456', '1111');

--Update un billet
execute TP2P.upd_billets('1000000', '789456', '1111');

--Supprime un billet
execute TP2P.del_billets('1111');

--VOL
--Insère un nouveau vol
execute TP2P.ins_vol('150', '68', 'YUL', null, 'YYZ', '101', '10', '768', null);

--Update un vol
execute TP2P.upd_vol('20', '35', 'CDG', null, 'FCO', '103', '20', '768', null);

--Supprime un vol
execute TP2P.del_vol('768');

--CAS D'ERREUR
--ÉQUIPAGE
--Retournera un DBMS_OUTPUT si l'équipage existe déjà
execute TP2P.INS_EQUIPAGE('8888','team bob','238');

--Retournera un DBMS_OUTPUT si l'on tente d'ajouter un nouveau equipage sans clé primaire
execute TP2P.INS_EQUIPAGE(null,'team bob','238');

--Retournera un DBMS_OUTPUT si des employés possède la clé primaire qu'on souhaite retirer comme foreign key
execute TP2P.DEL_EQUIPAGE('9999');

--Retournera un DBMS_OUTPUT si la clé entré est associé à aucune clé primaire
execute TP2P.UPD_EQUIPAGE('8888','ggfdg','143253');

--BILLETS
--Retournera un DBMS_OUTPUT si un billet existe déjà
execute TP2P.INS_BILLETS('3500','632663','333');

--Retournera un DBMS_OUTPUT si la clé primaire entré est nulle
execute TP2P.INS_BILLETS('432','473',null);

--Retournera un DBMS_OUTPUT si le billet n'existe pas
execute TP2P.DEL_BILLETS('432432');

--Retournera un DBMS_OUTPUT si le billet qu'on désire faire un mise à jour n'existe pas
execute TP2P.UPD_BILLETS('4654','65478','2432');

--VOL
--Retournera un DBMS_OUTPUT si un vol existe déjà
execute TP2P.ins_vol('150', '50', 'YYC', null, 'AMS', '101', '30', '768', null);

--Retournera un DBMS_OUTPUT si la clé primaire est nulle
execute TP2P.ins_vol('150', '50', 'YYC', null, 'AMS', '101', '30', null, null);

--Retournera un DBMS_OUTPUT si la clé n'existe pas pour la mise à jour
execute TP2P.upd_vol('150', '50', 'YYC', null, 'AMS', '200', '30', '788', null);

--Retournera un DBMS_OUTPUT si un vol n'existe pas pour le supprimer
execute TP2P.del_vol('543');
