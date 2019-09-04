--CAS CORRECT
--�QUIPAGE
--Ins�re un nouvel �quipage
execute TP2P.INS_EQUIPAGE('8888','team cool','238');

--Update un �quipage
execute TP2P.upd_equipage('8888','team alpha','238');

--Supprime un �quipage
execute TP2P.del_equipage('8888');

--BILLETS
--Ins�re un nouveau billet
execute TP2P.ins_billets('2500', '789456', '1111');

--Update un billet
execute TP2P.upd_billets('1000000', '789456', '1111');

--Supprime un billet
execute TP2P.del_billets('1111');

--VOL
--Ins�re un nouveau vol
execute TP2P.ins_vol('150', '68', 'YUL', null, 'YYZ', '101', '10', '768', null);

--Update un vol
execute TP2P.upd_vol('20', '35', 'CDG', null, 'FCO', '103', '20', '768', null);

--Supprime un vol
execute TP2P.del_vol('768');

--CAS D'ERREUR
--�QUIPAGE
--Retournera un DBMS_OUTPUT si l'�quipage existe d�j�
execute TP2P.INS_EQUIPAGE('8888','team bob','238');

--Retournera un DBMS_OUTPUT si l'on tente d'ajouter un nouveau equipage sans cl� primaire
execute TP2P.INS_EQUIPAGE(null,'team bob','238');

--Retournera un DBMS_OUTPUT si des employ�s poss�de la cl� primaire qu'on souhaite retirer comme foreign key
execute TP2P.DEL_EQUIPAGE('9999');

--Retournera un DBMS_OUTPUT si la cl� entr� est associ� � aucune cl� primaire
execute TP2P.UPD_EQUIPAGE('8888','ggfdg','143253');

--BILLETS
--Retournera un DBMS_OUTPUT si un billet existe d�j�
execute TP2P.INS_BILLETS('3500','632663','333');

--Retournera un DBMS_OUTPUT si la cl� primaire entr� est nulle
execute TP2P.INS_BILLETS('432','473',null);

--Retournera un DBMS_OUTPUT si le billet n'existe pas
execute TP2P.DEL_BILLETS('432432');

--Retournera un DBMS_OUTPUT si le billet qu'on d�sire faire un mise � jour n'existe pas
execute TP2P.UPD_BILLETS('4654','65478','2432');

--VOL
--Retournera un DBMS_OUTPUT si un vol existe d�j�
execute TP2P.ins_vol('150', '50', 'YYC', null, 'AMS', '101', '30', '768', null);

--Retournera un DBMS_OUTPUT si la cl� primaire est nulle
execute TP2P.ins_vol('150', '50', 'YYC', null, 'AMS', '101', '30', null, null);

--Retournera un DBMS_OUTPUT si la cl� n'existe pas pour la mise � jour
execute TP2P.upd_vol('150', '50', 'YYC', null, 'AMS', '200', '30', '788', null);

--Retournera un DBMS_OUTPUT si un vol n'existe pas pour le supprimer
execute TP2P.del_vol('543');
