/*
 Navicat Premium Data Transfer

 Source Server         : Main
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.32.129:3306
 Source Schema         : sks_part

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 29/09/2022 14:36:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_good
-- ----------------------------
DROP TABLE IF EXISTS `t_good`;
CREATE TABLE `t_good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_good
-- ----------------------------
INSERT INTO `t_good` VALUES (1, 185);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1430 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1115, 137, 1);
INSERT INTO `t_order` VALUES (1116, 308, 1);
INSERT INTO `t_order` VALUES (1117, 95, 1);
INSERT INTO `t_order` VALUES (1118, 183, 1);
INSERT INTO `t_order` VALUES (1119, 299, 1);
INSERT INTO `t_order` VALUES (1120, 373, 1);
INSERT INTO `t_order` VALUES (1121, 52, 1);
INSERT INTO `t_order` VALUES (1122, 187, 1);
INSERT INTO `t_order` VALUES (1123, 473, 1);
INSERT INTO `t_order` VALUES (1124, 289, 1);
INSERT INTO `t_order` VALUES (1125, 392, 1);
INSERT INTO `t_order` VALUES (1126, 330, 1);
INSERT INTO `t_order` VALUES (1127, 487, 1);
INSERT INTO `t_order` VALUES (1128, 398, 1);
INSERT INTO `t_order` VALUES (1129, 36, 1);
INSERT INTO `t_order` VALUES (1130, 205, 1);
INSERT INTO `t_order` VALUES (1131, 300, 1);
INSERT INTO `t_order` VALUES (1132, 210, 1);
INSERT INTO `t_order` VALUES (1133, 114, 1);
INSERT INTO `t_order` VALUES (1134, 475, 1);
INSERT INTO `t_order` VALUES (1135, 160, 1);
INSERT INTO `t_order` VALUES (1136, 197, 1);
INSERT INTO `t_order` VALUES (1137, 14, 1);
INSERT INTO `t_order` VALUES (1138, 376, 1);
INSERT INTO `t_order` VALUES (1139, 207, 1);
INSERT INTO `t_order` VALUES (1140, 274, 1);
INSERT INTO `t_order` VALUES (1141, 39, 1);
INSERT INTO `t_order` VALUES (1142, 56, 1);
INSERT INTO `t_order` VALUES (1143, 58, 1);
INSERT INTO `t_order` VALUES (1144, 189, 1);
INSERT INTO `t_order` VALUES (1145, 225, 1);
INSERT INTO `t_order` VALUES (1146, 157, 1);
INSERT INTO `t_order` VALUES (1147, 96, 1);
INSERT INTO `t_order` VALUES (1148, 419, 1);
INSERT INTO `t_order` VALUES (1149, 149, 1);
INSERT INTO `t_order` VALUES (1150, 492, 1);
INSERT INTO `t_order` VALUES (1151, 211, 1);
INSERT INTO `t_order` VALUES (1152, 192, 1);
INSERT INTO `t_order` VALUES (1153, 387, 1);
INSERT INTO `t_order` VALUES (1154, 10, 1);
INSERT INTO `t_order` VALUES (1155, 230, 1);
INSERT INTO `t_order` VALUES (1156, 287, 1);
INSERT INTO `t_order` VALUES (1157, 336, 1);
INSERT INTO `t_order` VALUES (1158, 1, 1);
INSERT INTO `t_order` VALUES (1159, 221, 1);
INSERT INTO `t_order` VALUES (1160, 50, 1);
INSERT INTO `t_order` VALUES (1161, 337, 1);
INSERT INTO `t_order` VALUES (1162, 414, 1);
INSERT INTO `t_order` VALUES (1163, 391, 1);
INSERT INTO `t_order` VALUES (1164, 115, 1);
INSERT INTO `t_order` VALUES (1165, 422, 1);
INSERT INTO `t_order` VALUES (1166, 222, 1);
INSERT INTO `t_order` VALUES (1167, 314, 1);
INSERT INTO `t_order` VALUES (1168, 130, 1);
INSERT INTO `t_order` VALUES (1169, 148, 1);
INSERT INTO `t_order` VALUES (1170, 443, 1);
INSERT INTO `t_order` VALUES (1171, 195, 1);
INSERT INTO `t_order` VALUES (1172, 219, 1);
INSERT INTO `t_order` VALUES (1173, 70, 1);
INSERT INTO `t_order` VALUES (1174, 280, 1);
INSERT INTO `t_order` VALUES (1175, 144, 1);
INSERT INTO `t_order` VALUES (1176, 416, 1);
INSERT INTO `t_order` VALUES (1177, 294, 1);
INSERT INTO `t_order` VALUES (1178, 433, 1);
INSERT INTO `t_order` VALUES (1179, 402, 1);
INSERT INTO `t_order` VALUES (1180, 49, 1);
INSERT INTO `t_order` VALUES (1181, 202, 1);
INSERT INTO `t_order` VALUES (1182, 212, 1);
INSERT INTO `t_order` VALUES (1183, 3, 1);
INSERT INTO `t_order` VALUES (1184, 417, 1);
INSERT INTO `t_order` VALUES (1185, 208, 1);
INSERT INTO `t_order` VALUES (1186, 241, 1);
INSERT INTO `t_order` VALUES (1187, 491, 1);
INSERT INTO `t_order` VALUES (1188, 283, 1);
INSERT INTO `t_order` VALUES (1189, 468, 1);
INSERT INTO `t_order` VALUES (1190, 33, 1);
INSERT INTO `t_order` VALUES (1191, 200, 1);
INSERT INTO `t_order` VALUES (1192, 397, 1);
INSERT INTO `t_order` VALUES (1193, 281, 1);
INSERT INTO `t_order` VALUES (1194, 54, 1);
INSERT INTO `t_order` VALUES (1195, 90, 1);
INSERT INTO `t_order` VALUES (1196, 369, 1);
INSERT INTO `t_order` VALUES (1197, 237, 1);
INSERT INTO `t_order` VALUES (1198, 335, 1);
INSERT INTO `t_order` VALUES (1199, 262, 1);
INSERT INTO `t_order` VALUES (1200, 127, 1);
INSERT INTO `t_order` VALUES (1201, 42, 1);
INSERT INTO `t_order` VALUES (1202, 358, 1);
INSERT INTO `t_order` VALUES (1203, 31, 1);
INSERT INTO `t_order` VALUES (1204, 312, 1);
INSERT INTO `t_order` VALUES (1205, 179, 1);
INSERT INTO `t_order` VALUES (1206, 68, 1);
INSERT INTO `t_order` VALUES (1207, 65, 1);
INSERT INTO `t_order` VALUES (1208, 234, 1);
INSERT INTO `t_order` VALUES (1209, 172, 1);
INSERT INTO `t_order` VALUES (1210, 323, 1);
INSERT INTO `t_order` VALUES (1211, 275, 1);
INSERT INTO `t_order` VALUES (1212, 393, 1);
INSERT INTO `t_order` VALUES (1213, 347, 1);
INSERT INTO `t_order` VALUES (1214, 57, 1);
INSERT INTO `t_order` VALUES (1215, 244, 1);
INSERT INTO `t_order` VALUES (1216, 496, 1);
INSERT INTO `t_order` VALUES (1217, 353, 1);
INSERT INTO `t_order` VALUES (1218, 28, 1);
INSERT INTO `t_order` VALUES (1219, 229, 1);
INSERT INTO `t_order` VALUES (1220, 436, 1);
INSERT INTO `t_order` VALUES (1221, 341, 1);
INSERT INTO `t_order` VALUES (1222, 0, 1);
INSERT INTO `t_order` VALUES (1223, 432, 1);
INSERT INTO `t_order` VALUES (1224, 253, 1);
INSERT INTO `t_order` VALUES (1225, 449, 1);
INSERT INTO `t_order` VALUES (1226, 9, 1);
INSERT INTO `t_order` VALUES (1227, 251, 1);
INSERT INTO `t_order` VALUES (1228, 424, 1);
INSERT INTO `t_order` VALUES (1229, 85, 1);
INSERT INTO `t_order` VALUES (1230, 109, 1);
INSERT INTO `t_order` VALUES (1231, 176, 1);
INSERT INTO `t_order` VALUES (1232, 194, 1);
INSERT INTO `t_order` VALUES (1233, 381, 1);
INSERT INTO `t_order` VALUES (1234, 138, 1);
INSERT INTO `t_order` VALUES (1235, 7, 1);
INSERT INTO `t_order` VALUES (1236, 178, 1);
INSERT INTO `t_order` VALUES (1237, 269, 1);
INSERT INTO `t_order` VALUES (1238, 359, 1);
INSERT INTO `t_order` VALUES (1239, 12, 1);
INSERT INTO `t_order` VALUES (1240, 434, 1);
INSERT INTO `t_order` VALUES (1241, 384, 1);
INSERT INTO `t_order` VALUES (1242, 357, 1);
INSERT INTO `t_order` VALUES (1243, 139, 1);
INSERT INTO `t_order` VALUES (1244, 380, 1);
INSERT INTO `t_order` VALUES (1245, 367, 1);
INSERT INTO `t_order` VALUES (1246, 439, 1);
INSERT INTO `t_order` VALUES (1247, 2, 1);
INSERT INTO `t_order` VALUES (1248, 415, 1);
INSERT INTO `t_order` VALUES (1249, 134, 1);
INSERT INTO `t_order` VALUES (1250, 88, 1);
INSERT INTO `t_order` VALUES (1251, 22, 1);
INSERT INTO `t_order` VALUES (1252, 470, 1);
INSERT INTO `t_order` VALUES (1253, 431, 1);
INSERT INTO `t_order` VALUES (1254, 309, 1);
INSERT INTO `t_order` VALUES (1255, 182, 1);
INSERT INTO `t_order` VALUES (1256, 254, 1);
INSERT INTO `t_order` VALUES (1257, 162, 1);
INSERT INTO `t_order` VALUES (1258, 458, 1);
INSERT INTO `t_order` VALUES (1259, 382, 1);
INSERT INTO `t_order` VALUES (1260, 19, 1);
INSERT INTO `t_order` VALUES (1261, 363, 1);
INSERT INTO `t_order` VALUES (1262, 35, 1);
INSERT INTO `t_order` VALUES (1263, 113, 1);
INSERT INTO `t_order` VALUES (1264, 313, 1);
INSERT INTO `t_order` VALUES (1265, 385, 1);
INSERT INTO `t_order` VALUES (1266, 371, 1);
INSERT INTO `t_order` VALUES (1267, 456, 1);
INSERT INTO `t_order` VALUES (1268, 270, 1);
INSERT INTO `t_order` VALUES (1269, 467, 1);
INSERT INTO `t_order` VALUES (1270, 306, 1);
INSERT INTO `t_order` VALUES (1271, 388, 1);
INSERT INTO `t_order` VALUES (1272, 63, 1);
INSERT INTO `t_order` VALUES (1273, 263, 1);
INSERT INTO `t_order` VALUES (1274, 484, 1);
INSERT INTO `t_order` VALUES (1275, 125, 1);
INSERT INTO `t_order` VALUES (1276, 332, 1);
INSERT INTO `t_order` VALUES (1277, 142, 1);
INSERT INTO `t_order` VALUES (1278, 390, 1);
INSERT INTO `t_order` VALUES (1279, 18, 1);
INSERT INTO `t_order` VALUES (1280, 48, 1);
INSERT INTO `t_order` VALUES (1281, 295, 1);
INSERT INTO `t_order` VALUES (1282, 334, 1);
INSERT INTO `t_order` VALUES (1283, 320, 1);
INSERT INTO `t_order` VALUES (1284, 307, 1);
INSERT INTO `t_order` VALUES (1285, 268, 1);
INSERT INTO `t_order` VALUES (1286, 318, 1);
INSERT INTO `t_order` VALUES (1287, 399, 1);
INSERT INTO `t_order` VALUES (1288, 288, 1);
INSERT INTO `t_order` VALUES (1289, 266, 1);
INSERT INTO `t_order` VALUES (1290, 218, 1);
INSERT INTO `t_order` VALUES (1291, 441, 1);
INSERT INTO `t_order` VALUES (1292, 106, 1);
INSERT INTO `t_order` VALUES (1293, 319, 1);
INSERT INTO `t_order` VALUES (1294, 163, 1);
INSERT INTO `t_order` VALUES (1295, 181, 1);
INSERT INTO `t_order` VALUES (1296, 426, 1);
INSERT INTO `t_order` VALUES (1297, 34, 1);
INSERT INTO `t_order` VALUES (1298, 351, 1);
INSERT INTO `t_order` VALUES (1299, 315, 1);
INSERT INTO `t_order` VALUES (1300, 174, 1);
INSERT INTO `t_order` VALUES (1301, 279, 1);
INSERT INTO `t_order` VALUES (1302, 486, 1);
INSERT INTO `t_order` VALUES (1303, 55, 1);
INSERT INTO `t_order` VALUES (1304, 104, 1);
INSERT INTO `t_order` VALUES (1305, 191, 1);
INSERT INTO `t_order` VALUES (1306, 15, 1);
INSERT INTO `t_order` VALUES (1307, 213, 1);
INSERT INTO `t_order` VALUES (1308, 423, 1);
INSERT INTO `t_order` VALUES (1309, 89, 1);
INSERT INTO `t_order` VALUES (1310, 271, 1);
INSERT INTO `t_order` VALUES (1311, 401, 1);
INSERT INTO `t_order` VALUES (1312, 316, 1);
INSERT INTO `t_order` VALUES (1313, 238, 1);
INSERT INTO `t_order` VALUES (1314, 153, 1);
INSERT INTO `t_order` VALUES (1315, 243, 1);
INSERT INTO `t_order` VALUES (1316, 173, 1);
INSERT INTO `t_order` VALUES (1317, 360, 1);
INSERT INTO `t_order` VALUES (1318, 186, 1);
INSERT INTO `t_order` VALUES (1319, 72, 1);
INSERT INTO `t_order` VALUES (1320, 326, 1);
INSERT INTO `t_order` VALUES (1321, 395, 1);
INSERT INTO `t_order` VALUES (1322, 158, 1);
INSERT INTO `t_order` VALUES (1323, 317, 1);
INSERT INTO `t_order` VALUES (1324, 128, 1);
INSERT INTO `t_order` VALUES (1325, 86, 1);
INSERT INTO `t_order` VALUES (1326, 498, 1);
INSERT INTO `t_order` VALUES (1327, 485, 1);
INSERT INTO `t_order` VALUES (1328, 310, 1);
INSERT INTO `t_order` VALUES (1329, 227, 1);
INSERT INTO `t_order` VALUES (1330, 151, 1);
INSERT INTO `t_order` VALUES (1331, 93, 1);
INSERT INTO `t_order` VALUES (1332, 41, 1);
INSERT INTO `t_order` VALUES (1333, 124, 1);
INSERT INTO `t_order` VALUES (1334, 472, 1);
INSERT INTO `t_order` VALUES (1335, 76, 1);
INSERT INTO `t_order` VALUES (1336, 333, 1);
INSERT INTO `t_order` VALUES (1337, 448, 1);
INSERT INTO `t_order` VALUES (1338, 356, 1);
INSERT INTO `t_order` VALUES (1339, 408, 1);
INSERT INTO `t_order` VALUES (1340, 92, 1);
INSERT INTO `t_order` VALUES (1341, 235, 1);
INSERT INTO `t_order` VALUES (1342, 101, 1);
INSERT INTO `t_order` VALUES (1343, 413, 1);
INSERT INTO `t_order` VALUES (1344, 143, 1);
INSERT INTO `t_order` VALUES (1345, 232, 1);
INSERT INTO `t_order` VALUES (1346, 292, 1);
INSERT INTO `t_order` VALUES (1347, 108, 1);
INSERT INTO `t_order` VALUES (1348, 73, 1);
INSERT INTO `t_order` VALUES (1349, 464, 1);
INSERT INTO `t_order` VALUES (1350, 277, 1);
INSERT INTO `t_order` VALUES (1351, 457, 1);
INSERT INTO `t_order` VALUES (1352, 228, 1);
INSERT INTO `t_order` VALUES (1353, 462, 1);
INSERT INTO `t_order` VALUES (1354, 100, 1);
INSERT INTO `t_order` VALUES (1355, 311, 1);
INSERT INTO `t_order` VALUES (1356, 147, 1);
INSERT INTO `t_order` VALUES (1357, 428, 1);
INSERT INTO `t_order` VALUES (1358, 403, 1);
INSERT INTO `t_order` VALUES (1359, 25, 1);
INSERT INTO `t_order` VALUES (1360, 170, 1);
INSERT INTO `t_order` VALUES (1361, 120, 1);
INSERT INTO `t_order` VALUES (1362, 220, 1);
INSERT INTO `t_order` VALUES (1363, 329, 1);
INSERT INTO `t_order` VALUES (1364, 290, 1);
INSERT INTO `t_order` VALUES (1365, 204, 1);
INSERT INTO `t_order` VALUES (1366, 345, 1);
INSERT INTO `t_order` VALUES (1367, 165, 1);
INSERT INTO `t_order` VALUES (1368, 248, 1);
INSERT INTO `t_order` VALUES (1369, 249, 1);
INSERT INTO `t_order` VALUES (1370, 377, 1);
INSERT INTO `t_order` VALUES (1371, 257, 1);
INSERT INTO `t_order` VALUES (1372, 217, 1);
INSERT INTO `t_order` VALUES (1373, 303, 1);
INSERT INTO `t_order` VALUES (1374, 121, 1);
INSERT INTO `t_order` VALUES (1375, 366, 1);
INSERT INTO `t_order` VALUES (1376, 123, 1);
INSERT INTO `t_order` VALUES (1377, 405, 1);
INSERT INTO `t_order` VALUES (1378, 4, 1);
INSERT INTO `t_order` VALUES (1379, 297, 1);
INSERT INTO `t_order` VALUES (1380, 412, 1);
INSERT INTO `t_order` VALUES (1381, 476, 1);
INSERT INTO `t_order` VALUES (1382, 258, 1);
INSERT INTO `t_order` VALUES (1383, 374, 1);
INSERT INTO `t_order` VALUES (1384, 99, 1);
INSERT INTO `t_order` VALUES (1385, 105, 1);
INSERT INTO `t_order` VALUES (1386, 495, 1);
INSERT INTO `t_order` VALUES (1387, 267, 1);
INSERT INTO `t_order` VALUES (1388, 490, 1);
INSERT INTO `t_order` VALUES (1389, 260, 1);
INSERT INTO `t_order` VALUES (1390, 429, 1);
INSERT INTO `t_order` VALUES (1391, 188, 1);
INSERT INTO `t_order` VALUES (1392, 140, 1);
INSERT INTO `t_order` VALUES (1393, 500, 1);
INSERT INTO `t_order` VALUES (1394, 110, 1);
INSERT INTO `t_order` VALUES (1395, 75, 1);
INSERT INTO `t_order` VALUES (1396, 410, 1);
INSERT INTO `t_order` VALUES (1397, 252, 1);
INSERT INTO `t_order` VALUES (1398, 116, 1);
INSERT INTO `t_order` VALUES (1399, 463, 1);
INSERT INTO `t_order` VALUES (1400, 349, 1);
INSERT INTO `t_order` VALUES (1401, 400, 1);
INSERT INTO `t_order` VALUES (1402, 362, 1);
INSERT INTO `t_order` VALUES (1403, 437, 1);
INSERT INTO `t_order` VALUES (1404, 478, 1);
INSERT INTO `t_order` VALUES (1405, 214, 1);
INSERT INTO `t_order` VALUES (1406, 196, 1);
INSERT INTO `t_order` VALUES (1407, 203, 1);
INSERT INTO `t_order` VALUES (1408, 372, 1);
INSERT INTO `t_order` VALUES (1409, 21, 1);
INSERT INTO `t_order` VALUES (1410, 74, 1);
INSERT INTO `t_order` VALUES (1411, 111, 1);
INSERT INTO `t_order` VALUES (1412, 246, 1);
INSERT INTO `t_order` VALUES (1413, 261, 1);
INSERT INTO `t_order` VALUES (1414, 466, 1);
INSERT INTO `t_order` VALUES (1415, 301, 1);
INSERT INTO `t_order` VALUES (1416, 155, 1);
INSERT INTO `t_order` VALUES (1417, 118, 1);
INSERT INTO `t_order` VALUES (1418, 46, 1);
INSERT INTO `t_order` VALUES (1419, 91, 1);
INSERT INTO `t_order` VALUES (1420, 365, 1);
INSERT INTO `t_order` VALUES (1421, 27, 1);
INSERT INTO `t_order` VALUES (1422, 480, 1);
INSERT INTO `t_order` VALUES (1423, 453, 1);
INSERT INTO `t_order` VALUES (1424, 324, 1);
INSERT INTO `t_order` VALUES (1425, 83, 1);
INSERT INTO `t_order` VALUES (1426, 156, 1);
INSERT INTO `t_order` VALUES (1427, 368, 1);
INSERT INTO `t_order` VALUES (1428, 250, 1);
INSERT INTO `t_order` VALUES (1429, 60, 1);

SET FOREIGN_KEY_CHECKS = 1;
