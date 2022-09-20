-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 10:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudrh`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pelicula', 7, 'add_pelicula'),
(26, 'Can change pelicula', 7, 'change_pelicula'),
(27, 'Can delete pelicula', 7, 'delete_pelicula'),
(28, 'Can view pelicula', 7, 'view_pelicula');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$eyaXCA5FSYU83xpml4WIUX$CK0aLcvhYvWCIqQ7jrj2VSUx+JmsywE80wLNvTmw3lc=', '2022-09-20 03:52:02.705182', 1, 'pedro', '', '', 'pedroarrieta25@hotmail.com', 1, 1, '2022-09-20 03:50:45.871714');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-20 03:52:57.852895', '1', 'Pelicula object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-09-20 04:02:55.744870', '1', 'Titulo: Matrix - Descripcion: Matrix Matrix Matrix', 3, '', 7, 1),
(3, '2022-09-20 04:16:06.712108', '2', 'Titulo: DeadPool - Descripcion: Un antiheroe, repartiendo alegria', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-09-20 04:16:35.033383', '3', 'Titulo: Diario de una Pasion - Descripcion: El verdadero amor', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-09-20 04:17:48.491610', '4', 'Titulo: El lobo de wallstreet - Descripcion: Educacion financiera y algo mas', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-09-20 04:18:55.234017', '5', 'Titulo: Harry Potter - Descripcion: La magia existe, mientras ves la pelicula.', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-09-20 04:19:45.895518', '6', 'Titulo: Gran Torino - Descripcion: Un caballero muy amable', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-09-20 04:21:02.744479', '7', 'Titulo: Zombieland - Descripcion: zuckerberg luchando con zombies', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-09-20 04:22:13.340033', '8', 'Titulo: La lista de Schindler - Descripcion: Una obra de arte', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-09-20 04:23:02.790996', '9', 'Titulo: El sexto sentido - Descripcion: Terror de verdad, final increible', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-09-20 04:24:31.333685', '10', 'Titulo: Blood and Bone - Descripcion: kimbo slice ... xq nos dejaste :(', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'libreria', 'pelicula'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-20 03:43:55.913905'),
(2, 'auth', '0001_initial', '2022-09-20 03:43:56.160904'),
(3, 'admin', '0001_initial', '2022-09-20 03:43:56.223904'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-20 03:43:56.231905'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-20 03:43:56.239905'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-20 03:43:56.278911'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-20 03:43:56.314905'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-20 03:43:56.329904'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-20 03:43:56.338902'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-20 03:43:56.364905'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-20 03:43:56.368904'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-20 03:43:56.378906'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-20 03:43:56.391904'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-20 03:43:56.403910'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-20 03:43:56.416907'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-20 03:43:56.424905'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-20 03:43:56.436907'),
(18, 'libreria', '0001_initial', '2022-09-20 03:43:56.447908'),
(19, 'sessions', '0001_initial', '2022-09-20 03:43:56.468907');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8siz24ldvd7b7uc828mlp43ajryo92g4', '.eJxVjLsOAiEURP-F2hDgClws7f0GwuUhqwaSZbcy_ru7yRbaTDHnzLyZD-tS_Try7KfELkyy029HIT5z20F6hHbvPPa2zBPxXeEHHfzWU35dD_fvoIZRt3VBo8lEEiichhKtEgDJKASRbUSNWgqZcAtHhiRl6xTmYuFcdDIC2OcLu482ug:1oaUIk:ERAolOaIMCR1V6TOJUkzl0Z6fQ0CiAzKfRlV477V_6Q', '2022-10-04 03:52:02.707150');

-- --------------------------------------------------------

--
-- Table structure for table `libreria_pelicula`
--

CREATE TABLE `libreria_pelicula` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libreria_pelicula`
--

INSERT INTO `libreria_pelicula` (`id`, `titulo`, `imagen`, `descripcion`) VALUES
(3, 'Diario de una Pasion', 'imagenes/20070878.jpg-c_310_420_x-f_jpg-q_x-xxyxx.jpg', 'El verdadero amor'),
(4, 'El lobo de wallstreet', 'imagenes/21061596_20131129121836144.jpg', 'Educacion financiera y algo mas'),
(5, 'Harry Potter', 'imagenes/592219.jpg', 'La magia existe, mientras ves la pelicula.'),
(6, 'Gran Torino', 'imagenes/Gran_Torino-278262332-large.jpg', 'Un caballero muy amable'),
(7, 'Zombieland', 'imagenes/Zombieland_Mata_y_remata-674365283-mmed.jpg', 'zuckerberg luchando con zombies'),
(8, 'La lista de Schindler', 'imagenes/share.jfif', 'Una obra de arte'),
(9, 'El sexto sentido', 'imagenes/El_sexto_sentido-351070748-large.jpg', 'Terror de verdad, final increible'),
(10, 'Blood and Bone', 'imagenes/Blood_and_Bone.jpg', 'kimbo slice ... xq nos dejaste :('),
(11, 'Matrix', 'imagenes/Matrix-155050517-large.jpg', 'vivimos en una matrix?'),
(12, 'DeadPool', 'imagenes/au_movie_disney_plus_star_deadpool_poster_bd8b72b7.jpeg', 'Un antiheroe, repartiendo alegria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `libreria_pelicula`
--
ALTER TABLE `libreria_pelicula`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `libreria_pelicula`
--
ALTER TABLE `libreria_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
