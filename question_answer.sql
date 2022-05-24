-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 07:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `question_answer`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_models`
--

CREATE TABLE `answer_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auserId` bigint(20) NOT NULL,
  `qid` bigint(20) NOT NULL,
  `afile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acontent` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_models`
--

INSERT INTO `answer_models` (`id`, `created_at`, `updated_at`, `auserId`, `qid`, `afile`, `acontent`) VALUES
(5, '2022-01-02 02:06:11', '2022-01-02 02:06:11', 6, 2, NULL, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">System analysis and design deal with planning the </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">development of information systems</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> through understanding.</span><br></p>'),
(6, '2022-01-06 09:35:07', '2022-01-06 09:38:36', 2, 1, NULL, 'Compiler design covers basic translation mechanism and error detection & recovery. It includes lexical, syntax, and semantic analysis as front end, and code generation and optimization as back-end.'),
(7, '2022-01-08 23:19:38', '2022-01-08 23:19:38', 6, 1, NULL, '<div style=\"text-align: justify;\">A compiler translates the code written in one language to some other language without changing the meaning of the program. It is also expected that a compiler should make the target code efficient and optimized in terms of time and space.Compiler design principles provide an in-depth view of translation and optimization process. Compiler design covers basic translation mechanism and error detection & recovery. It includes lexical, syntax, and semantic analysis as front end, and code generation and optimization as back-end.</div>'),
(8, '2022-01-08 23:50:14', '2022-01-09 00:02:32', 5, 4, NULL, 'ভাই অবশ্যই লিখবেন, আপনারা এভাবে এগিয়ে এলে আমরা অনেক উপকৃত হবো এবং অনেক বিষয় পরিষ্কার ধারনা পাবো ।'),
(9, '2022-01-08 23:58:40', '2022-01-09 00:00:56', 11, 4, NULL, 'আলহামদুলিল্লাহ ভাই, যতটুকু পারি ট্রাই করে যাচ্ছি, আর নিজেদেরকেও আরো ঝালাই করতেছি, পাশাপাশি সকল সিনিয়েরভাইদেরকেও বিশেষভাবেআমাদের যৌক্তিক পরামর্শ দেওয়া, ইনফরমেশন শেয়ার করা, আমাদেরকে ফ্রি সময় পেলে ক্লাস যাতে নেই , সেগুলা ম্যানেজ করার ট্রাই করে যাচ্ছি ভাই। আপনাদের শত ব্যস্ততার মধ্যেও এগিয়ে আসা , আমাদেরকে অনেক ধাপ এগিয়ে দিবে!! সর্বোপরি আমাদের ডিপার্টমেন্ট এগিয়ে যাবে এটাই চাওয়া।😍😍😍'),
(10, '2022-01-09 00:05:57', '2022-01-09 00:05:57', 4, 4, NULL, '<p>আজকে একটা কনসেপ্ট নিয়ে কথা বলব 1 MVC (model view controller) MVC: আমরা সবাই জানি এম ভি সি এর ফুল মিনিং হল মডেল ভিউ কন্ট্রোলার। ডাটাবেজ এর সাথে ইন্টারেকশন করার জন্য মডেল ইউজ করা হয়। ধরুন আপনার একটা স্কুলের ডাটাবেজ আছে। সেখানে student\'s নামের একটা টেবিল আছে। তখন student\'s হবে আপনার একটা মডেল। যখনই আপনি student\'s টেবিলের ডাটা আনতে যাবেন তখনই student\'s মডেলের মাধ্যমে আপনার ডাটা আনতে হবে। মডেল আসলে কিছুই না এটা জাস্ট ও ও পি এর একটা ক্লাস। ওই ক্লাসের বিভিন্ন প্রপার্টি ইউজ করে আপনি ডাটাবেজ এর সাথে ইন্টারেকশন করবেন। তাহলে আমরা বলতে পারি ডাটাবেজের প্রতিটা টেবিল 1 একটা মডেল। এবার আসি ভিউতে। আমরা যত যাই করি না কেন সবকিছুর ই একটা আউটপুট দেখাতে হয়। আর ওয়েব এ আউটপুট দেখাতে হয় এইচটিএমএল এর মাধ্যমে। ধরুন আপনি একটা লগইন পেইজ বানাবেন। ওই লগিন পেইজ এর জন্য এইচটিএমএল যে ডিজাইন ফাইল টা করেছেন সেটাই একটা ভিউ। ভিউ সাধারণত আউটপুট দেখানো এবং ইনপুট নেয়ার জন্য ব্যবহার করা হয়। কন্ট্রোলার। কন্ট্রোলার কে আমরা একটা সিস্টেমের প্রাণ বলতে পারি। কন্ট্রোলার মডেল এবং ভিউ কে কন্ট্রোল করে। যেমন ধরুন আপনি ফেসবুকের লগইন পেইজ এ আছেন। আপনি যখন ব্রাউজার এ লগ ইন পেজ এর জন্য হিট করেন তখন রাউট এর দ্বারা ওই রিকোয়েস্টটা কন্ট্রোলার যায়। কন্ট্রোলার তখন ডিসাইড করে সে লগইনের যে এইচটিএমএল ফাইল টা আছে সেটা রেসপন্স হিসাবে পাঠাবে। আবার যখন আপনি লগইন করার জন্য ইউজারনেম পাসওয়ার্ড দিয়ে সাবমিট করেন তখন ওই ভেলু গুলো নিয়ে আবার কন্ট্রোলার এর কাছে যায় কন্ট্রোলার তখন ওই ভেলু গুলোকে চেক করে। সে মডেলের মাধ্যমে ডাটাবেজের আমার যে ইউজারনেম পাসওয়ার্ড আছে তার সাথে আমি জাইনপুর দিয়েছি তা কম্পেয়ার করে। তারপরে যদি ইউজারনেম এবং পাসওয়ার্ড সঠিক হয় তাহলে কন্ট্রোলার আপনার প্রোফাইল পেজ এর যে ভিউ আছে তা রেসপন্স হিসাবে পাঠায় আর যদি সঠিক না হয় তাহলে এরর মেসেজ পাঠায়। তাহলে বুঝতেই পারছেন যত যাই কিছুই হোক সবকিছু ম্যানেজ করে কন্ট্রোলার। আসলে ওয়েবসাইট এর মেইন জিনিস কি হলো রিকুয়েস্ট আর রেসপন্স। ইউজার রিকুয়েস্ট করবে আর সার্ভার সে অনুযায়ী রেসপন্স দিবে। আর রিকোয়েস্ট থেকে রেসপন্স আসার মধ্যবর্তী কাজগুলো কন্ট্রোলার দ্বারা নিয়ন্ত্রিত হয়। কোন প্রকার টাইপিং মিসটেক হলে ক্ষমা করবেন।<br></p>'),
(11, '2022-01-09 02:02:11', '2022-01-09 02:02:11', 3, 12, NULL, 'বিভিন্ন ধরণের প্রশ্ন আমি পাই। এর মধ্যে একটি কমন প্রশ্ন হল – “আমি কিভাবে শিখবো, শিখতে হলে আমাকে কি করতে হবে”। প্রশ্নটি মূলত যারা নিজে নিজে প্রোগ্রামিং ও সফটওয়্যার ডেভেলপমেন্ট শিখতে চান তাদের। এটা বেসিক প্রোগ্রামিং, সফটওয়্যার ইঞ্জিনিয়ারিং, অবজেক্ট ওরিয়েন্টেড ডিজাইন, ক্লাউড কম্পিউটিং সব বিষয়েই আমাকে শুনতে হয়। প্রশ্নটি শুনার পর এর উত্তর দেয়া কঠিন হয়ে যায়। আমি কিছুক্ষণ চিন্তা করি। তারপর একটা দায়সারা উত্তর দিয়ে দিতে হয়। কারণ কম কথায় এই প্রশ্নের উত্তর দেয়া সম্ভব নয়। যেহেতু আমি এটা বুঝতে সক্ষম হয়েছি যে কিভাবে শিখতে হয়, তাই বিষয়টি আমার কাছে সহজ। কিন্তু যারা সেটা বুঝতে পারছে না, তাদের জন্য আমার উত্তরটি সহজ নয়। যারা নিজে নিজে শিখতে চান, তাদের মূল সমস্যা হচ্ছে তারা বই পড়ে বা ভিডিও কোর্স দেখে নিজে নিজে কোন কিছু শিখতে চান, কিন্তু তারা এই পদ্ধতির যে কঠিন দিকটি আছে সেটার বিষয়ে মানসিকভাবে প্রস্তুত থাকেন না। তাই তাদের সরল প্রশ্ন যে আমি শিখতে পারছি না কেন, আমাকে শিখতে হলে কি করতে হবে, কোন বই পড়তে হবে বা কোন ভিডিও দেখতে হবে বা কিভাবে প্র্যাকটিস করতে হবে। তারা মনে করেন যে তাদের সমস্যা মনে হয় সঠিক বই, ভিডিও, বা প্র্যাকটিস করার পদ্ধতি বাছাই করতে না পারা। আসলে বিষয়টি সেটা নয়। মূল কথা হচ্ছে নিজে নিজে শিখার জন্য প্রথমত আপনাকে অনেক লম্বা সময় ধরে অল্প অল্প করে সামনে আগাতে হবে। আর এই আগানোর পথ প্রথম দিকে অনেকটা বানরের তেল মাখানো বাশে চড়ার মত। এক হাত উঠে দুই হাত নামতে হয়। এর কারণ, একজন যে কোন কিছু নতুন শিখছে তার কাছে নতুন তথ্য প্রথমে সঠিক ধারণা তৈরি করতে পারে না। বার বার ভুল পথে চেষ্টা করে করে যখন নিজের ভুলগুলো সে বুঝতে পারে তখন সে সঠিক পথ খুঁজে পায়। আমি যে নিজে অনেক কিছু ঘাঁটাঘাঁটি করে শিখি এর জন্য আমাকে এই চরম কঠিন পথ পারি দিতে হয়। এমনও হয়েছে যেটা আসলে ১ ঘণ্টায় শিখা যেত, সেটা আমি ১ বছরে শিখেছি। এমন অনেক রাত গেছে যখন ২ টা – ৩ টা পর্যন্ত পায়চারী করেছি একটি সামান্য বিষয়ের অর্থ উপলব্ধি করতে। অনেক সেটিংস ১০০-২০০ বার চেষ্টা করার পর কাজ করেছে। এমনও হয়েছে ৬ মাস চেষ্টা করার পর হাল ছেড়ে দিয়েছি, তারপর ২ বছর পর আবার যখন চেষ্টা করেছি তখন কাজ করাতে পেরেছি। সব বই, ভিডিও ও ট্রেনিং থেকেই কিছু না কিছু শিখা যায়। সব বই, ভিডিও ও ট্রেনিং এই চেষ্টা করা হয় যে শিক্ষার্থী যেন যথেষ্ট শিখতে পারে। কিন্তু এখানে আপনার নিজের নেয়ার সামর্থ্য আপনার শিখার পথে বাঁধা হয়ে দাড়ায়। বই ও ভিডিওর ক্ষেত্রে বিষয়টি আরও জটিল হয়ে যায়, কারণ আপনার ভুল ধরার ও শুধরে দেবার কেউ নেই। লেখক যা লিখেছেন সেখান থেকে আপনি আসলে সঠিক ধারণা পেয়ছেন কিনা সেটা যাচাই করার জন্য কেউ নেই। আপনি নিজে তো আর নিজের ভুল সহজে ধরতে পারবেন না কারণ আপনার কাছে তো আপনার ভুলটি তখন সঠিক মনে হয়। আপনি অনেক সময় পর হয়ত নিজের ভুল বুঝতে পারেন যখন বার বার চিন্তা করার পর আপনার মাথায় অন্য রকম চিন্তা আসে। ট্রেনিং এ শিক্ষক যদি ভালো হন, তাহলে তিনি আপনার ধারণা পরিষ্কার করার জন্য বার বার চেষ্টা করেন। এক্ষেত্রে ভুল ধরা সহজ হয় বলে আপনি অনেক দ্রুত শিখতে পারেন। তবে শিখার ক্ষেত্রে অনেক বই পড়া, অনেক ভিডিও ও লাইভ ট্রেনিং কোর্স থেকে ধীরে ধীরে আপনি নিজের ধারণা পরিষ্কার করে সামনে আগাবেন এটাই স্বাভাবিক। ১টি – ২টি বই পড়ে বা ভিডিও সিরিজ দেখে আপনি ধারণা পরিষ্কার করতে পারবেন না। এটা অনেক সময় সাপেক্ষ ও ধৈর্যের বিষয়। শিক্ষকের সাহায্য ছাড়া নিজে নিজে শিখাও আবার অনেকের পক্ষে সম্ভব হয় না। এটা তাদের জন্য সহজ যারা স্কুল, কলেজে এইভাবে নিজে নিজে শিখে অভ্যস্ত। অন্যরা এটা করতে গেলে অনেক বেশি সময় লাগিয়ে ফেলেন, কারণ তাদের এই পদ্ধতি সম্পর্কে ভালো ধারণা নেই। নিজে নিজে শিখতে পারা সব সময়ই ভালো অভ্যাস, এটা করতে পারলে অবশ্যই ভালো। তবে আমি মনে করি, সব ক্ষেত্রে এটা বুদ্ধিমানের কাজ নয়। যেমন কিছু জিনিস অভিজ্ঞতার বিষয়। আপনি নিজে নিজে অনেক ভুল করে অনেক সময় নষ্ট করে অভিজ্ঞতা অর্জন করতে পারেন, কিন্তু সেটা অভিজ্ঞ কারো কাছ থেকে নিতে পারা বুদ্ধিমানের কাজ। চাকা যেমন নতুন করে আবিষ্কার করার প্রয়োজন নেই, তেমন একই ভুল নিজের জীবনে করে ভুল থেকে শিক্ষা নেয়ার কোন মানে হয় না। তাই বিদেশে অভিজ্ঞতা মানুষ অনেক টাকা দিয়ে কিনতে আগ্রহী হয়। শিখার এই প্রসেস সম্পর্কে এবং এর কঠিন পথ সম্পর্কে যদি আপনার ধারণা না থাকে তার মানে আপনার আসলে অভিজ্ঞ লোকের সাহায্য দরকার। আর যদি দেখেন যে আপনি নিজে নিজে শিখে বেশ ভালো আগাচ্ছেন, তাহলে একা চলা আপনার পক্ষে সম্ভব তবে যেখানে সর্টকাটে অন্যের থেকে অভিজ্ঞতা নিয়ে নেয়া যায় সেখানে সেটা করে দ্রুত সামনে আগাতে হবে। মনে রাখবেন, এখনকার দুনিয়াতে কেবল একটি কাজ কমপ্লিট করাই মুখ্য বিষয় নয়, এটা আপনি কতো কম সময়ে করতে পারলেন সেটাও মুখ্য বিষয়। আপনি যদি কোন কিছু অর্জন করতে ২ বছর পিছিয়ে যান, তাহলে সেটা পুষিয়ে উঠা পুরো জীবনেও সম্ভব না হতে পারে। কারণ পৃথিবী আপনার থেকেও দ্রুত এগিয়ে যায়, কাজেই আপনি যখন লক্ষে পৌঁছবেন ততক্ষণে হয়ত লক্ষ্যই পরিবর্তন হয়ে গেছে। আশা করছি এই পোস্ট থেকে বুঝতে পারবেন যে একা বই পড়ে শিখার ক্ষেত্রে ধৈর্য ধারণ ও লম্বা পথের পথিক হওয়াই স্বাভাবিক। এখানে তাই কাজ হচ্ছে না কেন এটা ভেবে অস্থির হবার দরকার নেই।'),
(12, '2022-01-09 02:11:08', '2022-01-09 02:11:08', 7, 1, NULL, '<p>iyuqwyu987hvhbjjjknjn ,,,hi  kmn aco</p><p>44567772565%^^^^</p>'),
(13, '2022-01-11 22:59:40', '2022-01-11 22:59:40', 11, 14, NULL, '<p>হ্যাঁ, ঠিক আছে।</p>'),
(14, '2022-01-11 23:17:00', '2022-01-11 23:17:00', 4, 15, NULL, 'A constructor is a special type of member function of a class which initializes objects of a class. In C++, Constructor is automatically called when object(instance of class) create. It is special member function of the class because it does not have any return type.'),
(15, '2022-01-11 23:38:05', '2022-01-11 23:38:05', 10, 12, NULL, '<p>তোমরা কি কালকে ঘুরতে যাবা,programming নিয়ে পরে কথা হবে।</p>'),
(16, '2022-01-12 03:30:49', '2022-01-12 03:30:49', 15, 15, NULL, '<p>ddessees45**(((0))))</p><p>tmi to onk porasuna krteco</p>'),
(17, '2022-01-12 07:47:52', '2022-01-12 07:47:52', 11, 18, NULL, 'CMS এর অর্থ কি আপনার জানা আছে? এটা হল Content Management System। অর্থাৎ লেখা ও ছবি আপনি এর মাধ্যমে মেনেজ করতে পারবেন। কোন কোম্পানির তথ্যমূলক ওয়েবসাইট বা পার্সোনাল সাইট এটা দিয়ে বানাতে পারা যায়। কিন্তু সব ধরণের সাইট এটা দিয়ে হবে না। পারলে devskill.com, shohoz.com, rokomari.com বানিয়ে দেখান। এক একটি বিজনেস এক এক রকম। তাদের মধ্যে অনেক পার্থক্য থাকে। তাই এসব বানাতে হলে একদম জিরো থেকে বানাতে হয়। এখানে অনেক জটিল ও ব্যাপক বিষয় আছে। যেগুলো আপনাকে বলা হলে আপনার মাথা ঘুরে যাবে।'),
(18, '2022-01-12 08:02:37', '2022-01-12 08:02:37', 6, 18, NULL, 'আমাদের দেশে এখন ৫০০ টাকাই পোলাপান ওয়েব সাইট বানায়, আবার আমাদের দেশের আমার ক্লাইন্টই আমার কাছ থেকে ৫০০০০ টাকাই ওয়েব সাইট বানায়। এখন কেন যে এরা ৫০০ টাকার বদলে ৫০ হাজার বা ৫ লাখ টাকা দিয়ে ওয়েবসাইট বানাই কে জানে, হয়ত এরা বোকা অথবা হয়ত এরা জানে ওয়েব সাইট আসলে কতটা গুরুত্বপূর্ণ জিনিস ।');

-- --------------------------------------------------------

--
-- Table structure for table `answer_reports`
--

CREATE TABLE `answer_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reported_by` int(11) NOT NULL,
  `reported_to` int(11) NOT NULL,
  `reported_aid` int(11) NOT NULL,
  `reported_cause` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_reports`
--

INSERT INTO `answer_reports` (`id`, `reported_by`, `reported_to`, `reported_aid`, `reported_cause`, `created_at`, `updated_at`) VALUES
(7, 3, 7, 12, 'কোন উত্তর করে নাই, মজা করেছে।', '2022-01-09 02:15:03', '2022-01-09 02:15:03'),
(8, 9, 10, 15, 'Unexpected answer', '2022-01-11 23:40:44', '2022-01-11 23:40:44'),
(9, 2, 10, 15, 'Programming নিয়ে কোন উত্তর করে নাই, মজা করেছে।', '2022-01-12 03:52:56', '2022-01-12 03:52:56'),
(10, 3, 15, 16, 'Constructor সম্পর্কে কোন উত্তর করে নাই, মজা করেছে।', '2022-01-12 03:57:33', '2022-01-12 03:57:33'),
(11, 11, 7, 12, 'মজা করেছে উল্টাপাল্টা বলে।', '2022-01-12 04:00:14', '2022-01-12 04:00:14'),
(12, 5, 15, 16, 'Constructor সম্পর্কে কোন উত্তর করে নাই।', '2022-01-12 04:04:59', '2022-01-12 04:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `answer_up_down_models`
--

CREATE TABLE `answer_up_down_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `auserId` bigint(20) NOT NULL,
  `ques_id` bigint(20) NOT NULL,
  `aup` bigint(20) NOT NULL,
  `adown` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_up_down_models`
--

INSERT INTO `answer_up_down_models` (`id`, `auserId`, `ques_id`, `aup`, `adown`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 1, 0, '2022-01-01 23:43:11', '2022-01-02 01:27:06'),
(2, 3, 3, 1, 0, '2022-01-02 01:36:51', '2022-01-02 01:36:51'),
(3, 3, 1, 0, 0, '2022-01-02 01:36:56', '2022-01-02 01:37:17'),
(4, 6, 3, 1, 0, '2022-01-02 02:06:30', '2022-01-02 02:06:30'),
(5, 13, 5, 1, 0, '2022-01-02 02:10:22', '2022-01-02 02:10:22'),
(6, 1, 3, 1, 0, '2022-01-03 08:32:35', '2022-01-03 08:32:35'),
(7, 6, 1, 1, 0, '2022-01-03 12:45:23', '2022-01-03 12:45:23'),
(8, 3, 6, 1, 0, '2022-01-08 23:14:06', '2022-01-08 23:14:06'),
(9, 6, 6, 1, 0, '2022-01-08 23:14:45', '2022-01-08 23:14:45'),
(10, 3, 7, 1, 0, '2022-01-08 23:24:44', '2022-01-08 23:33:12'),
(11, 4, 7, 1, 0, '2022-01-08 23:45:52', '2022-01-08 23:45:52'),
(12, 4, 6, 1, 0, '2022-01-08 23:45:58', '2022-01-08 23:45:58'),
(13, 11, 8, 1, 0, '2022-01-08 23:59:36', '2022-01-08 23:59:36'),
(14, 5, 9, 1, 0, '2022-01-09 00:02:54', '2022-01-09 00:02:54'),
(15, 5, 8, 1, 0, '2022-01-09 00:03:01', '2022-01-09 00:03:01'),
(16, 4, 8, 1, 0, '2022-01-09 01:11:07', '2022-01-09 01:11:07'),
(17, 4, 9, 1, 0, '2022-01-09 01:11:16', '2022-01-09 01:11:16'),
(18, 5, 10, 1, 0, '2022-01-09 01:16:17', '2022-01-09 01:16:17'),
(19, 9, 11, 1, 0, '2022-01-09 02:04:00', '2022-01-09 02:04:00'),
(20, 3, 11, 1, 0, '2022-01-11 00:37:48', '2022-01-11 00:37:48'),
(21, 15, 13, 1, 0, '2022-01-11 23:03:10', '2022-01-11 23:03:10'),
(22, 10, 11, 1, 0, '2022-01-11 23:38:38', '2022-01-11 23:38:38'),
(23, 6, 14, 1, 0, '2022-01-12 03:31:58', '2022-01-12 03:31:58'),
(24, 6, 16, 1, 0, '2022-01-12 03:32:05', '2022-01-12 03:32:05'),
(25, 7, 11, 1, 0, '2022-01-12 03:42:20', '2022-01-12 03:42:20'),
(26, 7, 15, 1, 0, '2022-01-12 03:42:27', '2022-01-12 03:42:27'),
(27, 9, 13, 1, 0, '2022-01-12 03:48:43', '2022-01-12 03:48:43'),
(28, 2, 11, 1, 0, '2022-01-12 03:53:12', '2022-01-12 03:53:12'),
(29, 11, 7, 1, 0, '2022-01-12 04:00:26', '2022-01-12 04:00:26'),
(30, 11, 6, 1, 0, '2022-01-12 04:00:34', '2022-01-12 04:00:34'),
(31, 3, 9, 1, 0, '2022-01-12 04:18:00', '2022-01-12 04:18:00'),
(32, 3, 16, 0, 1, '2022-01-12 04:18:51', '2022-01-12 04:18:51'),
(33, 3, 14, 1, 0, '2022-01-12 04:18:58', '2022-01-12 04:18:58'),
(34, 11, 17, 1, 0, '2022-01-12 07:48:02', '2022-01-12 07:48:02'),
(35, 4, 17, 1, 0, '2022-01-12 07:52:55', '2022-01-12 07:52:55'),
(36, 3, 17, 1, 0, '2022-01-12 07:58:45', '2022-01-12 07:58:45'),
(37, 3, 18, 1, 0, '2022-01-12 08:04:27', '2022-01-12 08:04:27'),
(38, 11, 18, 1, 0, '2022-01-12 08:06:55', '2022-01-12 08:06:55'),
(39, 3, 15, 0, 1, '2022-01-13 04:40:27', '2022-01-13 04:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`, `created_at`, `updated_at`) VALUES
(1, 'System Analysis and Design', NULL, NULL),
(2, 'Computer Graphics', NULL, NULL),
(3, 'Analytical Programming Lab', NULL, NULL),
(4, 'Database Management System', NULL, NULL),
(5, 'Software Engineering', NULL, NULL),
(6, 'Microprocessor and Microcontroller', NULL, NULL),
(7, 'Compiler Design', NULL, NULL),
(8, 'Computer Architecture and Organization', NULL, NULL),
(9, 'Computer Networks', NULL, NULL),
(10, 'Algorithms Design and Analysis', NULL, NULL),
(11, 'Theory of Computing', NULL, NULL),
(12, 'Digital System Design', NULL, NULL),
(13, 'Introduction to Digital System', NULL, NULL),
(14, 'Online Judge/Problem Solvings', NULL, NULL),
(15, 'Discrete Mathematics', NULL, NULL),
(16, 'C++', NULL, NULL),
(17, 'Web Development PHP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_models`
--

CREATE TABLE `message_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `tuser_id` int(11) NOT NULL,
  `chat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_models`
--

INSERT INTO `message_models` (`id`, `fuser_id`, `tuser_id`, `chat`, `created_at`, `updated_at`) VALUES
(4, 3, 4, 'Hi,porasuna kmn cole tmr', '2022-01-09 03:11:49', '2022-01-09 03:11:49'),
(5, 3, 2, 'Laravel er kon course sikteco? kono project er kaj kreco?', '2022-01-09 03:13:28', '2022-01-09 03:13:28'),
(6, 4, 3, 'Alhamdulillah,bandhobi valoi coltece', '2022-01-09 03:17:20', '2022-01-09 03:17:20'),
(7, 4, 3, 'Tmr ki khobor!!', '2022-01-09 03:17:51', '2022-01-09 03:17:51'),
(8, 3, 4, 'Alhamdulillah, try krteci valo kicu korar.', '2022-01-09 03:19:23', '2022-01-09 03:19:23'),
(9, 3, 7, 'kmn aco?', '2022-01-09 03:19:56', '2022-01-09 03:19:56'),
(10, 1, 3, 'Laravel er kon course sikteco? kono project er kaj kreco?', '2022-04-10 23:18:42', '2022-04-10 23:18:42');

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
(3, '2019_09_16_112217_create_question_models_table', 1),
(4, '2019_09_16_112248_create_answer_models_table', 1),
(5, '2019_09_26_082151_create_reply_models_table', 1),
(6, '2020_02_16_223421_create_answer_up_down_models_table', 1),
(7, '2020_02_16_223447_create_reply_up_down_models_table', 1),
(8, '2021_06_16_152334_create_categories_table', 1),
(9, '2021_06_18_145449_create_users_table', 1),
(10, '2021_06_25_183941_create_primaryusers_table', 1),
(11, '2021_06_29_165758_create_permission_tables', 1),
(12, '2021_09_30_183221_create_question_reports_table', 1),
(13, '2021_09_30_183309_create_answer_reports_table', 1),
(14, '2021_10_12_071704_create_message_models_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 12),
(3, 'App\\User', 13),
(4, 'App\\User', 2),
(4, 'App\\User', 3),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6),
(4, 'App\\User', 7),
(4, 'App\\User', 8),
(4, 'App\\User', 9),
(4, 'App\\User', 10),
(4, 'App\\User', 11),
(4, 'App\\User', 15);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'displayWelcome', 'web', 'Question', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(2, 'addQuestion', 'web', 'Question', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(3, 'editQuestion', 'web', 'Question', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(4, 'deleteQuestion', 'web', 'Question', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(5, 'saveQuestion', 'web', 'Question', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(6, 'addcategory', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(7, 'category.store', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(8, 'categoryList', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(9, 'category.edit', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(10, 'category.update', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(11, 'category.delete', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(12, 'displayParticularCategory', 'web', 'Category', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(13, 'adduser', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(14, 'user.store', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(15, 'userlist', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(16, 'user.edit', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(17, 'user.update', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(18, 'user.delete', 'web', 'User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(19, 'addpuser', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(20, 'puser.store', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(21, 'puserlist', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(22, 'puser.edit', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(23, 'puser.update', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(24, 'puser.delete', 'web', 'Primary User', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(25, 'answers', 'web', 'Answer', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(26, 'addAnswer', 'web', 'Answer', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(27, 'editAnswer', 'web', 'Answer', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(28, 'deleteAnswer', 'web', 'Answer', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(29, 'saveAnswer', 'web', 'Answer', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(30, 'addReply', 'web', 'Reply', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(31, 'saveReply', 'web', 'Reply', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(32, 'deleteReply', 'web', 'Reply', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(33, 'editReply', 'web', 'Reply', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(34, 'roles.index', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(35, 'roles.create', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(36, 'roles.store', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(37, 'roles.update', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(38, 'roles.edit', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(39, 'roles.destroy', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(40, 'roles.show', 'web', 'Role', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(41, 'profileshow', 'web', 'Profile', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(42, 'displayParticularProfile', 'web', 'Profile', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(43, 'changepassword', 'web', 'Profile', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(44, 'update.password', 'web', 'Profile', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(45, 'ex_import', 'web', 'Export Import', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(46, 'export', 'web', 'Export Import', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(47, 'import', 'web', 'Export Import', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(48, 'downLoadFile', 'web', 'Others', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(49, 'refresh_captcha', 'web', 'Others', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(50, 'ratings', 'web', 'Ratings', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(51, 'upAnsSave', 'web', 'Upvote_Downvote', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(52, 'upDownRepSave', 'web', 'Upvote_Downvote', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(53, 'reportQuestion', 'web', 'Report', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(54, 'reportAnswer', 'web', 'Report', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(55, 'question_reportList', 'web', 'Report', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(56, 'answer_reportList', 'web', 'Report', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(57, 'delete_question_reportList', 'web', 'Report', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(58, 'delete_answer_reportList', 'web', 'Report', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(59, 'blockUser', 'web', 'Block_Unblock', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(60, 'unblockUser', 'web', 'Block_Unblock', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(61, 'messages', 'web', 'Message', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(62, 'mSave', 'web', 'Message', '2021-12-20 08:49:40', '2021-12-20 08:49:40'),
(63, 'messSL', 'web', 'Message', '2021-12-20 08:49:40', '2021-12-20 08:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `primaryusers`
--

CREATE TABLE `primaryusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `login_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctactnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primaryusers`
--

INSERT INTO `primaryusers` (`id`, `login_id`, `gmail`, `ctactnumber`, `guarnumber`, `created_at`, `updated_at`) VALUES
(1, '17CSE049', 'karimajaman9876@gmail.com', '01703986069', '01710229868', NULL, NULL),
(2, '17CSE024', 'konica@gmail.com', '01734798042', '01734798041', NULL, NULL),
(3, '17CSE053', 'nazmul@gmail.com', '01796177382', '01796177381', NULL, NULL),
(4, '17CSE047', 'mahtab@gmail.com', '01772448646', '01772448645', NULL, NULL),
(5, '17CSE06', 'bonna@gmail.com', '01799227693', '01799227692', NULL, NULL),
(6, '17CSE40', 'azhar@gmail.com', '01770583704', '01770583703', NULL, NULL),
(7, '17CSE057', 'bristy@gmail.com', '01521242931', '01521242930', NULL, NULL),
(8, '17CSE010', 'fahim@gmail.com', '01953966146', '01953966145', NULL, NULL),
(9, '17CSE034', 'joiya@gmail.com', '01741093619', '01741093618', NULL, NULL),
(10, '17CSE027', 'krisno@gmail.com', '01874558176', '01874558175', NULL, NULL),
(11, '17CSE07', 'sajib@gmail.com', '01735528352', '01735528351', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_models`
--

CREATE TABLE `question_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `quserId` bigint(20) NOT NULL,
  `qtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qcategoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qcontent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ufile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_models`
--

INSERT INTO `question_models` (`id`, `quserId`, `qtitle`, `qcategoryname`, `qcontent`, `ufile`, `created_at`, `updated_at`) VALUES
(1, 3, 'Definition of Compiler Design', '7', 'What is Compiler Design?? Please give me a answer with a short description!!!', 'Question//iW1vvX48qCAki0P2QCyhhnyW9jFsV5ct8n5wGjqm.png', '2022-01-01 12:56:02', '2022-01-01 12:56:02'),
(4, 4, 'Framework', '17', 'কি খবর সবার? অনেকদিন পরে ওয়েব ক্লাবের কাজ আবার শুরু হতে দেখে খুব ভালো লাগলো। ওয়েব ডেভেলপমেন্ট যতটা না প্রোগ্রামিং স্কিল বেশি লাগে তারচেয়ে বেশি লাগে কনসেপ্ট। এখনকার দিনে আপনি যে ল্যাঙ্গুয়েজ ই ব্যবহার করুন না কেন, ফ্রেমওয়ার্ক আপনাকে অবশ্যই ব্যবহার করতে হবে। আর ফ্রেমওয়ার্ক মানেই হলো নতুন নতুন কনসেপ্ট। ', NULL, '2022-01-08 23:42:24', '2022-01-13 04:26:52'),
(12, 9, 'c, c++, java, python', '14', 'প্রোগ্রামিং আমি কিভাবে শিখবো, শিখতে হলে আমাকে কি করতে হবে?', NULL, '2022-01-09 01:57:06', '2022-01-09 01:57:06'),
(13, 8, 'Definition of SDLC', '1', 'iuytfg..hi........ki kro...........8765ff', NULL, '2022-01-09 02:28:15', '2022-01-09 02:28:15'),
(14, 15, 'Definition of Image Space', '2', 'ইমেজ এর চারপাশের স্পেস কে আমার ইমেজ স্পেস বলতে পারি?', NULL, '2022-01-11 22:51:17', '2022-01-11 22:57:04'),
(15, 6, 'Definition of Constructor', '16', 'What is constructor?? Please give me a answer with a short description!!!', NULL, '2022-01-11 23:10:16', '2022-01-11 23:24:02'),
(16, 10, 'Definition of control word', '8', 'পরীক্ষা কেমন হয়েছে সবার?৬৫৪ ত্রেস ৭৮৭', NULL, '2022-01-11 23:28:11', '2022-01-11 23:29:14'),
(17, 7, 'Definition of DM', '15', 'Hiii,,,,,:TR ....tmi kothai aco', NULL, '2022-01-12 03:40:58', '2022-01-12 03:40:58'),
(18, 3, 'wordpress', '17', 'ওয়ার্ডপ্রেস বা ব্লগার বা জুমলা এরকম অনেক CMS আছে যেখানে অল্প টাকা ইনভেস্ট করেই বেশ ভালো ওয়েবসাইট বানানো যায়। এবং যে কেউ চাইলেই সহজেই সেটা করতে পারে। তাহলে কেউ এসব সার্ভিস ব্যবহার না করে কেন কোন ওয়েব ডেভেলপার দিয়ে সাইট ডেভেলপ করাবে?? বা কেন বেশি টাকা দিয়ে অন্যকে দিয়ে ওয়েব সাইট কোড লিখে বানিয়ে নিবে??', NULL, '2022-01-12 07:45:33', '2022-01-12 07:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `question_reports`
--

CREATE TABLE `question_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reported_by` int(11) NOT NULL,
  `reported_to` int(11) NOT NULL,
  `reported_qid` int(11) NOT NULL,
  `reported_cause` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_reports`
--

INSERT INTO `question_reports` (`id`, `reported_by`, `reported_to`, `reported_qid`, `reported_cause`, `created_at`, `updated_at`) VALUES
(4, 3, 8, 13, 'কিছু জিজ্ঞাস করে নাই, মজা করেছে ।', '2022-01-09 02:51:34', '2022-01-09 02:51:34'),
(5, 5, 10, 16, 'কোন কিছু জানতে চায় নাই,control word সম্পর্কে', '2022-01-11 23:33:16', '2022-01-11 23:33:16'),
(6, 4, 7, 17, 'DM সম্পর্কে কিছু জিজ্ঞাসা না করে অন্য গল্প করতেছে।', '2022-01-12 03:45:19', '2022-01-12 03:45:19'),
(7, 9, 8, 13, 'কোন কিছু জানতে চায় নাই SDLC সম্পর্কে।', '2022-01-12 03:48:22', '2022-01-12 03:48:22'),
(8, 2, 8, 13, 'কিছু জিজ্ঞাস করে নাই, মজা করেছে ।', '2022-01-12 03:54:46', '2022-01-12 03:54:46'),
(9, 11, 8, 13, 'কোন কিছু জানতে চায় নাই।', '2022-01-12 04:03:00', '2022-01-12 04:03:00'),
(10, 4, 10, 16, 'কোন কিছু জানতে চায় নাই,control word সম্পর্কে', '2022-01-12 04:09:17', '2022-01-12 04:09:17'),
(11, 6, 7, 17, 'DM সম্পর্কে কিছু জিজ্ঞাসা না করে অন্য গল্প করতেছে।', '2022-01-12 04:11:31', '2022-01-12 04:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `reply_models`
--

CREATE TABLE `reply_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `ruserId` bigint(20) NOT NULL,
  `aid` bigint(20) NOT NULL,
  `rfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rcontent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reply_models`
--

INSERT INTO `reply_models` (`id`, `ruserId`, `aid`, `rfile`, `rcontent`, `created_at`, `updated_at`) VALUES
(2, 2, 5, NULL, '<p>Good</p>', '2022-01-02 02:31:25', '2022-01-02 02:32:12'),
(4, 3, 3, NULL, 'Thank you,Sir!!', '2022-01-06 07:57:31', '2022-01-06 07:57:31'),
(6, 2, 1, NULL, 'i like you', '2022-01-06 09:29:23', '2022-01-06 09:30:35'),
(7, 3, 6, NULL, 'Thank you, puja!!', '2022-01-08 23:10:40', '2022-01-08 23:13:14'),
(8, 5, 10, NULL, 'Rest Api সম্পর্কে বলেন ভাই', '2022-01-09 01:16:04', '2022-01-09 01:16:04'),
(9, 4, 10, NULL, 'ওকে, পরে বলব।', '2022-01-09 01:19:00', '2022-01-09 01:35:39'),
(10, 9, 11, NULL, 'Thank you, i\'ll try my best to learn different kind of programming language.', '2022-01-09 02:06:26', '2022-01-09 02:06:26'),
(11, 15, 13, NULL, 'Ok.', '2022-01-11 23:04:03', '2022-01-11 23:04:03'),
(12, 4, 17, NULL, '@sajib vai কয়েকটি জটিল point তুলে ধরুন এতে আমরা অনেক কিছু শিখতে পারবো ।', '2022-01-12 07:53:54', '2022-01-12 07:56:15'),
(13, 3, 17, NULL, '@sajib, অনেক সময় দেখি ই-কমার্স সাইট যেমন রকমারি বা এরকম বানানো যায়। আমি এবিষয়ে অভিজ্ঞ না। আমি ধারণা নিয়ে বলেছি শুধু।', '2022-01-12 07:58:07', '2022-01-12 07:58:32'),
(14, 11, 17, NULL, '@karima, না, রকমারির মত সাইট বানানো যায় না। এই বিষয়ে গভীরে না জানলে আপনি পার্থক্য বুঝতে পারবেন না। চাইনিজ অনেক মোবাইল দেখতে আইফোনের মত। কিন্তু সেগুলো আইফোন নয়। কি কি পার্থক্য আছে, সেটা অনেক ব্যাপক বিষয়।', '2022-01-12 08:00:44', '2022-01-12 08:07:44'),
(15, 3, 18, NULL, 'ধন্যবাদ। আমি বুঝতে পেরেছি।', '2022-01-12 08:04:20', '2022-01-12 08:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `reply_up_down_models`
--

CREATE TABLE `reply_up_down_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `ruserId` bigint(20) NOT NULL,
  `ans_id` bigint(20) NOT NULL,
  `rup` bigint(20) NOT NULL,
  `rdown` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reply_up_down_models`
--

INSERT INTO `reply_up_down_models` (`id`, `ruserId`, `ans_id`, `rup`, `rdown`, `created_at`, `updated_at`) VALUES
(1, 3, 7, 1, 0, '2022-01-08 23:25:16', '2022-01-08 23:31:27'),
(2, 4, 8, 1, 0, '2022-01-09 01:19:10', '2022-01-09 01:19:10'),
(3, 15, 11, 1, 0, '2022-01-11 23:04:13', '2022-01-11 23:04:13'),
(4, 10, 10, 1, 0, '2022-01-11 23:39:19', '2022-01-11 23:39:19'),
(5, 7, 10, 1, 0, '2022-01-12 03:42:13', '2022-01-12 03:42:13'),
(6, 3, 12, 1, 0, '2022-01-12 07:58:40', '2022-01-12 07:58:40'),
(7, 11, 14, 1, 0, '2022-01-12 08:01:18', '2022-01-12 08:01:18'),
(8, 11, 13, 1, 0, '2022-01-12 08:01:24', '2022-01-12 08:01:24'),
(9, 11, 12, 1, 0, '2022-01-12 08:01:28', '2022-01-12 08:01:28'),
(10, 3, 14, 1, 0, '2022-01-12 08:03:47', '2022-01-12 08:03:47'),
(11, 11, 15, 1, 0, '2022-01-12 08:07:18', '2022-01-12 08:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(2, 'chairman', 'web', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(3, 'teacher', 'web', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(4, 'student', 'web', '2021-12-20 08:49:39', '2021-12-20 08:49:39'),
(5, 'block_user', 'web', '2022-01-05 12:05:41', '2022-01-05 12:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 3),
(26, 4),
(27, 1),
(28, 1),
(29, 1),
(29, 3),
(29, 4),
(30, 1),
(30, 3),
(30, 4),
(31, 1),
(31, 3),
(31, 4),
(32, 1),
(33, 1),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(51, 1),
(51, 3),
(51, 4),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 4),
(54, 1),
(54, 4),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(61, 3),
(61, 4),
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(63, 1),
(63, 2),
(63, 3),
(63, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ses` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarcontact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `student_id`, `username`, `email`, `password`, `name`, `department`, `ses`, `iname`, `fname`, `mname`, `address`, `birth_date`, `cnumber`, `guarcontact`, `blood_group`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '00001', 'Superadmin', 'superadmin@gmail.com', '$2y$10$lDfsFfVP.qIrSrDZmSvWV.gswn0mvvCGRDY9ksgsVVQDaC8rWXTSe', 'Superadmin', 'CSE', NULL, 'BSMRSTU', NULL, NULL, 'Dhaka,Bangladesh', '03-05-1988', '01703986065', NULL, 'AB+', 'img/brand/1720775589049093.png', NULL, '2019-12-31 18:00:00', '2022-01-02 08:21:17'),
(2, '17CSE066', 'Puja', 'puja@gmail.com', '$2y$10$MSVUlT/skFNjDRFWk5ChCO5SGyQnMdy0Ub6b/YIO4.mYkqsdwmzIu', 'Puja', 'CSE', '2017-2018', 'BSMRSTU', 'Omor saha', 'Amina khatun', 'Gopalganj', '14-3-1999', '01703986068', '01710229869', 'A+', 'img/brand/1720763948576806.jpg', NULL, NULL, NULL),
(3, '17CSE049', 'karima', 'karimajaman9876@gmail.com', '$2y$10$LhIh0w9OjLyc.buYXV9MmuRSXDj8YoOjmrv3Jox8A.EXxbfy93HkO', 'karima', 'CSE', '2017-2018', 'BSMRSTU', 'Nurul Islam', 'Yasmen Begum', 'Bhanga,Faridpr', '14-02-1999', '01703986069', '01710229868', 'A+', 'img/brand/1720764554197351.jpg', '629ozkV2YorGtJRz3XeFSduTAmbv0fYEGJmchYQXjIpgPXM5infhSL9rkzAj', '2022-01-01 08:56:00', '2022-02-11 23:06:25'),
(4, '17CSE20', 'Aminul', 'aminul@gmail.com', '$2y$10$EKBmIcAdgiDPKIKF40sn2ePdh08QOD8R.YbArNL1/Zl1/ypDUXN8q', 'Aminul', 'CSE', '2017-2018', 'BSMRSTU', 'Amir Hossain', 'AminaBegum', 'Bhanga,Faridpr', '14-3-1998', '01742676172', '01742676171', 'B+', 'img/brand/1720765215824757.jpg', NULL, NULL, NULL),
(5, '17CSE0053', 'Nazmul', 'nazmul@gmail.com', '$2y$10$TU.54ocSzWKu4VHqTMSJiOJ4fdIxGDP7g.kzxk4QFeINuN61c7.8S', 'Nazmul', 'CSE', '2017-2018', 'BSMRSTU', 'Roshid Islam', 'Rabeya Begum', 'Dinajpur', '17-10-1998', '01796177382', '01796177381', 'A+', 'img/brand/1720768632098859.jpg', NULL, NULL, NULL),
(6, '17CSE029', 'Sopon', 'sopon@gmail.com', '$2y$10$qMh2Y/SmSOg4JqIxw02wteFuZtz0IV3tyQY.LEcDw3482ZYzHN/d.', 'Sopon', 'CSE', '2017-2018', 'BSMRSTU', 'AKram Hossain', 'Amina khatun', 'Jamalpur', '14-8-1998', '01628234906', '01628234905', 'AB+', 'img/brand/1720768878714107.jpg', NULL, NULL, NULL),
(7, '17CSE06', 'Bonna', 'bonna@gmail.com', '$2y$10$gYSOO40VzHwvnEKsJES0/.YZtYzfDDktduI3aoIoj6oGGvRUKYhBm', 'Bonna', 'CSE', '2017-2018', 'BSMRSTU', 'Bidar Hossain', 'Ayrin Parvin', 'Satkhira', '26-05-1998', '01799227693', '01799227692', 'O+', 'img/brand/1720769257452284.jpg', NULL, NULL, NULL),
(8, '17CSE055', 'Dinu', 'dinu@gmail.com', '$2y$10$fkscgRUaBNPPLfmp6YIFuus9YI2kp.EsvzHradPG9XzoNamY5asqS', 'Dinu', 'CSE', '2017-2018', 'BSMRSTU', 'Abdul Hossain', 'Shima Begum', 'Modhukhali,Faridpr', '26-02-1998', '01742676175', '01742676145', 'A-', 'img/brand/1720769559997396.jpg', NULL, NULL, '2022-01-09 02:19:18'),
(9, '17CSE034', 'Joiya', 'joiya@gmail.com', '$2y$10$A.p9xsPhxj/Km9r.hNZypugCDlZJSQ0l22NkazXRh3MOIIa2YIAri', 'Joiya', 'CSE', '2017-2018', 'BSMRSTU', 'Amir Hossain', 'Rabeya Begum', 'Bhanga,Faridpr', '11-10-1998', '01741093619', '01741093618', 'AB+', 'img/brand/1720769760323379.jpg', NULL, NULL, NULL),
(10, '17CSE024', 'Konika', 'konica@gmail.com', '$2y$10$65ZHESMW3wY91T8rlQnkpeWVwm9ITelAXfa4V80kleLXIJOjxzPIO', 'Konica', 'CSE', '2017-2018', 'BSMRSTU', 'Roton Shaha', 'Monika Begum', 'Madaripur', '14-8-1999', '01734798042', '01734798041', 'B+', 'img/brand/1720769972820645.jpg', NULL, NULL, NULL),
(11, '17CSE07', 'Sajib', 'sajib@gmail.com', '$2y$10$FNOkVZm.Fck55JJAMwGj9..y/DWgdVsKWK5MOJNgjI3.nRx1IYfg6', 'Sajib', 'CSE', '2017-2018', 'BSMRSTU', 'Ranjit Roy', 'Minoti Begum', 'Madhukhali,Faridpur', '22-8-1999', '01735528352', '01735528351', 'A+', 'img/brand/1720771212347831.jpg', NULL, NULL, NULL),
(12, '00002', 'Chairman', 'chairman@gmail.com', '$2y$10$nHIzZsN7pRcYPm4.QeZ25OcRkjPeQGxGm8tBrS0epEjHgerr1mM22', 'Chairman', 'CSE', NULL, 'BSMRSTU', NULL, NULL, 'Gopalganj', '26-05-1985', '01742676172', NULL, 'AB+', 'img/brand/1720776937552754.jpg', NULL, NULL, NULL),
(13, '00003', 'Teacher', 'teacher@gmail.com', '$2y$10$3/ZG8FdLWQ5w5w61A5VpB.wwCsceB3zccYWCLtOsh.96qAXhF.5sy', 'Teacher', 'CSE', NULL, 'BSMRSTU', NULL, NULL, 'Gopalganj', '17-04-1985', '01703986045', NULL, 'O+', 'img/brand/1720777628254996.jpg', NULL, NULL, NULL),
(15, '16CSE09', 'Moon', 'moon@gmail.com', '$2y$10$8hOIpp/..mlgq/GMADoole4up0cAZ82eTg9s2GBV4J5zWburSyRua', 'Moon', 'CSE', '2017-2018', 'BSMRSTU', NULL, NULL, 'Bhanga,Faridpr', '26-05-1998', '01703986067', '01703986064', 'A-', 'img/brand/1721677354893366.jpg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer_models`
--
ALTER TABLE `answer_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_reports`
--
ALTER TABLE `answer_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_up_down_models`
--
ALTER TABLE `answer_up_down_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_models`
--
ALTER TABLE `message_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `primaryusers`
--
ALTER TABLE `primaryusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_models`
--
ALTER TABLE `question_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_reports`
--
ALTER TABLE `question_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_models`
--
ALTER TABLE `reply_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_up_down_models`
--
ALTER TABLE `reply_up_down_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_student_id_unique` (`student_id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer_models`
--
ALTER TABLE `answer_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `answer_reports`
--
ALTER TABLE `answer_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `answer_up_down_models`
--
ALTER TABLE `answer_up_down_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_models`
--
ALTER TABLE `message_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `primaryusers`
--
ALTER TABLE `primaryusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `question_models`
--
ALTER TABLE `question_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `question_reports`
--
ALTER TABLE `question_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reply_models`
--
ALTER TABLE `reply_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reply_up_down_models`
--
ALTER TABLE `reply_up_down_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
