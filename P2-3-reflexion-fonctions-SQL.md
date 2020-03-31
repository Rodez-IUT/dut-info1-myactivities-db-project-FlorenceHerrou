Réflexions sur create_activity_with_owner

2.1 Cette fonction cherche à insérer un nouvel utilisateur sans vérifier si le owner de l'activité 
n'est pas déjà un utilisateur enregistré.
(Ou si on n'essaie pas de donner le même id qu'un utilisateur déjà présent dans la table "user".)
De même, elle cherche à insérer une nouvelle activité sans vérifier si cette activité, 
avec ce propriétaire n'a pas déjà été enregistrée.
(Ou si on n'essaie pas d'enregistrer une activité sous un id déjà attribué.)

2.2 Il faudrait pouvoir effectuer l'action d'insertion sous certaines conditions, 
et donc avoir l'équivalent des if...else. Eventuellement, pouvoir lever des exceptions ?