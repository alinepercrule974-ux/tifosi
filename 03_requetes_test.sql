USE tifosi;

-- 1. Liste des focaccias
SELECT * FROM focaccia;

-- 2. Liste des ingrédients
SELECT * FROM ingredient;

-- 3. Liste des clients
SELECT * FROM client;

-- 4. Liste des boissons avec leur marque
SELECT b.nom AS boisson, m.nom AS marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque;

-- 5. Liste des menus
SELECT * FROM menu;

-- 6. Composition des focaccias
SELECT f.nom AS focaccia,
       i.nom AS ingredient,
       c.quantite
FROM comprend c
JOIN focaccia f ON c.id_focaccia = f.id_focaccia
JOIN ingredient i ON c.id_ingredient = i.id_ingredient
ORDER BY f.nom;

-- 7. Composition des menus
SELECT m.nom AS menu,
       f.nom AS focaccia
FROM constitue c
JOIN menu m ON c.id_menu = m.id_menu
JOIN focaccia f ON c.id_focaccia = f.id_focaccia;

-- 8. Boissons contenues dans les menus
SELECT m.nom AS menu,
       b.nom AS boisson
FROM contient c
JOIN menu m ON c.id_menu = m.id_menu
JOIN boisson b ON c.id_boisson = b.id_boisson;

-- 9. Achats réalisés par les clients
SELECT cl.nom AS client,
       m.nom AS menu,
       a.date_achat
FROM achete a
JOIN client cl ON a.id_client = cl.id_client
JOIN menu m ON a.id_menu = m.id_menu;

-- 10. Nombre d'achats par client
SELECT cl.nom,
       COUNT(*) AS nombre_achats
FROM achete a
JOIN client cl ON a.id_client = cl.id_client
GROUP BY cl.nom;
