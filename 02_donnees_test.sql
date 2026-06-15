USE tifosi;

INSERT INTO constitue (id_focaccia, id_ingredient) VALUES
(1,1),(1,2),(1,6),
(2,1),(2,2),(2,3),(2,4),
(3,1),(3,4),(3,5),(3,7),(3,8);

INSERT INTO comprend (id_focaccia, id_menu) VALUES
(1,1),
(2,2),
(3,2);

INSERT INTO contient (id_menu, id_boisson) VALUES
(1,1),
(2,2),
(2,3);

INSERT INTO achete (id_client, id_menu, date_achat) VALUES
(1,1,'2026-06-01'),
(2,2,'2026-06-02'),
(3,2,'2026-06-03');
USE tifosi;

INSERT INTO marque (nom) VALUES
('Coca-Cola'),
('Pepsi'),
('Orangina'),
('Cristaline');

INSERT INTO ingredient (nom) VALUES
('Tomate'),
('Mozzarella'),
('Jambon'),
('Champignon'),
('Olive'),
('Basilic'),
('Chevre'),
('Oignon');

INSERT INTO focaccia (nom, prix) VALUES
('Margherita', 8.50),
('Reine', 10.50),
('Vegetarienne', 9.50);

INSERT INTO client (nom, email, code_postal) VALUES
('Dupont Jean', 'jean.dupont@email.fr', '75001'),
('Martin Sophie', 'sophie.martin@email.fr', '69000'),
('Durand Paul', 'paul.durand@email.fr', '13000');

INSERT INTO boisson (nom, id_marque) VALUES
('Coca-Cola 33cl', 1),
('Pepsi 33cl', 2),
('Orangina 33cl', 3),
('Cristaline 50cl', 4);

INSERT INTO menu (nom, prix) VALUES
('Menu Solo', 12.90),
('Menu Duo', 22.90);
