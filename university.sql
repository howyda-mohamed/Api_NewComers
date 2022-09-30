-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 04:56 AM
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
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'أفغانستان', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(2, 'Albania', 'ألبانيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(3, 'Algeria', 'الجزائر', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(4, 'Andorra', 'أندورا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(5, 'Angola', 'أنغولا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(6, 'Anguilla', 'أنغويلا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(7, 'Antigua and Barbuda', 'أنتيغوا وبربودا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(8, 'Argentina', 'الأرجنتين', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(9, 'Armenia', 'أرمينيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(10, 'Aruba', 'أروبا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(11, 'Australia', 'أستراليا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(12, 'Austria', 'النمسا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(13, 'Azerbaijan', 'أذربيجان', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(14, 'Bahamas', 'جزر البهاما', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(15, 'Bahrain', 'البحرين', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(16, 'Bangladesh', 'بنجلاديش', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(17, 'Barbados', 'باربادوس', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(18, 'Belarus', 'بيلاروس', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(19, 'Belgium', 'بلجيكا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(20, 'Belize', 'بيليز', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(21, 'Benin', 'بنين', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(22, 'Bermuda', 'برمودا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(23, 'Bhutan', 'بوتان', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(24, 'Bolivia', 'بوليفيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(25, 'Bosnia and Herzegovina', 'البوسنة والهرسك', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(26, 'Botswana', 'بوتسوانا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(27, 'Brazil', 'البرازيل', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(28, 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(29, 'Brunei', 'بروناي', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(30, 'Bulgaria', 'بلغاريا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(31, 'Burkina Faso', 'بوركينا فاسو', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(32, 'Myanmar', 'ميانمار', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(33, 'Burundi', 'بوروندي', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(34, 'Cambodia', 'كامبوديا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(35, 'Cameroon', 'الكاميرون', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(36, 'Canada', 'كندا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(37, 'Cape Verde', 'الرأس الأخضر', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(38, 'Cayman Islands', 'جزر كايمان', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(39, 'Central African Republic', 'جمهورية أفريقيا الوسطى', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(40, 'Chad', 'تشاد', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(41, 'Christmas Island', 'جزيرة الكريسماس', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(42, 'Cocos (Keeling) Islands', 'جزر الكوكوس (كيلين)', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(43, 'Cook Islands', 'جزر كوك', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(44, 'Chile', 'تشيلي', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(45, 'China', 'الصين', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(46, 'Colombia', 'كولومبيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(47, 'Comoros', 'جزر القمر', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(48, 'Congo', 'الكونغو', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(49, 'Costa Rica', 'كوستاريكا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(50, 'Croatia', 'كرواتيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(51, 'Cuba', 'كوبا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(52, 'Cyprus', 'قبرص', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(53, 'Czech Republic', 'جمهورية التشيك', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(54, 'Denmark', 'الدانمارك', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(55, 'Djibouti', 'جيبوتي', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(56, 'Dominica', 'دومينيكا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(57, 'Dominican Republic', 'جمهورية الدومينيكان', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(58, 'Timor-Leste', 'تيمور الشرقية', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(59, 'Tokelau', 'توكيلاو', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(60, 'Turks and Caicos Islands', 'جزر تركس وكايكوس', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(61, 'Ecuador', 'إكوادور', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(62, 'Egypt', 'مصر', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(63, 'El Salvador', 'السلفادور', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(64, 'Equatorial Guinea', 'غينيا الاستوائية', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(65, 'Eritrea', 'إريتريا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(66, 'Estonia', 'إستونيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(67, 'Ethiopia', 'إثيوبيا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(68, 'Faroe Islands', 'جزر فايرو', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(69, 'Falkland Islands', 'جزر فوكلاند', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(70, 'Fiji', 'جزر فيجي', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(71, 'Finland', 'فنلندا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(72, 'France', 'فرنسا', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(73, 'French Polynesia', 'بولينزيا الفرنسية', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(74, 'Gabon', 'الجابون', '2022-09-11 12:46:57', '2022-09-11 12:46:57'),
(75, 'Gambia', 'جامبيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(76, 'Georgia', 'جورجيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(77, 'Gibraltar', 'جبل طارق', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(78, 'Germany', 'ألمانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(79, 'Ghana', 'غانا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(80, 'Greece', 'اليونان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(81, 'Greenland', 'جرينلاند', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(82, 'Guadeloupe', 'جواديلوب', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(83, 'Grenada', 'غرينادا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(84, 'Guernsey', 'جيرنزي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(85, 'Guatemala', 'جواتيمالا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(86, 'Guam', 'جوام', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(87, 'Guinea', 'غينيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(88, 'Guinea-Bissau', 'غينيا بيساو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(89, 'Guyana', 'جيانا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(90, 'Haiti', 'هايتي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(91, 'Heard Island and McDonald Islands', 'جزيرة هيرد وجزر ماكدونالد', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(92, 'Jordan', 'الأردن', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(93, 'Yemen', 'اليمن', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(94, 'Honduras', 'هندوراس', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(95, 'Hong Kong', 'هونغ كونغ SAR', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(96, 'Hungary', 'المجر', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(97, 'Iceland', 'أيسلندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(98, 'India', 'الهند', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(99, 'Indonesia', 'إندونيسيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(100, 'Iran', 'إيران', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(101, 'Iraq', 'العراق', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(102, 'Ireland', 'أيرلندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(103, 'Isle of Man', 'جزيرة مان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(104, 'Palestine', 'فلسطين', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(105, 'Israel', 'إسرائيل', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(106, 'Italy', 'إيطاليا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(107, 'Ivory Coast', 'كوت ديفوار', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(108, 'Jamaica', 'جامايكا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(109, 'Jersey', 'جيرسي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(110, 'Japan', 'اليابان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(111, 'Kazakhstan', 'كازاخستان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(112, 'Kenya', 'كينيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(113, 'Kiribati', 'كيريباتي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(114, 'North Korea', 'كوريا الشمالية', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(115, 'Kosovo', 'كوسوفو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(116, 'Kuwait', 'الكويت', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(117, 'Kyrgyzstan', 'قيرقيزستان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(118, 'Laos', 'لاوس', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(119, 'Latvia', 'لاتفيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(120, 'Lebanon', 'لبنان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(121, 'Lesotho', 'ليسوتو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(122, 'Liberia', 'ليبيريا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(123, 'Libya', 'ليبيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(124, 'Liechtenstein', 'لختنشتاين', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(125, 'Luxembourg', 'لوكسمبورج', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(126, 'Macedonia', 'مقدونيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(127, 'Madagascar', 'مدغشقر', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(128, 'Marshall Islands', 'جزر مارشال', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(129, 'Macau', 'ماكاو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(130, 'Malawi', 'مالاوي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(131, 'Malaysia', 'ماليزيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(132, 'Maldives', 'جزر المالديف', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(133, 'Mali', 'مالي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(134, 'Malta', 'مالطا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(135, 'Martinique', 'مارتينيك', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(136, 'Mauritania', 'موريتانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(137, 'Mauritius', 'موريشيوس', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(138, 'Mayotte', 'مايوت', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(139, 'Mexico', 'المكسيك', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(140, 'Moldova', 'مولدوفا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(141, 'Mongolia', 'منغوليا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(142, 'Montenegro', 'مونتينيغرو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(143, 'Monaco', 'موناكو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(144, 'Montserrat', 'مونتسيرات', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(145, 'Morocco', 'المغرب', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(146, 'Mozambique', 'موزمبيق', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(147, 'Namibia', 'ناميبيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(148, 'Nauru', 'ناورو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(149, 'Nepal', 'نيبال', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(150, 'Netherlands', 'هولندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(151, 'New Caledonia', 'كاليدونيا الجديدة', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(152, 'New Zealand', 'نيوزيلندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(153, 'Nicaragua', 'نيكاراجوا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(154, 'Niger', 'النيجر', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(155, 'Nigeria', 'نيجيريا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(156, 'Norway', 'النرويج', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(157, 'Niue', 'نيوا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(158, 'Norfolk Island', 'جزيرة نورفوك', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(159, 'Northern Mariana Islands', 'جزر ماريانا الشمالية', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(160, 'Oman', 'عمان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(161, 'Pakistan', 'باكستان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(162, 'Pitcairn', 'جزر البتكارين', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(163, 'Palau', 'بالاو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(164, 'Panama', 'بنما', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(165, 'Papua New Guinea', 'بابوا-غينيا الجديدة', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(166, 'Paraguay', 'باراجواي', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(167, 'Peru', 'بيرو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(168, 'Philippines', 'الفلبين', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(169, 'Poland', 'بولندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(170, 'Portugal', 'البرتغال', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(171, 'Puerto Rico', 'بورتو ريكو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(172, 'South Korea', 'كوريا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(173, 'Lithuania', 'ليتوانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(174, 'Qatar', 'قطر', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(175, 'Romania', 'رومانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(176, 'Russia', 'روسيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(177, 'Rwanda', 'رواندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(178, 'Réunion', 'ريونيون', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(179, 'Samoa', 'ساموا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(180, 'Saint Lucia', 'سانت لوشيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(181, 'San Marino', 'سان مارينو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(182, 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(183, 'Saint Pierre and Miquelon', 'سانت بيير وميكولون', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(184, 'Saint Vincent and the Grenadines', 'سانت فينسنت وجرينادينز', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(185, 'Saudi Arabia', 'السعودية', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(186, 'Senegal', 'السنغال', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(187, 'South Georgia and the South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(188, 'Sao Tome and Principe', 'ساوتوماي وبرينسيبا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(189, 'Sierra Leone', 'سيراليون', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(190, 'Serbia', 'صربيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(191, 'Seychelles', 'سيشل', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(192, 'Singapore', 'سنغافورة', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(193, 'Slovakia', 'سلوفاكيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(194, 'Slovenia', 'سلوفينيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(195, 'Solomon Islands', 'جزر سولومون', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(196, 'Somalia', 'الصومال', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(197, 'South Africa', 'جنوب أفريقيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(198, 'Spain', 'أسبانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(199, 'Sri Lanka', 'سيريلانكا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(200, 'Sudan', 'السودان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(201, 'Suriname', 'سورينام', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(202, 'Swaziland', 'سوازيلاند', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(203, 'Sweden', 'السويد', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(204, 'Switzerland', 'سويسرا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(205, 'Syria', 'سوريا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(206, 'Taiwan', 'تايوان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(207, 'Tanzania', 'تنزانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(208, 'Thailand', 'تايلاند', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(209, 'Togo', 'توجو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(210, 'Tonga', 'تونجا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(211, 'Trinidad and Tobago', 'ترينيداد وتوباجو', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(212, 'Tunisia', 'تونس', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(213, 'Turkey', 'تركيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(214, 'Turkmenistan', 'تركمانستان', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(215, 'Uganda', 'أوغندا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(216, 'Ukraine', 'أوكرانيا', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(217, 'United Arab Emirates', 'الإمارات', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(218, 'United Kingdom', 'المملكة المتحدة', '2022-09-11 12:46:58', '2022-09-11 12:46:58'),
(219, 'United States', 'الولايات المتحدة', '2022-09-11 12:46:58', '2022-09-11 12:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `sub_title_ar` varchar(255) DEFAULT NULL,
  `location_ar` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `sub_title_en` varchar(255) NOT NULL,
  `location_en` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `phone_en` varchar(20) DEFAULT NULL,
  `phone_ar` varchar(20) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `title_en`, `title_ar`, `sub_title_ar`, `location_ar`, `description_ar`, `sub_title_en`, `location_en`, `image`, `phone_en`, `phone_ar`, `description_en`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Faculty of Computer and Information science', 'كليه الحاسبات والمعلومات', 'كليه الحاسبات والمعلومات', '29R2+WQF، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'كلية الحاسبات والمعلومات - جامعة المنصورة مؤسسة تعليمية وبحثية وخدمية تتبنى الابتكار وتؤهل خريجًا معرفيًا ومهاريًا قادرًا على المنافسة في سوق العمل وخدمة المجتمع وفقًا للتطورات العالمية مع الالتزام بمبدأ الأصالة.', 'Faculty of Computer and Information', 'Shar3 El Gomhoreya Mansoura, Dakahlia, Egypt 35516', 'assets/images/faculity/1661039207.png', '050 2234679', '٠٥٠٢٢٣٤٦٧٩', 'Faculty of Computers and Information - Mansoura University is an educational, research and service institution that adopts innovation and qualifies a graduate cognitively and skillfully capable of competing in the labor market and serving the community in accordance with global developments while adhering to the principle of originality ', 'http://csifac.mans.edu.eg/', '2022-08-20 21:46:47', '2022-08-20 21:46:47'),
(2, 'Faculty of Engineering', 'كليه الهندسه', 'كليه الهندسه', 'الجمهوريه، المنصورة، الدقهلية 35516', 'تقدم كلية الهندسة بجامعة المنصورة مهندسين متميزين قادرين على المنافسة محلياً وإقليمياً في الجوانب العلمية والبحثية والأخلاقية وحل مشاكل المجتمع وتنمية موارده في إطار الالتزام بالقواعد التي تحكم المجتمع.', 'Faculty of Engineering', 'Jamhouria, Mansoura, Dakahlia 35516', 'assets/images/faculity/1661039464.jpg', '050 2202247', '٠٥٠٢٢٠٢٢٤٧', 'The Faculty of Engineering at Mansoura University offers distinguished engineers capable of competing locally and regionally in the scientific, research and ethical aspects, solving the problems of society and developing its resources within the framework of adherence to the rules governing society.', 'http://engfac.mans.edu.eg/', '2022-08-20 21:51:04', '2022-08-20 21:51:04'),
(3, 'Faculty of Medicine', 'كليه الطب', 'كليه الطب', 'شارع، الجمهورية، المنصورة (قسم، 2)،، Dakahlia Governorate', 'تمنح كلية الطب بجامعة المنصورة درجة بكالوريوس الطب والجراحة ، حيث يتم تطبيق برنامجين جامعيين بالكلية هما برنامج البكالوريوس التقليدي وبرنامج المنصورة - مانشستر. مدة الدراسة للطلاب الجامعيين ست سنوات أكاديمية.', 'Faculty of Medicine', 'Street, Al Gomhuria, Mansoura (Section, 2), Dakahlia', 'assets/images/faculity/1661039534.jpeg', '2235069(050)', '٠٥٠٢٢٣٥٠٦٩', 'The Faculty of Medicine at Mansoura University awards the degree of Bachelor of Medicine and Surgery, where two undergraduate programs are applied to the college, namely the traditional bachelor\'s program and the Mansoura – Manchester program. The duration of study for undergraduate students is six academic years.', 'http://medfac.mans.edu.eg/', '2022-08-20 21:52:14', '2022-08-20 21:52:14'),
(4, 'Faculty of Pharmacology', 'كليه الصيدله', 'كليه الصيدله', '29R6+74G، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'تأسست الكلية عام 1973 ومدة دراستها خمس سنوات لمنح درجة البكالوريوس فى العلوم الصيدلية وبدأت الكلية كجزء من المبنى المخصص لكلية الطب. ثم تباعا تم تخصيص المباني التعليمية والإدارية للكلية وإنشاؤها في مكانها الحالي.', 'Faculty of Pharmacology', '29R6+74G, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661039607.jpg', '050 2200236', '٠٥٠٢٢٠٠٢٣٦', 'The college was founded in 1973 and the duration of its study is five years to grant a bachelor\'s degree in pharmaceutical sciences and the college began as part of the building dedicated to the Faculty of Medicine. Then successively the educational and administrative buildings of the college were allocated and established in its current place.', 'http://pharfac.mans.edu.eg/index.php?lang=ar', '2022-08-20 21:53:27', '2022-08-20 21:53:27'),
(5, 'Faculty of Agriculture', 'كليه الزراعه', 'كليه الزراعه', '29R4+JJJ، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'كلية الزراعة بجامعة المنصورة مؤسسة تعليمية حكومية ملتزمة بتقديم برامج دراسية لمرحلتي البكالوريوس والدراسات العليا لإعداد الخريجين والباحثين التنافسيين على المستويين المحلي والإقليمي في إطار دورها التنموي والخدمي للمجتمع.', 'Faculty of Agriculture', '29R4+JJJ, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661039691.jpg', '050 2202254', '٠٥٠٢٢٠٢٢٥٤', 'The Faculty of Agriculture at Mansoura University is a government educational institution that is committed to providing study programs for the undergraduate and graduate stages to prepare graduates and competitive researchers at the local and regional levels within the framework of its developmental and service role for society.', 'https://agrfac.mans.edu.eg/', '2022-08-20 21:54:51', '2022-08-20 21:54:51'),
(6, 'Faculty of Science', 'كليه العلوم', 'كليه العلوم', '29R3+QC6، شارع الجمهورية، المنصورة (قسم 2)، الدقهلية, 11432', 'كلية العلوم بجامعة المنصورة هي مؤسسة تعليمية وبحثية حكومية ، تقدم برامج دراسية في العلوم الأساسية لمراحل البكالوريوس والدراسات العليا لإنتاج خريج متميز وبحث علمي متقدم ، لتلبية متطلبات تنمية المجتمع وتحقيق رؤية مصر 2030.', 'Faculty of Science', '29R3+QC6, Al Jumhuriya Street, Mansoura (Section 2), Dakahlia, 11432', 'assets/images/faculity/1661039772.jpg', '050 2202266', '٠٥٠٢٢٠٢٢٦٦', 'The Faculty of Science at Mansoura University is a governmental educational and research institution, offering study programs in basic sciences for the undergraduate and graduate stages to produce a distinguished graduate and advanced scientific research, to meet the requirements of community development and achieve Egypt\'s Vision 2030.', 'https://scifac.mans.edu.eg/', '2022-08-20 21:56:12', '2022-08-20 21:56:12'),
(7, 'Faculty of Arts', 'كليه الاداب', 'كليه الاداب', 'المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', 'تسعى كلية الآداب إلى أن تكون شاملة وملتزمة بالتميز في إعداد خريج قادر على المنافسة في سوق العمل المحلي والعالمي وتفعيل دور البحث العلمي في مختلف المجالات ونشر المعرفة وإنتاجها ، وتطمح لخدمة المجتمع وتقديم الخدمات الاستشارية والبحثية والانفتاح على المجتمع والعالم من خلال الندوات والمؤتمرات', 'Faculty of Arts', 'Mansoura (Section 2), Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661039921.jpg', '050 2241464', '٠٥٠٢٢٤١٤٦٤', 'The Faculty of Arts seeks to be comprehensive and committed to excellence in preparing a graduate capable of competing in the local and global labor market and activating the role of scientific research in various fields and the dissemination and production of knowledge, and aspires to serve the community and provide advisory and research services and openness to society and the world through seminars and conferences', 'https://artsfac.mans.edu.eg/', '2022-08-20 21:58:41', '2022-08-20 21:58:41'),
(8, 'Faculty of Commerce', 'كليه التجاره', 'كليه التجاره', '29V4+53H، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'قيادة كلية التجارة بجامعة المنصورة لكليات التجارة في الجامعات المصرية والعربية من خلال تقديم خدمات طلابية وبحثية ومجتمعية في إطار معايير الجودة الدولية والقيم الإنسانية والأخلاق لتأهيلهم لقيادة قطاع الأعمال مع الأخذ في الاعتبار حساب خصوصية ثقافة المجتمع المصري.', 'Faculty of Commerce', '29V4+53H, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040016.jpg', '050 2243974', '٠٥٠٢٢٤٣٩٧٤', 'The leadership of the Faculty of Commerce at Mansoura University for the faculties of commerce in Egyptian and Arab universities by providing student, research and community services within the framework of international quality standards and human values and ethics to qualify them to lead the business sector taking into account the specificity of the culture of Egyptian society.', 'http://comfac.mans.edu.eg', '2022-08-20 22:00:16', '2022-08-20 22:00:16'),
(9, 'Faculty of education', 'كليه التربيه', 'كليه التربيه', '29R7+82M، ممر داخل جامعة المنصورة، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'تقدم كلية التربية برامج تعليمية متميزة لإعداد معلمي التعليم الأساسي والثانوي في الآداب والعلوم ، والكوادر التربوية ، وإنتاج البحوث العلمية المتميزة في العلوم الإنسانية والتربوية لحل مشاكل المجتمع وتنميته من خلال دعم داعم. بيئة تكنولوجية وشراكات فاعلة وفق معايير الجودة الوطنية.', 'Faculty of education', '29R7+82M, Corridor inside Mansoura University, Mitt Khamis and Kafr Al-Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040073.jpg', '050 2244385', '٠٥٠٢٢٤٤٣٨٥', 'The Faculty of Education provides distinguished educational programs to prepare teachers of basic and secondary education in the arts and sciences, educational cadres, and the production of distinguished scientific research in the humanities and educational sciences to solve the problems of society and develop it through a supportive technological environment and effective partnerships in accordance with national quality standards.', 'http://sefac.mans.edu.eg/en/', '2022-08-20 22:01:13', '2022-08-20 22:01:13'),
(10, 'Faculty of Nursing', 'كليه التمريض', 'كليه التمريض', '29Q6+W44، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'كلية التمريض - جامعة المنصورة هي مؤسسة تعليمية وبحثية حكومية تقدم برامج تعليمية في علوم التمريض لتوفير خريج مؤهل علميًا وعمليًا وإنتاج البحث العلمي ودعم احتياجات المجتمع الصحية.', 'Faculty of Nursing', '29Q6+W44, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040301.jpg', '050 2292169', '٠٥٠٢٢٩٢١٦٩', 'Faculty of Nursing - Mansoura University is a governmental educational and research institution that offers educational programs in nursing sciences to provide a scientifically and practically qualified graduate, produce scientific research and support the community\'s health needs.', 'http://nurfac.mans.edu.eg/', '2022-08-20 22:05:01', '2022-08-20 22:05:01'),
(11, 'Faculty of Law', 'كليه الحقوق', 'كليه الحقوق', '29V4+V8X، حى الجامعة، شارع الجمهورية، الدقهلية', 'كلية الحقوق جامعة المنصورة مؤسسة تعليمية وبحثية حكومية متميزة تساهم في إعداد خريجين قانونيين متميزين في مجال الدراسات القانونية مؤهلين ليكونوا كوادر متميزة في مجال التدريس الجامعي والقضاء والقانون والإدارات القانونية والشركات والبنوك في القطاعين الحكومي والخاص.', 'Faculty of Law', '29V4+V8X, University District, Republic Street, Dakahlia', 'assets/images/faculity/1661040386.jpg', '050 2202400', '٠٥٠٢٢٠٢٤٠٠', 'The Faculty of Law, Mansoura University is a distinguished governmental educational and research institution that contributes to the preparation of distinguished legal graduates in the field of legal studies qualified to be distinguished cadres in the field of university teaching, judiciary, law, legal departments, companies and banks both in the government and private sectors.', 'https://lawfac.mans.edu.eg/', '2022-08-20 22:06:26', '2022-08-20 22:06:26'),
(12, 'Faculty Of Dentistry ', 'كليه طب الاسنان', 'كليه طب الاسنان', '29R6+Q3F، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'كلية متميزة عالميًا ورائدة في مجالات طب الأسنان.', 'Faculty Of Dentistry ', '29R6+Q3F, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040449.jpg', '050 2248512', '٠٥٠٢٢٤٨٥١٢', 'A globally distinguished college and a leader in the fields of dentistry.', 'https://dentfac.mans.edu.eg/', '2022-08-20 22:07:29', '2022-08-20 22:07:29'),
(13, 'Faculty of Veterinary Medicine', 'كليه الطب البيطري', 'كليه الطب البيطري', '29V5+3P5، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'تهدف كلية الطب البيطري إلى بناء كوادر بيطرية ذات قدرات علمية وعملية متميزة قادرة على المنافسة محلياً وإقليمياً وعالمياً مع دعم الشراكات الداخلية والخارجية لتحقيق أهداف التنمية المستدامة ومعايير الجودة الشاملة.', 'Faculty of Veterinary Medicine', '29V5+3P5, Mitt Khamis & Kafr El Moji, Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040510.jpg', '050 2372593', '٠٥٠٢٣٧٢٥٩٣', 'The Faculty of Veterinary Medicine aims to build veterinary cadres with distinguished scientific and practical capabilities, capable of competing locally, regionally and globally while supporting internal and external partnerships to achieve the goals of sustainable development and total quality standards. ', 'http://vetfac.mans.edu.eg/en/', '2022-08-20 22:08:30', '2022-08-20 22:08:30'),
(14, 'Faculty of Early Childhood Education ', 'كليه الطفوله المبكره', 'كليه التربية للطفولة المبكرة ', '29Q8+CJX، شارع كلية الآداب، المنصورة (قسم 2)، اول المنصورة، الدقهلية 7650166', 'كلية التربية للطفولة المبكرة - جامعة المنصورة هي مؤسسة تعليمية وتعليمية تقدم برامج دراسية متخصصة ومتقدمة في مجال تعليم الطفولة المبكرة ، قادرة على تزويد خريجيها بالكفاءات العلمية المتخصصة والمؤهلين للمنافسة في سوق العمل ، والقادرين على إجراء البحث العلمي المتميز لخدمة المجتمع المحلي والدولي.', 'Faculty of Early Childhood Education ', '29Q8+CJX, Faculty of Arts Street, Mansoura (Section 2), Awwal Mansoura, Dakahlia 7650166', 'assets/images/faculity/1661040572.jpg', '050 2231271', '٠٥٠٢٢٣١٢٧١', 'Faculty of Early Childhood Education - Mansoura University is an educational and educational institution that offers specialized and advanced study programs in the field of early childhood education, capable of providing its graduates with specialized scientific competencies and qualified to compete in the labor market, able to conduct distinguished scientific research to serve the local and international community.', 'https://kinderfac.mans.edu.eg/', '2022-08-20 22:09:32', '2022-08-20 22:09:32'),
(15, 'Faculty of Physical Education', 'كليه التربيه الرياضيه', 'كليه التربيه الرياضيه', '29P5+H8R، المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', 'تحافظ الكلية على تميز برامجها الأكاديمية لإعداد وتأهيل خريج كفء يمتلك المعرفة النظرية والمهارات التكنولوجية التطبيقية والمتخصصة ويقدم بحثًا علميًا مبتكرًا لخدمة المجتمع وفقًا لمعايير الجودة العالمية.', 'Faculty of Physical Education', '29P5+H8R, Mansoura (Section 2), Mansoura, Dakahlia 7650030', 'assets/images/faculity/1661040654.jpg', '050 2368856', '٠٥٠٢٣٦٨٨٥٦', 'The College maintains the excellence of its academic programs to prepare and qualify a competent graduate who possesses theoretical knowledge, applied and specialized technological skills and provides innovative scientific research to serve the community in accordance with international quality standards', 'https://edufac.mans.edu.eg/', '2022-08-20 22:10:54', '2022-08-20 22:10:54'),
(16, 'College of Fine Arts', 'كليه الفنون التطبيقيه', 'كليه الفنون الجميله', '29Q3+XRP, Unnamed Road, ميت خميس وكفر الموجي، المنصورة، الدقهلية', 'تهدف الكلية إلى إعداد خريج متميز في الفنون الجميلة مبدع ذو كيان نشط في المجتمع وقادر على المنافسة في مجالات الفنون التشكيلية والعلمية والتكنولوجية والإنسانية ، ليكون متماشياً مع المعايير الأكاديمية الدولية ، وقادر على تلبية احتياجات البيئة المحلية والعالمية ، وتنمية الحس الإبداعي والجمالي ، والتأكيد على أهمية الفنون الجميلة في الحياة ودورها الإيجابي في بناء المجتمع.', 'College of Fine Arts', '29Q3+XRP,Met Khamis & Kafr Al Moji, Mansoura, Dakahlia', 'assets/images/faculity/1661040767.jpg', '050 2164692', '٠٥٠٢١٦٤٦٩٢', 'The College aims to prepare a distinguished graduate in the fine arts creative with an active entity in society and able to compete in the fields of plastic art, scientific, technological, and humanitarian, to be in line with international academic standards, able to meet the needs of the local and global environment, develop an innovative and aesthetic sense, and emphasize the importance of fine arts in life and their positive role in the structure of society.', 'https://fineartsfac.mans.edu.eg/', '2022-08-20 22:12:47', '2022-08-20 22:12:47'),
(17, 'Faculty Of Tourism And Hotels', 'كليه السياحه والفنادق', 'كليه السياحه والفنادق', '29R9+34X, شارع الثانوية - إمتداد شارع, أحمد ماهر، المنصورة (قسم 2)، المنصورة، الدقهلية', 'تلتزم كلية السياحة والفنادق بجامعة المنصورة بتطوير برامجها التعليمية والبحثية لتأهيل الخريجين للمنافسة في سوق العمل وتوظيف المشاركة المجتمعية لتنمية الموارد البشرية والتمويل الذاتي للكلية وتقديم الاستشارات السياحية والفندقية.', 'Faculty Of Tourism And Hotels', '29R9+34X, High Street - Extension Street, Ahmed Maher, Mansoura (Section 2), Mansoura, Dakahlia', 'assets/images/faculity/1661040833.jpg', '050 2218138', '٠٥٠٢٢١٨١٣٨', 'The Faculty of Tourism and Hotels at Mansoura University is committed to developing its educational and research programs to qualify graduates to compete in the labor market, employ community participation to develop human resources, self-finance the college and provide tourism and hotel consultations.', 'http://thfac.mans.edu.eg/', '2022-08-20 22:13:53', '2022-08-20 22:13:53'),
(18, 'Faculty of Specific Education Mansoura University', 'كليه التربيه النوعيه', 'كليه التربيه النوعيه', '29PJ+7P3، مساكن مشعل - سكة سندوب، المدارس، المنصورة، الدقهلية', 'توفير بيئة تعليمية وبحثية متطورة لإعداد معلم ذو جودة متميزة للتعليم قبل الجامعي ، من خلال تطوير البرامج الأكاديمية وتقديم الاستشارات المتخصصة وخدمات المجتمع.', 'Faculty of Specific Education Mansoura University', '29PJ+7P3, Meshaal Residences - Sindoub Railway, Madrasas, Mansoura, Dakahlia', 'assets/images/faculity/1661696733.jpg', '050 2257171', '٠٥٠٢٢٥٧١٧١', 'Provide a sophisticated learning and research environment to prepare the outstanding quality teacher of pre-university education, through the development of academic programs, the provision of specialized consultations and community services.', 'http://sedudean@mans.edu.eg', '2022-08-28 14:27:34', '2022-08-28 14:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `sub_title_ar` varchar(255) DEFAULT NULL,
  `phone_ar` varchar(20) DEFAULT NULL,
  `sub_title_en` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone_en` varchar(20) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `location_ar` text DEFAULT NULL,
  `location_en` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title_en`, `title_ar`, `sub_title_ar`, `phone_ar`, `sub_title_en`, `image`, `phone_en`, `link`, `location_ar`, `location_en`, `created_at`, `updated_at`) VALUES
(3, 'Mansoura University Olympic Village', 'القريه الالومبيه', 'القريه الالومبيه', '٠٥٠٢٢٠٠٧١٩', 'Olympic Village', 'assets/images/locations/1661192246.jpg', '‏ 0502200719 ‏', 'https://maps.google.com/?cid=9950762780323204018&entry=gps', 'المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', 'Ceyhan Street - Mansoura - Dakahlia Governorate - Arab Republic of Egypt, Mansoura, Egypt', '2022-08-22 16:17:26', '2022-08-22 16:17:26'),
(5, 'Nile Clue', 'نادي النيل ', 'نادي النيل ', '٠٥٠٢٢٣٠٢٩٣', 'Nile Clue', 'assets/images/locations/1661193419.jpg', '050 2230293', 'https://maps.google.com/?cid=5358613603536745415&entry=gps', '29W5+G7H، المنصورة (قسم 2)، المنصورة، الدقهلية 7650048', 'Mansoura  Al Mshayh Al Safly, Dakahlia, Egypt', '2022-08-22 16:36:59', '2022-08-22 16:36:59'),
(6, 'International Student Administration', 'الاداره العامه ', 'الاداره العامه', '٠٥٠٢٢٠٠٢٤٣', 'International Student Administration', 'assets/images/locations/1661187759.jpg', '050 2200243', 'https://goo.gl/maps/yatKFQpATH6jfP8n8', '60 شارع الجمهورية، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '60 Al Jumhuriya Street, Mitt Khamis and Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-08-22 16:48:07', '2022-08-22 16:48:07'),
(7, 'Mansoura University Central Library', 'المكتبه المركزيه', 'المكتبه المركزيه', '٠٥٠٢٣٩٤٨١٢', 'Mansoura University Central Library', 'assets/images/locations/1661369135.jpg', '050 2394812', 'https://goo.gl/maps/MmAoDqt5Fr7xu9SL8', '29R6+R7X، المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', '29R6+R7X, Mansoura (Section 2), Mansoura, Dakahlia 7650030', '2022-08-24 17:25:35', '2022-08-24 17:25:35'),
(8, 'Faculty of Computer and Information science', 'كليه الحاسبات والمعلومات', 'كليه الحاسبات والمعلومات', '٠٥٠٢٢٣٤٦٧٩', 'Faculty of Computer and Information science', 'assets/images/faculity/1661039207.png', '050 2234679', 'https://goo.gl/maps/gscQWew17xEGPvcc7', '29R2+WQF، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'Shar3 El Gomhoreya Mansoura, Dakahlia, Egypt 35516', '2022-09-09 21:25:07', '2022-09-09 21:25:07'),
(9, 'Faculty of Engineering', 'كليه الهندسه', 'كليه الهندسه', '٠٥٠٢٢٠٢٢٤٧', 'Faculty of Engineering', 'assets/images/faculity/1661039464.jpg', '050 2202247', 'https://goo.gl/maps/swqRmrpGV2ZZqzjg7', 'الجمهوريه، المنصورة، الدقهلية 35516', 'Jamhouria, Mansoura, Dakahlia 35516', '2022-09-09 21:25:07', '2022-09-09 21:25:07'),
(10, 'Faculty of Medicine', 'كليه الطب', 'كليه الطب', '٠٥٠٢٢٣٥٠٦٩', 'Faculty of Medicine', 'assets/images/faculity/1661039534.jpeg', '2235069(050)', 'https://goo.gl/maps/CBzAgTY5fn9UbgeAA', 'شارع، الجمهورية، المنصورة (قسم، 2)،، Dakahlia Governorate', 'Street, Al Gomhuria, Mansoura (Section, 2), Dakahlia', '2022-09-09 21:29:04', '2022-09-09 21:29:04'),
(11, 'Faculty of Pharmacology', 'كليه الصيدله', 'كليه الصيدله', '٠٥٠٢٢٠٠٢٣٦', 'Faculty of Pharmacology', 'assets/images/faculity/1661039607.jpg', '050 2200236', 'https://goo.gl/maps/4fwUH1V5wUhF6vcX9', '29R6+74G، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29R6+74G, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:29:04', '2022-09-09 21:29:04'),
(12, 'Faculty of Agriculture', 'كليه الزراعه', 'كليه الزراعه', '٠٥٠٢٢٠٢٢٥٤', 'Faculty of Agriculture', 'assets/images/faculity/1661039691.jpg', '050 2202254', 'https://goo.gl/maps/dzqaHGHSt81zy1uDA', '29R4+JJJ، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29R4+JJJ, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:33:17', '2022-09-09 21:33:17'),
(13, 'Faculty of Science', 'كليه العلوم', 'كليه العلوم', '٠٥٠٢٢٠٢٢٦٦', 'Faculty of Science', 'assets/images/faculity/1661039772.jpg', '050 2202266', 'https://goo.gl/maps/KYZUw5m4Y1WznAdd7', '29R3+QC6، شارع الجمهورية، المنصورة (قسم 2)، الدقهلية, 11432', '29R3+QC6, Al Jumhuriya Street, Mansoura (Section 2), Dakahlia, 11432', '2022-09-09 21:33:17', '2022-09-09 21:33:17'),
(14, 'Faculty of Arts', 'كليه الاداب', 'كليه الاداب', '٠٥٠٢٢٤١٤٦٤', 'Faculty of Arts', 'assets/images/faculity/1661039921.jpg', '050 2241464', 'https://goo.gl/maps/g55h28QdyHN7NAyB7', 'المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', 'Mansoura (Section 2), Mansoura, Dakahlia 7650030', '2022-09-09 21:38:17', '2022-09-09 21:38:17'),
(15, 'Faculty of Commerce', 'كليه التجاره', 'كليه التجاره', '٠٥٠٢٢٤٣٩٧٤', 'Faculty of Commerce', 'assets/images/faculity/1661040016.jpg', '050 2243974', 'https://goo.gl/maps/RVMw6DmBRNNAP5M9A', '29V4+53H، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29V4+53H, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:38:17', '2022-09-09 21:38:17'),
(16, 'Faculty of education', 'كليه التربيه', 'كليه التربيه', '٠٥٠٢٢٤٤٣٨٥', 'Faculty of education', 'assets/images/faculity/1661040073.jpg', '050 2244385', 'https://goo.gl/maps/4N73bqeoxsbXzMwg7', '29R7+82M، ممر داخل جامعة المنصورة، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29R7+82M, Corridor inside Mansoura University, Mitt Khamis and Kafr Al-Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:43:21', '2022-09-09 21:43:21'),
(17, 'Faculty of Nursing', 'كليه التمريض', 'كليه التمريض', '٠٥٠٢٢٩٢١٦٩', 'Faculty of Nursing', 'assets/images/faculity/1661040301.jpg', '050 2292169', 'https://goo.gl/maps/5Fjao12aJ8F8DbWs8', '29Q6+W44، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29Q6+W44, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:43:21', '2022-09-09 21:43:21'),
(18, 'Faculty of Law', 'كليه الحقوق', 'كليه الحقوق', '٠٥٠٢٢٠٢٤٠٠', 'Faculty of Law', 'assets/images/faculity/1661040386.jpg', '050 2202400', 'https://goo.gl/maps/Hk8u8hVAfYok9YYW9', '29V4+V8X، حى الجامعة، شارع الجمهورية، الدقهلية', '29V4+V8X, University District, Republic Street, Dakahlia', '2022-09-09 21:48:30', '2022-09-09 21:48:30'),
(19, 'Faculty Of Dentistry ', 'كليه طب الاسنان', 'كليه طب الاسنان', '٠٥٠٢٢٤٨٥١٢', 'Faculty Of Dentistry ', 'assets/images/faculity/1661040449.jpg', '050 2248512', 'https://goo.gl/maps/H2DTRAtMCrc5Kc7S7', '29R6+Q3F، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29R6+Q3F, Mitt Khamis & Kafr Al Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:48:30', '2022-09-09 21:48:30'),
(20, 'Faculty of Veterinary Medicine', 'كليه الطب البيطري', 'كليه الطب البيطري', '٠٥٠٢٣٧٢٥٩٣', 'Faculty of Veterinary Medicine', 'assets/images/faculity/1661040510.jpg', '050 2372593', 'https://goo.gl/maps/8mz8LMs26YvPw8CH7', '29V5+3P5، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29V5+3P5, Mitt Khamis & Kafr El Moji, Mansoura, Dakahlia 7650030', '2022-09-09 21:52:43', '2022-09-09 21:52:43'),
(21, 'Faculty of Early Childhood Education ', 'كليه الطفوله المبكره', 'كليه الطفوله المبكره', '٠٥٠٢٢٣١٢٧١', 'Faculty of Early Childhood Education', 'assets/images/faculity/1661040572.jpg', '050 2231271', 'https://goo.gl/maps/MbAvUYMiotryufMK7', '29Q8+CJX، شارع كلية الآداب، المنصورة (قسم 2)، اول المنصورة، الدقهلية 7650166', '29Q8+CJX, Faculty of Arts Street, Mansoura (Section 2), Awwal Mansoura, Dakahlia 7650166', '2022-09-09 21:52:43', '2022-09-09 21:52:43'),
(22, 'College of Fine Arts', 'كليه الفنون الجميله', 'كليه الفنون الجميله', '٠٥٠٢١٦٤٦٩٢', 'College of Fine Arts', 'assets/images/faculity/1661040767.jpg', '050 2164692', 'https://goo.gl/maps/mqjQT26jMuWDSRDd7', '29Q3+XRP, Unnamed Road, ميت خميس وكفر الموجي، المنصورة، الدقهلية', '29Q3+XRP,Met Khamis & Kafr Al Moji, Mansoura, Dakahlia', '2022-09-09 21:59:29', '2022-09-09 21:59:29'),
(23, 'Faculty Of Tourism And Hotels', 'كليه السياحه والفنادق', 'كليه السياحه والفنادق', '٠٥٠٢٢١٨١٣٨', 'Faculty Of Tourism And Hotels', 'assets/images/faculity/1661040833.jpg', '050 2218138', 'https://goo.gl/maps/19FY3pp6rGhwkmEeA', '29R9+34X, شارع الثانوية - إمتداد شارع, أحمد ماهر، المنصورة (قسم 2)، المنصورة، الدقهلية', '29R9+34X, High Street - Extension Street, Ahmed Maher, Mansoura (Section 2), Mansoura, Dakahlia', '2022-09-09 21:59:29', '2022-09-09 21:59:29'),
(24, 'Faculty of Specific Education Mansoura University', 'كليه التربيه النوعيه', 'كليه التربيه النوعيه', '٠٥٠٢٢٥٧١٧١', 'Faculty of Specific Education Mansoura University', 'assets/images/faculity/1661696733.jpg', '050 2257171', 'https://goo.gl/maps/uyuokPMcgXwptmbLA', '29PJ+7P3، مساكن مشعل - سكة سندوب، المدارس، المنصورة، الدقهلية', '29PJ+7P3, Meshaal Residences - Sindoub Railway, Madrasas, Mansoura, Dakahlia', '2022-09-09 22:01:03', '2022-09-09 22:01:03'),
(25, 'Mansoura University Hospitals', 'مستشفي الجامعه', 'مستشفي الجامعه', '٠٥٠٢٢٠٢٨٧٦', 'Mansoura University Hospitals', 'assets/images/locations/1662764564.jpg', '0502202876', 'https://goo.gl/maps/43GquSd6dhwU4gAY6', '29V7+QGJ، شارع الجمهورية، ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', '29V7+QGJ, El Gomhouria St, Mit Khamis WA Kafr Al Mougi, El Mansoura, Dakahlia Governorate 7650030', '2022-09-09 21:02:44', '2022-09-09 21:02:44'),
(26, 'Mansoura University Hotel', 'فندق رمادا', 'فندق رمادا', '٠٥٠٢٢٠٠٦٢٢', 'Mansoura University Hotel', 'assets/images/locations/1662765058.jpg', '0502200622', 'https://goo.gl/maps/Xf4Wt1qgpiKw38La7', '29W2+2HG, AAM, ميت خميس وكفر الموجي، المنصورة، الدقهلية 7650030', 'Al-Gomhoria Street, next to Mansoura University, parallel to the University Bridge, Mansoura, Dakahlia, 11432', '2022-09-09 21:10:58', '2022-09-09 21:10:58'),
(27, 'Faculty of Physical Education', 'كليه التربيه الرياضيه', 'كليه التربيه الرياضيه', '٠٥٠٢٣٦٨٨٥٦', 'Faculty of Physical Education', 'assets/images/faculity/1661040654.jpg', '050 2368856', 'https://goo.gl/maps/M592fJn5qdxyjoha8', '29P5+H8R، المنصورة (قسم 2)، المنصورة، الدقهلية 7650030', '29P5+H8R, Mansoura (Section 2), Mansoura, Dakahlia 7650030', '2022-09-10 22:43:42', '2022-09-10 22:43:42'),
(28, 'General Directorate of Admission and Scholarships of International Students', 'الإدارة العامة لقبول ومنح الطلاب الوافدين', 'الإدارة العامة لقبول ومنح الطلاب الوافدين', '٠٢٢٥٩٢٨٤٦٩', 'General Directorate of Admission and Scholarships of International Students', 'assets/images/locations/1661193528.jpg', '0225928469', 'https://maps.app.goo.gl/TbAgkkk4ank5Shmp6', '٧ دكتور ابراهيم ابو النجا حى السفارات الدور, الثانى, الحديقة الدولية، مدينة نصر،، محافظة القاهرة‬', '7 Dr. Ibrahim Abou El Naga Embassies District Floor, II, International Park, Nasr City, Cairo Governorate', '2022-09-12 11:16:51', '2022-09-12 11:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_08_04_144208_create_universities_table', 1),
(5, '2022_08_04_145027_create_faculties_table', 1),
(6, '2022_08_04_145204_create_countries_table', 1),
(7, '2022_08_04_145505_create_mansfaculties_table', 1),
(8, '2022_08_04_155223_create_squads_table', 1),
(9, '2022_10_12_000000_create_users_table', 1),
(10, '2022_08_07_140338_create_notifications_table', 2),
(11, '2022_08_07_140950_create_locations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2izhXXKwyybi2zOFecBx3v7kZCsMwUQAejVGtpXW', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidGhQMHlZcU5pMlZ0NFZBaFBNeFU4WElQcWNMYWt3R2JlR0tsV0V2NiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vbG9jYXRpb25zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd21mTkxFbmRKT0c5ZkZXZTJncG1yLjlYQXJvOGtoMVBsT0Zhem5jRFZwLy5KTUkuSWh6aksiO30=', 1660789766),
('akevAw18rUhGGSiA61nVeIjBN5bGfnjFuJ4LOMlB', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzlNYzlUbzczR1RPaklVa1dkeXhVSGZMS21ZOHJ6dHkzN2wxZWozViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1660785954),
('jtVFb7DymArggDoZdI7lNTZaq0n7Bu2BrzCw4O5L', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZUxZVWI3b3ZRNWFSTlBlSU1CVjJnZWdpZVMwMzNLRVFBWTBuWHQzNyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2ZhY3VsdGllcyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vZmFjdWx0aWVzP3BhZ2U9MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd21mTkxFbmRKT0c5ZkZXZTJncG1yLjlYQXJvOGtoMVBsT0Zhem5jRFZwLy5KTUkuSWh6aksiO30=', 1661042613),
('KbKRldpl4GpHlhqSHD89QKuZIjgKC7Iml37L3AFK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnZaNk5RYTlwYmFkZlZTb1psRFRaOFhhRkU0REM0OW5SQlJsY3VuUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1660787906),
('nDFbsqM9khcZxkJVBeRSBN3BuEWuhMmAb0pIIxKG', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibVJDbWNPdWRveHl2UXdrajVJMmNGVndOZTl5S0FxbFVyb2I5MllxdyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vbG9jYXRpb25zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1660849795);

-- --------------------------------------------------------

--
-- Table structure for table `squads`
--

CREATE TABLE `squads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `squads`
--

INSERT INTO `squads` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'First year', 'الفرقه الاولي', NULL, NULL),
(2, 'Second year', 'الفرقه الثانيه', NULL, NULL),
(3, 'Third year', 'الفرقه الثالثه', NULL, NULL),
(4, 'Fourth year', 'الفرقه الرابعه', NULL, NULL),
(5, 'Fifth year', 'الفرقه الخامسه', NULL, NULL),
(6, 'Sexth year', 'الفرقه السادسه', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'assets/images/profile-photo/avatar.png',
  `passportId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `current_team_id` bigint(20) DEFAULT NULL,
  `faculty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `squad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_admin` int(11) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `passportId`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `current_team_id`, `faculty_id`, `country_id`, `squad_id`, `is_admin`, `remember_token`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'howyda mohamed', 'howydamuhamed@gmail.com', '01289374154', 'assets/images/profile-photo/1661863690.png', '30006081600484', NULL, '$2y$10$wmfNLEndJOG9fFWe2gpmr.9XAro8kh1PlOFazncDVp/.JMI.IhzjK', NULL, NULL, NULL, NULL, 15, 4, 4, 1, NULL, NULL, '2022-08-17 21:44:02', '2022-08-30 10:48:10'),
(4, 'belal emad', 'belal@gmail.com', '01289374155', 'assets/images/profile-photo/avatar.png', '30006081600485', NULL, '$2y$10$RwEYC0ONjjqPewMQUMi9ZO68TZ1n6M/IuZebwBrX1ffcwEGJk1E7m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-17 23:24:11', '2022-08-17 23:24:11'),
(5, 'howyda mohamed', 'howydamuhamed2@gmail.com', '0128975645', 'assets/images/profile-photo/avatar.png', '30006081600565', NULL, '$2y$10$9tpS3vKYQA5P6OpNpCC5vOEsjpLdwV6Neb9A/i5NaMXBBGSqKtOLi', NULL, NULL, NULL, NULL, 4, 5, 2, 0, NULL, NULL, '2022-08-29 07:29:11', '2022-08-29 07:29:11'),
(6, 'howyda mohamed', 'alishahen@gmail.com', '0129876542', 'assets/images/profile-photo/avatar.png', '30006081600959', NULL, '$2y$10$Fg0kPpV5Oo5fxCTHVF4r.eDJ0pkvPE2URE6c856lxAUygbHsKhD26', NULL, NULL, NULL, NULL, 4, 5, 2, 0, NULL, NULL, '2022-08-29 07:40:06', '2022-08-29 07:40:06'),
(7, 'Athar', 'athar_h12@yahoo.com', '01126223833', 'assets/images/profile-photo/avatar.png', '152', NULL, '$2y$10$EkBV6aFbNY4vQ27hhLqdVecBvylVGLHlFIPlUOJolPGcYLfIthxpK', NULL, NULL, NULL, NULL, 8, 88, 4, 0, NULL, NULL, '2022-08-29 07:52:29', '2022-08-29 07:52:29'),
(8, 'howyda mohamed', 'alishahen55@gmail.com', '0129875552', 'assets/images/profile-photo/avatar.png', '30006081550959', NULL, '$2y$10$fbv1NnUYEfzftaKSROieE.VVq60IUBYeurzwQzf.yN1rhf5Eu5CYi', NULL, NULL, NULL, NULL, 4, 5, 1, 0, NULL, NULL, '2022-08-29 08:07:13', '2022-08-29 08:07:13'),
(9, 'howyda mohamed', 'alishahen555@gmail.com', '01129875552', 'assets/images/profile-photo/avatar.png', '30056081550959', NULL, '$2y$10$y0Ue/kSPjBdiudRJ6eaFVuHmavgNxX4c0LWWCd/HrCUwInei4IcUe', NULL, NULL, NULL, NULL, 4, 5, 1, 0, NULL, NULL, '2022-08-29 08:07:37', '2022-08-29 08:07:37'),
(10, 'marwan', 'marwan@yahoo.com', '012548543218', 'assets/images/profile-photo/avatar.png', '30216987235215', NULL, '$2y$10$gz7S.D1ZzVv2OaifadjkuOYZIe.5v4O0TGaPkKYc5TXX9ZjJfJSkC', NULL, NULL, NULL, NULL, 14, 13, 2, 0, NULL, NULL, '2022-08-30 04:03:42', '2022-08-30 04:03:42'),
(11, 'saly', 'saly@gmail.com', '01254987652', 'assets/images/profile-photo/avatar.png', '23456210987646', NULL, '$2y$10$9pLQVwo8Iyv4848YldDR3e6SNJHnulMDWiN2oYmYpkp62pE7oWFRW', NULL, NULL, NULL, NULL, 12, 13, 3, 0, NULL, NULL, '2022-08-30 04:10:38', '2022-08-30 04:10:38'),
(12, 'hoda saad', 'hodasaad@gmail.com', '01289374054', 'assets/images/profile-photo/1661866045.PNG', '3000065278456', NULL, '$2y$10$5aVuaio1.bDR.qNL9dCP1eizBczWkKbTvnJUNsWdL1.2hmyAnwoQ2', NULL, NULL, NULL, NULL, 3, 1, 1, 0, NULL, NULL, '2022-08-30 09:50:47', '2022-08-30 11:27:25'),
(13, 'Heba', 'Heba@gmail.com', '01156932769', 'assets/images/profile-photo/avatar.png', '20653098468743', NULL, '$2y$10$rjINwv3kUlG/J4Lf4RVI3.9cSlKm.pWVD10PiJqQ3VpTdBBqnEHUq', NULL, NULL, NULL, NULL, 12, 12, 1, 0, NULL, NULL, '2022-08-30 10:11:13', '2022-08-30 10:11:13'),
(14, 'rania', 'rania@gmail.com', '01036382647', 'assets/images/profile-photo/avatar.png', '28905826283728', NULL, '$2y$10$Th/pIqQrf3uu2IDj86n3DOGdP1sPs4VZRIBKPolfeIB.cWqui/Mbu', NULL, NULL, NULL, NULL, 15, 10, 1, 0, NULL, NULL, '2022-08-30 10:18:31', '2022-08-30 10:18:31'),
(16, 'alimohamed', 'ali@gmail.com', '01286247897', 'assets/images/profile-photo/1661866003.png', '300060816004', NULL, '$2y$10$wmfNLEndJOG9fFWe2gpmr.9XAro8kh1PlOFazncDVp/.JMI.IhzjK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-17 21:44:02', '2022-08-30 11:26:43'),
(17, 'amany', 'amany@yahoo.com', '01597420644', 'assets/images/profile-photo/avatar.png', '2346942805316', NULL, '$2y$10$ANaKIww./aasXdWQL6Ggg.QyOGQ53OW3azwM4tAnaO6FrScmcIlV.', NULL, NULL, NULL, NULL, 10, 15, 4, 0, NULL, NULL, '2022-08-30 11:56:33', '2022-08-30 11:56:33'),
(18, 'marwa', 'Marwa@yahoo.com', '01128402829', 'assets/images/profile-photo/avatar.png', '23409817564382', NULL, '$2y$10$oVbM.mn3n7I8ox2YLm7glOPEFnIKdIWArQescLJSYd.KYlwFkr06K', NULL, NULL, NULL, NULL, 13, 10, 2, 0, NULL, NULL, '2022-08-31 08:43:16', '2022-08-31 08:43:16'),
(19, 'hoda saad', 'hodasaad55@gmail.com', '01289374654', 'assets/images/profile-photo/avatar.png', '3000065276456', NULL, '$2y$10$6b8S2V3d0gZtaG6BmfHgB.B5QGPPkx1EkQgXoQpRtKqx0FXH8t826', NULL, NULL, NULL, NULL, 3, 1, 1, 0, NULL, NULL, '2022-09-02 15:05:23', '2022-09-02 15:05:23'),
(20, 'howyda saad', 'howyda@gmail.com', '0125977631', 'assets/images/profile-photo/avatar.png', '3000656874366', NULL, '$2y$10$cb9duQwPGdYxHeIodf0J0.V.V3ARArL4OQZDLDJ8KBZu/xv/ZZ2Hi', NULL, NULL, NULL, NULL, 3, 20, 1, 0, NULL, NULL, '2022-09-02 15:08:50', '2022-09-02 15:08:50'),
(21, 'howyda saad', 'howyda55@gmail.com', '01259775631', 'assets/images/profile-photo/avatar.png', '30006568474366', NULL, '$2y$10$I29T2pKUrGyG5Ye0iIhQMuSB7pL.ao3baCQX7RxxxbJGBgTDrgQY2', NULL, NULL, NULL, NULL, 3, 20, 1, 0, NULL, NULL, '2022-09-02 15:10:31', '2022-09-02 15:10:31'),
(22, 'hanan', 'hanan@yahoo.com', '012548854218', 'assets/images/profile-photo/avatar.png', '3021851721987253215', NULL, '$2y$10$.ul2OLvRGjkK5C.4.S/D0edrDZL9W4jlYB8oYNA.CesGarhXgWe9q', NULL, NULL, NULL, NULL, 14, 13, 2, 0, NULL, NULL, '2022-09-03 11:18:49', '2022-09-03 11:18:49'),
(23, 'amira', 'amira@gmail.com', '01175497247', 'assets/images/profile-photo/avatar.png', '23747530865498', NULL, '$2y$10$D80set5/97CC3LswxuxbV.R2CrhbmT/lk0PfHnFRCc69N3ndebBUi', NULL, NULL, NULL, NULL, 16, 15, 3, 0, NULL, NULL, '2022-09-03 14:55:00', '2022-09-03 14:55:00'),
(24, 'saja ahmed', 'saja@yahoo.com', '01145237632', 'assets/images/profile-photo/avatar.png', '23564578834557', NULL, '$2y$10$Zwb.M3PzY/BmeUJozrbuYuqBht3JzN1Bjgb0vmSc3z4qWNiQiS/yG', NULL, NULL, NULL, NULL, 13, 12, 5, 0, NULL, NULL, '2022-09-05 08:56:35', '2022-09-05 08:56:35'),
(25, 'belal', 'belalemad@gmail.com', '01066010293', 'assets/images/profile-photo/avatar.png', '12345678901234', NULL, '$2y$10$FNQC0dQwuNuXLeBN1hBni.iU.6H8A1P8tTK9h3WRW1nYek1d29icu', NULL, NULL, NULL, NULL, 5, 20, 4, 0, NULL, NULL, '2022-09-06 16:14:00', '2022-09-06 16:14:00'),
(26, 'ali', 'alis1s@gmail.com', '01227296606', 'assets/images/profile-photo/avatar.png', '432423423430', NULL, '$2y$10$sK1CoP3e14dc9IXwgCkg0upBPM8oPstasw5AHR6vrxRTAnWb7TAOy', NULL, NULL, NULL, NULL, 2, 8, 1, 0, NULL, NULL, '2022-09-18 10:57:18', '2022-09-18 10:57:18'),
(27, 'nour emad', 'nour@gmail.com', '01259876432', 'assets/images/profile-photo/avatar.png', 'A00000000', NULL, '$2y$10$gsy59t7o7gfo251JbJlHnu0aBwkdiib4Ou1yNNBq/3NzIYN5AWmiq', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-23 12:10:11', '2022-09-23 12:10:11'),
(28, 'sara', 'sara@gmail.com', '01246788764', 'assets/images/profile-photo/avatar.png', 'A24567975', NULL, '$2y$10$LTXBpGsplRV1S/SAI5srjeBBPEddFvqZun7Hm.eAtGEINNhLhUNU6', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-23 20:55:11', '2022-09-23 20:55:11'),
(29, 'amira', 'amira12@gmail.com', '01130964286', 'assets/images/profile-photo/avatar.png', 'A12567775', NULL, '$2y$10$O5OYNskh7SCrBaCF//8M8.SZtD6SzCqqlXxtLY7Y595Q3K.SC3Hwi', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-23 21:01:18', '2022-09-23 21:01:18'),
(30, 'alyaa', 'alyaa@gmail.com', '015246843229', 'assets/images/profile-photo/avatar.png', 'A12456753', NULL, '$2y$10$i6keqQnKwFwYEWYkhnWZreVaZBdyreomNnQpfg4jP90YikQGpHF3K', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-26 20:53:02', '2022-09-26 20:53:02'),
(31, 'amira', 'Amira@yahoo.com', '014635785689', 'assets/images/profile-photo/avatar.png', 'A13579524', NULL, '$2y$10$ilBYzxy799iQHZJQg8zaOeozprnyuAMzYAiBJyHPdVJfpE0mQzZYW', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-26 20:55:18', '2022-09-26 20:55:18'),
(32, 'howydasaad', 'howydamuhamed12@gmail.com', '0125897654', 'assets/images/profile-photo/avatar.png', 'A000000555', NULL, '$2y$10$MZJgn4tfaB4Jq4cH36fgL.PYvSu6W6VhVz/7He3mDqf2oiNgOyUjm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-09-29 00:38:35', '2022-09-29 00:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `squads`
--
ALTER TABLE `squads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_nationalid_unique` (`passportId`),
  ADD KEY `users_faculty_id_foreign` (`faculty_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_squad_id_foreign` (`squad_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `squads`
--
ALTER TABLE `squads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `users_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `users_squad_id_foreign` FOREIGN KEY (`squad_id`) REFERENCES `squads` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
