
insert into PRODUCTENTITY ( name, price,image) values ('Pan cereales',500, 'http://www.tequedasacenar.com/wp-content/uploads/Milcereales.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Pan queso',500, 'https://detomapan.files.wordpress.com/2013/09/image.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Pan neoyorkino',500, 'http://cocinayrecetas-static.hola.com/blogclaramasterchef/files/2014/10/IMG_4255.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Panettone',500, 'http://previews.123rf.com/images/claudiodivizia/claudiodivizia1304/claudiodivizia130400027/19243416-Panettone-la-Navidad-pan-dulce-pan-de-Mil-n-en-Italia-Foto-de-archivo.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Pan de muerto',500, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOp2tN7f2rZ1BOnjT3u7dNbiJBgD1UXSK4F_PzMiz6M1fxBajcQ');
insert into PRODUCTENTITY ( name, price,image) values ('Pan dulce',500, 'http://milrecetas.net/wp-content/uploads/2015/10/C%C3%B3mo-hacer-pan-de-molde-2.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Torta crema chocolate',500, 'https://informe21.com/sites/default/files/styles/node_default/public/images/una-torta-de-fresas-2272.jpg?itok=YAOl98l4');
insert into PRODUCTENTITY ( name, price,image) values ('Torta de chocolate',500, 'http://eltrebolsa.weebly.com/uploads/5/0/8/7/50870337/3575586_orig.png');
insert into PRODUCTENTITY ( name, price,image) values ('Torta con frutos rojos',500, 'http://www.cocinerosargentinos.com/images/1_Torta-desnuda-de-frutos-rojos.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Torta de fresa',500, 'http://nicolukas.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/m/ambrosiayougur2.png');
insert into PRODUCTENTITY ( name, price,image) values ('Torta tiramissu',500, 'http://www.cocinerosargentinos.com/images/1_Tiramisu-en-torta.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Torta de naranja',500, 'http://previews.123rf.com/images/teresaterra/teresaterra1211/teresaterra121100009/16212935-orange-jelly-and-whipped-cream-torte-garnished-around-with-sponge-fingers-in-charlotte-style-Stock-Photo.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre de naranja',500, 'https://www.meals.com/ImagesRecipes/121845lrg.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre de chocolate',500, 'https://www.meals.com/ImagesRecipes/121806lrg.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre de fresas',500, 'https://s-media-cache-ak0.pinimg.com/736x/59/dc/d0/59dcd0e53bcd9be7b558aa4318eacb9d--jello-parfait-strawberry-parfait.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre de zarzamora',500, 'https://s-media-cache-ak0.pinimg.com/736x/6f/de/88/6fde88669ffc0736586097d2b8526eec.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre imposible',500, 'http://www.1001consejos.com/wp-content/uploads/2013/05/pastel-imposible.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Postre cherry',500, 'http://img.bg.sof.cmestatic.com/media/images/1024x682/May2015/2110812882.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque cartoon',500, 'http://nicolukas.com/media/catalog/product/cache/1/small_image/310x424/9df78eab33525d08d6e5fb8d27136e95/p/o/ponque_blanco2_1.png');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque fresas',500, 'http://www.helenadelombana.com/wp/wp-content/uploads/Ponqu%C3%A9-de-fresas-y-crema.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque mr. Mario',500, 'http://4.bp.blogspot.com/-Pj2VNlWnXnk/Ux0mT9ZSCMI/AAAAAAAABwg/gL7K0EyU4gQ/s1600/Torta+Mario+Bros.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque baloons',500, 'http://3.bp.blogspot.com/-Wjp9f0KMCFE/Tx8mLN52e7I/AAAAAAAAAOw/nXBh77DdNko/s1600/DSC01141.JPG');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque flores',500, 'http://delosfalla.com/wp-content/uploads/2012/11/PonqueFloral_Banner.jpg');
insert into PRODUCTENTITY ( name, price,image) values ('Ponque pan',500, 'https://www.cascabel.com/Compra/pg80/9829.jpg');


INSERT INTO CATEGORYENTITY(name) values('Pan');
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Casero',1);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Panaderia',1);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Supermercado',1);
INSERT INTO CATEGORYENTITY(name) values('Tortas');
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Grande',5);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Mediano',5);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Pequeno',5);
INSERT INTO CATEGORYENTITY(name) values('Postres');
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Dulce',9);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Frio',9);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Caliente',9);
INSERT INTO CATEGORYENTITY(name) values('Ponques');
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Exportacion',13);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Colombiano',13);
INSERT INTO CATEGORYENTITY(name, parentcategory_id) values('Fiestas',13);

insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (1, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (2, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (3, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (4, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (5, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (6, 2);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (1, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (2, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (3, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (4, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (5, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (6, 3);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (1, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (2, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (3, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (4, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (5, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (6, 4);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (7, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (8, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (9, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (10, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (11, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (12, 6);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (7, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (8, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (9, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (10, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (11, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (12, 7);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (7, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (8, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (9, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (10, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (11, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (12, 8);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (13, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (14, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (15, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (16, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (17, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (18, 10);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (13, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (14, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (15, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (16, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (17, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (18, 11);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (13, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (14, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (15, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (16, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (17, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (18, 12);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (19, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (20, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (21, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (22, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (23, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (24, 14);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (19, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (20, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (21, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (22, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (23, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (24, 15);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (19, 16);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (20, 16);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (21, 16);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (22, 16);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (23, 16);
insert into PRODUCTENTITY_CATEGORYENTITY (productentity_id, category_id) values (24, 16);