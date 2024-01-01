use db_webapi; 

INSERT tb_products (productId, productName) VALUES (1, 'Quần Đùi Luis Vuitt');

INSERT tb_products (productId, productName) VALUES (2, 'Áo Đi Biển Cá Tính');

INSERT tb_properties (propertyId, productId, propertyName, propertySort) VALUES (1, 1, 'Size', 1);

INSERT tb_properties (propertyId, productId, propertyName, propertySort) VALUES (2, 1, 'Color', 2);

INSERT tb_properties (propertyId, productId, propertyName, propertySort) VALUES (3, 1, 'Desig', 3);

INSERT tb_properties (propertyId, productId, propertyName, propertySort) VALUES (4, 2, 'Size', 1);

INSERT tb_properties (propertyId, productId, propertyName, propertySort) VALUES (5, 2, 'Color', 2);

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (1, 1, 'S', 'Size S');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (2, 1, 'M', 'Size M');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (3, 1, 'L', 'Size L');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (4, 1, 'XL', 'Size Xl');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (5, 2, 'RED', 'Màu Đỏ');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (6, 2, 'GREE', 'Màu Xanh Lá Cây');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (7, 2, 'BLUE', 'Màu Xanh Da Trời');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (8, 3, 'CARO', 'Kẻ Ca Rô');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (9, 3, 'Flower', 'Hoa Lá');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (10, 4, 'S', 'Size S');
INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (11, 4, 'L', 'Size L');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (12, 5, 'White', 'Màu Trắng');

INSERT tb_propertyDetails (propertyDetailId, propertyId,  propertyDetailCode, propertyDetailDetail) VALUES (13, 5, 'Pink', 'Màu Hồng');

  

   

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (1, 'Quần Đùi Luis Vuitt Size S', 14, 190000, 319000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (2, 'Quần Đùi Luis Vuitt Size M', 8, 190000, 319000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (3, 'Quần Đùi Luis Vuitt Size L', 11, 190000, 319000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (4, 'Quần Đùi Luis Vuitt Size XL', 12, 209000, 350000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (5, 'Quần Đùi Luis Vuitt Size S Màu Đỏ', 5, 190000, 319000, 1);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (6, 'Quần Đùi Luis Vuitt Size S Màu Xanh Lá Cây', 4, 190000, 319000, 1);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (7, 'Quần Đùi Luis Vuitt Size S Màu Xanh Da Trời', 5, 190000, 319000, 1);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (8, 'Quần Đùi Luis Vuitt Size M Màu Đỏ', 2, 190000, 319000, 2);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (9, 'Quần Đùi Luis Vuitt Size M Màu Xanh Lá Cây', 5, 190000, 319000, 2);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (10, 'Quần Đùi Luis Vuitt Size M Màu Xanh Da Trời', 1, 190000, 319000, 2);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (11, 'Quần Đùi Luis Vuitt Size L Màu Đỏ', 6, 190000, 319000, 3);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (12, 'Quần Đùi Luis Vuitt Size L Màu Xanh Lá Cây', 2, 190000, 319000, 3);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (13, 'Quần Đùi Luis Vuitt Size L Màu Xanh Da Trời', 3, 190000, 319000, 3);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (14, 'Quần Đùi Luis Vuitt Size XL Màu Đỏ', 2, 209000, 350000, 4);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (15, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Lá Cây', 7, 209000, 350000, 4);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (16, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Da Trời', 3, 209000, 350000, 4);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (17, 'Quần Đùi Luis Vuitt Size S Màu Đỏ Kẻ Ca Rô', 3, 190000, 319000, 5);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (18, 'Quần Đùi Luis Vuitt Size S Màu Đỏ Hoa Lá', 2, 190000, 319000, 5);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (19, 'Quần Đùi Luis Vuitt Size S Màu Xanh Lá Cây Kẻ Ca Rô', 1, 190000, 319000, 6);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (20, 'Quần Đùi Luis Vuitt Size S Màu Xanh Lá Cây Hoa Lá', 3, 190000, 319000, 6);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (21, 'Quần Đùi Luis Vuitt Size S Màu Xanh Da Trời Kẻ Ca Rô', 5, 190000, 319000, 7);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (22, 'Quần Đùi Luis Vuitt Size S Màu Xanh Da Trời Hoa Lá', 0, 190000, 319000, 7);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (23, 'Quần Đùi Luis Vuitt Size M Màu Đỏ Kẻ Ca Rô', 1, 190000, 319000, 8);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (24, 'Quần Đùi Luis Vuitt Size M Màu Đỏ Hoa Lá', 1, 190000, 319000, 8);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (25, 'Quần Đùi Luis Vuitt Size M Màu Xanh Lá Cây Kẻ Ca Rô', 3, 190000, 319000, 9);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (26, 'Quần Đùi Luis Vuitt Size M Màu Xanh Lá Cây Hoa Lá', 2, 190000, 319000, 9);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (27, 'Quần Đùi Luis Vuitt Size M Màu Xanh Da Trời Kẻ Ca Rô', 1, 190000, 319000, 10);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (28, 'Quần Đùi Luis Vuitt Size M Màu Xanh Da Trời Hoa Lá', 0, 190000, 319000, 10);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (29, 'Quần Đùi Luis Vuitt Size L Màu Đỏ Kẻ Ca Rô', 0, 190000, 319000, 11);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (30, 'Quần Đùi Luis Vuitt Size L Màu Đỏ Hoa Lá', 6, 190000, 319000, 11);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (31, 'Quần Đùi Luis Vuitt Size L Màu Xanh Lá Cây Kẻ Ca Rô', 1, 190000, 319000, 12);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (32, 'Quần Đùi Luis Vuitt Size L Màu Xanh Lá Cây Hoa Lá', 1, 190000, 319000, 12);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (33, 'Quần Đùi Luis Vuitt Size L Màu Xanh Da Trời Kẻ Ca Rô', 1, 190000, 319000, 13);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (34, 'Quần Đùi Luis Vuitt Size L Màu Xanh Da Trời Hoa Lá', 2, 190000, 319000, 13);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (35, 'Quần Đùi Luis Vuitt Size XL Màu Đỏ Kẻ Ca Rô', 1, 209000, 350000, 14);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (36, 'Quần Đùi Luis Vuitt Size XL Màu Đỏ Hoa Lá', 1, 209000, 350000, 14);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (37, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Lá Cây Kẻ Ca Rô', 3, 209000, 350000, 15);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (38, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Lá Cây Hoa Lá', 4, 209000, 350000, 15);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (39, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Da Trời Kẻ Ca Rô', 2, 209000, 350000, 16);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (40, 'Quần Đùi Luis Vuitt Size XL Màu Xanh Da Trời Hoa Lá', 1, 209000, 350000, 16);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (42, 'Áo Đi Biển Cá Tính Size S', 8, 87000, 139000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (43, 'Áo Đi Biển Cá Tính Size L', 25, 90000, 142000, NULL);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (44, 'Áo Đi Biển Cá Tính Size S Màu Trắng', 5, 87000, 139000, 42);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (45, 'Áo Đi Biển Cá Tính Size S Màu Hồng', 3, 87000, 139000, 42);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (46, 'Áo Đi Biển Cá Tính Size L Màu Trắng', 22, 90000, 142000, 43);

INSERT tb_productDetails (productDetailId, productPropertyName, quantity, price, shellPrice, parentId) VALUES (47, 'Áo Đi Biển Cá Tính Size L Màu Hồng', 3, 90000, 142000, 43);
  

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (1, 17, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (2, 17, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (3, 17, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (4, 18, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (5, 18, 5, 1);
INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (6, 18, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (7, 19, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (8, 19, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (9, 19, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (10, 20, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (11, 20, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (12, 20, 9, 1);
INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (13, 21, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (14, 21, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (15, 21, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (16, 22, 1, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (17, 22, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (18, 22, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (19, 23, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (20, 23, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (21, 23, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (22, 24, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (23, 24, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (24, 24, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (25, 25, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (26, 25, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (27, 25, 8, 1);
INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (28, 26, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (29, 26, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (30, 26, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (31, 27, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (32, 27, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (33, 27, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (34, 28, 2, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (35, 28, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (36, 28, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (37, 29, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (38, 29, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (39, 29, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (40, 30, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (42, 30, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (43, 30, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (44, 31, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (45, 31, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (46, 31, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (47, 32, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (48, 32, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (49, 32, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (50, 33, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (51, 33, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (52, 33, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (53, 34, 3, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (54, 34, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (55, 34, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (56, 35, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (57, 35, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (58, 35, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (59, 36, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (60, 36, 5, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (61, 36, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (62, 37, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (63, 37, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (64, 37, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (65, 38, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (66, 38, 6, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (67, 38, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (68, 39, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (69, 39, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (70, 39, 8, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (71, 40, 4, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (72, 40, 7, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (73, 40, 9, 1);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (74, 44, 10, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (75, 44, 12, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (76, 45, 10, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (77, 45, 13, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (78, 46, 11, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (79, 46, 12, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (80, 47, 11, 2);

INSERT tb_productDetailPropertyDetails (productDetailPropertyDetailId, productDetailId, propertyDetailId, productId) VALUES (81, 47, 13, 2);


