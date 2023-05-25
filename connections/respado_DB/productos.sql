-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2023 at 12:46 AM
-- Server version: 10.11.3-MariaDB-1:10.11.3+maria~ubu2204
-- PHP Version: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `producto_id` bigint(4) NOT NULL,
  `foto_producto` varchar(50) NOT NULL,
  `producto_nombre` varchar(200) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria` varchar(20) NOT NULL,
  `producto_precio` float(7,2) DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`producto_id`, `foto_producto`, `producto_nombre`, `descripcion`, `categoria`, `producto_precio`, `cantidad`) VALUES
(12, 'camara1.jpg', 'Logitech C270', 'Tecnología fluid crystal\r\nMuy conveniente\r\nVídeo más fluido, imágenes más nítidas, colores más vivos y sonido más claro en condiciones reales\r\nSonido claro, se le escuchará alto y claro gracias al micrófono integrado que reduce el ruido de fondo', 'computo', 348.00, 10),
(13, 'camara2.jpg', 'Logitech StreamCam', 'Con una calidad de imagen impecable, dos micrófonos con orientación frontal, versátiles opciones de montaje y conectividad USB-C, es la cámara perfecta para la difusión en tus plataformas favoritas: sólo tienes que mostrarte tal como eres.', 'computo', 3430.00, 30),
(14, 'camara3.jpg', 'SUPCAM Cámara web 4K', 'La cámara web para computadora SUPCAM proporciona una salida de imagen de calidad profesional 4K, cuenta con una resolución de hasta 3840 x 2160. Lente antirreflejos de 4 capas que captura los detalles más claros, perfecto para videoconferencias en línea o transmisión en vivo.', 'computo', 379.00, 30),
(15, 'camara4.jpg', 'Asus Webcam C3', 'Salida de vídeo nítida FHD (1920 x 1080) a 30 fps suave\r\nReduce eficazmente el ruido ambiental para videollamadas nítidas, incluso mientras juegas\r\nClip ajustable de inclinación de 90° que se adapta a una variedad de pantallas de portátiles y monitores de escritorio, y el mecanismo de rotación de 360° permite ángulos flexibles de la cámara', 'computo', 705.00, 20),
(16, 'cell1.jpg', 'Xiaomi Celular 10C NFC ', 'Procesador Snapdragon 680\r\nAlmacenamiento 128 GB\r\nMemoria del sistema 4 GB\r\nPantalla LCD IPS 6,7”\r\nSistema operativo MIUI 13 basado en Android 11\r\nDual SIM, nano-SIM (No incluye tarjeta SIM)', 'telefonia', 468.00, 10),
(17, 'cell2.jpg', 'motorola Moto G22', 'Motorola Moto G22 128 GB/4 GB RAM Dual SIM, color negro', 'telefonia', 699.00, 15),
(18, 'cell3.jpg', 'Xiaomi Celular Redmi Note 10S', 'Pantalla AMOLED de 6.43\".\r\nTiene 4 cámaras traseras de 64Mpx/8Mpx/2Mpx/2Mpx.\r\nCámara delantera de 13Mpx.\r\nProcesador MediaTek Helio G95 Octa-Core de 2.05GHz con 6GB de RAM.\r\nBatería de 5000mAh.', 'telefonia', 872.00, 32),
(19, 'tv1.jpg', 'Hisense Pantalla 50\"', '4K UHD: Resolución 4 veces mayor que los televisores Full HD. Disfruta de un maratón de tus series favoritas, encuentra los últimos estrenos o sumérgete en cada momento de tu juego favorito.', 'hogar', 327.00, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
