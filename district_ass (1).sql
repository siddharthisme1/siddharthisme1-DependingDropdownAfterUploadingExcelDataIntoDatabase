-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 05:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d_dropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `district_ass`
--

CREATE TABLE `district_ass` (
  `id` int(10) NOT NULL,
  `district_name` varchar(200) NOT NULL,
  `ac_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district_ass`
--

INSERT INTO `district_ass` (`id`, `district_name`, `ac_name`) VALUES
(289, 'Ahmednagar', 'Shrirampur'),
(290, 'Ahmednagar', 'Sangamner'),
(291, 'Ahmednagar', 'Kopargaon'),
(292, 'Ahmednagar', 'Akole'),
(293, 'Ahmednagar', 'Nevasa'),
(294, 'Ahmednagar', 'Shirdi'),
(295, 'Ahmednagar', 'Ahmednagar City'),
(296, 'Ahmednagar', 'Parner'),
(297, 'Ahmednagar', 'Shevgaon'),
(298, 'Ahmednagar', 'Rahuri'),
(299, 'Ahmednagar', 'Shrigonda'),
(300, 'Ahmednagar', 'Karjat Jamkhed'),
(301, 'Akola', 'Akola West'),
(302, 'Akola', 'Akola East'),
(303, 'Akola', 'Balapur'),
(304, 'Akola', 'Murtizapur'),
(305, 'Akola', 'Akot'),
(306, 'Amravati', 'Morshi'),
(307, 'Amravati', 'Teosa'),
(308, 'Amravati', 'Amravati'),
(309, 'Amravati', 'Daryapur'),
(310, 'Amravati', 'Achalpur'),
(311, 'Amravati', 'Badnera'),
(312, 'Amravati', 'Melghat'),
(313, 'Amravati', 'Dhamamgaon Railway'),
(314, 'Aurangabad', 'Paithan'),
(315, 'Aurangabad', 'Vaijapur'),
(316, 'Aurangabad', 'Aurangabad West'),
(317, 'Aurangabad', 'Sillod'),
(318, 'Aurangabad', 'Kannad'),
(319, 'Aurangabad', 'Aurangabad Central'),
(320, 'Aurangabad', 'Gangapur'),
(321, 'Aurangabad', 'Aurangabad East'),
(322, 'Aurangabad', 'Phulambri'),
(323, 'Beed', 'Georai'),
(324, 'Beed', 'Beed'),
(325, 'Beed', 'Ashti'),
(326, 'Beed', 'Kaij'),
(327, 'Beed', 'Parli'),
(328, 'Beed', 'Majalgaon'),
(329, 'Bhandara', 'Bhandara'),
(330, 'Bhandara', 'Tumsar'),
(331, 'Bhandara', 'Sakoli'),
(332, 'Buldhana', 'Mehkar'),
(333, 'Buldhana', 'Buldhana'),
(334, 'Buldhana', 'Sindkhed Raja'),
(335, 'Buldhana', 'Khamgaon'),
(336, 'Buldhana', 'Chikhli'),
(337, 'Buldhana', 'Jalgaon (Jamod)'),
(338, 'Buldhana', 'Malkapur'),
(339, 'Chandrapur', 'Warora'),
(340, 'Chandrapur', 'Chandrapur'),
(341, 'Chandrapur', 'Chimur'),
(342, 'Chandrapur', 'Brahmapuri'),
(343, 'Chandrapur', 'Ballarpur'),
(344, 'Chandrapur', 'Rajura'),
(345, 'Dhule', 'Sakri'),
(346, 'Dhule', 'Dhule City'),
(347, 'Dhule', 'Dhule Rural'),
(348, 'Dhule', 'Shirpur'),
(349, 'Dhule', 'Shindkheda'),
(350, 'Gadchiroli', 'Gadchiroli'),
(351, 'Gadchiroli', 'Armori'),
(352, 'Gadchiroli', 'Aheri'),
(353, 'Gondiya', 'Amgaon'),
(354, 'Gondiya', 'Gondiya'),
(355, 'Gondiya', 'Arjuni-Morgaon'),
(356, 'Gondiya', 'Tirora'),
(357, 'Hingoli', 'Kalamnuri'),
(358, 'Hingoli', 'Basmath'),
(359, 'Hingoli', 'Hingoli'),
(360, 'Jalgaon', 'Jalgaon Rural'),
(361, 'Jalgaon', 'Pachora'),
(362, 'Jalgaon', 'Chopda'),
(363, 'Jalgaon', 'Erandol'),
(364, 'Jalgaon', 'Muktainagar'),
(365, 'Jalgaon', 'Bhusawal'),
(366, 'Jalgaon', 'Jalgaon City'),
(367, 'Jalgaon', 'Chalisgaon'),
(368, 'Jalgaon', 'Raver'),
(369, 'Jalgaon', 'Amalner'),
(370, 'Jalgaon', 'Jamner	'),
(371, 'Jalna', 'Jalna'),
(372, 'Jalna', 'Ghansawangi'),
(373, 'Jalna', 'Partur'),
(374, 'Jalna', 'Badnapur'),
(375, 'Jalna', 'Bhokardan'),
(376, 'Kolhapur', 'Radhanagari'),
(377, 'Kolhapur', 'Hatkanangle'),
(378, 'Kolhapur', 'Shirol'),
(379, 'Kolhapur', 'Kolhapur North'),
(380, 'Kolhapur', 'Karvir'),
(381, 'Kolhapur', 'Kolhapur South'),
(382, 'Kolhapur', 'Kagal'),
(383, 'Kolhapur', 'Ichalkaranji'),
(384, 'Kolhapur', 'Chandgad'),
(385, 'Kolhapur', 'Shahuwadi'),
(386, 'Latur', 'Ausa'),
(387, 'Latur', 'Ahmadpur'),
(388, 'Latur', 'Latur City'),
(389, 'Latur', 'Latur Rural'),
(390, 'Latur', 'Udgir'),
(391, 'Latur', 'Nilanga'),
(392, 'Mumbai City', 'Mahim'),
(393, 'Mumbai City', 'Shivadi'),
(394, 'Mumbai City', 'Wadala'),
(395, 'Mumbai City', 'Byculla'),
(396, 'Mumbai City', 'Worli'),
(397, 'Mumbai City', 'Colaba'),
(398, 'Mumbai City', 'Malabar Hill'),
(399, 'Mumbai City', 'Mumbadevi'),
(400, 'Mumbai City', 'Dharavi'),
(401, 'Mumbai City', 'Sion Koliwada'),
(402, 'Mumbai Suburban', 'Magathane'),
(403, 'Mumbai Suburban', 'Jogeshwari East'),
(404, 'Mumbai Suburban', 'Kandivali East'),
(405, 'Mumbai Suburban', 'Dindoshi'),
(406, 'Mumbai Suburban', 'Borivali'),
(407, 'Mumbai Suburban', 'Goregaon'),
(408, 'Mumbai Suburban', 'Chandivali'),
(409, 'Mumbai Suburban', 'Andheri East'),
(410, 'Mumbai Suburban', 'Andheri West'),
(411, 'Mumbai Suburban', 'Anushakti Nagar'),
(412, 'Mumbai Suburban', 'Mankhurd Shivaji Nagar'),
(413, 'Mumbai Suburban', 'Ghatkopar East'),
(414, 'Mumbai Suburban', 'Chembur'),
(415, 'Mumbai Suburban', 'Versova'),
(416, 'Mumbai Suburban', 'Kurla(SC)'),
(417, 'Mumbai Suburban', 'Kalina'),
(418, 'Mumbai Suburban', 'Vandre West'),
(419, 'Mumbai Suburban', 'Vandre East'),
(420, 'Mumbai Suburban', 'Bhandup West'),
(421, 'Mumbai Suburban', 'Vikhroli'),
(422, 'Mumbai Suburban', 'Ghatkopar West'),
(423, 'Mumbai Suburban', 'Dahisar'),
(424, 'Mumbai Suburban', 'Malad West'),
(425, 'Mumbai Suburban', 'Charkop'),
(426, 'Mumbai Suburban', 'Mulund'),
(427, 'Mumbai Suburban', 'Vile Parle'),
(428, 'Nagpur', 'Ramtek'),
(429, 'Nagpur', 'Katol'),
(430, 'Nagpur', 'Umred'),
(431, 'Nagpur', 'Savner'),
(432, 'Nagpur', 'Kamthi'),
(433, 'Nagpur', 'Nagpur South West'),
(434, 'Nagpur', 'Nagpur Central'),
(435, 'Nagpur', 'Nagpur North'),
(436, 'Nagpur', 'Hingna'),
(437, 'Nagpur', 'Nagpur South'),
(438, 'Nagpur', 'Nagpur West'),
(439, 'Nagpur', 'Nagpur East'),
(440, 'Nanded', 'Hadgaon'),
(441, 'Nanded', 'Kinwat'),
(442, 'Nanded', 'Nanded South'),
(443, 'Nanded', 'Loha'),
(444, 'Nanded', 'Nanded North'),
(445, 'Nanded', 'Naigaon'),
(446, 'Nanded', 'Deglur'),
(447, 'Nanded', 'Mukhed'),
(448, 'Nanded', 'Bhokar'),
(449, 'Nandurabar', 'Akkalkuwa'),
(450, 'Nandurabar', 'Nandurbar'),
(451, 'Nandurabar', 'Nawapur'),
(452, 'Nandurabar', 'Shahada'),
(453, 'Nashik', 'Nandgaon'),
(454, 'Nashik', 'Malegaon Outer'),
(455, 'Nashik', 'Igatpuri'),
(456, 'Nashik', 'Devlali'),
(457, 'Nashik', 'Nashik West'),
(458, 'Nashik', 'Nashik Central'),
(459, 'Nashik', 'Niphad'),
(460, 'Nashik', 'Sinnar'),
(461, 'Nashik', 'Nashik East'),
(462, 'Nashik', 'Kalwan'),
(463, 'Nashik', 'Yevla'),
(464, 'Nashik', 'Baglan'),
(465, 'Nashik', 'Dindori'),
(466, 'Nashik', 'Malegaon Central'),
(467, 'Nashik', 'Chandvad'),
(468, 'Osmanabad', 'Paranda'),
(469, 'Osmanabad', 'Umarga'),
(470, 'Osmanabad', 'Osmanabad'),
(471, 'Osmanabad', 'Tuljapur'),
(472, 'Palghar', 'Palghar'),
(473, 'Palghar', 'Vikramgad'),
(474, 'Palghar', 'Boisar'),
(475, 'Palghar', 'Vasai'),
(476, 'Palghar', 'Nalasopara'),
(477, 'Palghar', 'Dahanu'),
(478, 'Parbhani', 'Pathri'),
(479, 'Parbhani', 'Parbhani'),
(480, 'Parbhani', 'Gangakhed'),
(481, 'Parbhani', 'Jintur'),
(482, 'Pune', 'Chinchwad'),
(483, 'Pune', 'Pimpri'),
(484, 'Pune', 'Purandar'),
(485, 'Pune', 'Junnar'),
(486, 'Pune', 'Bhor'),
(487, 'Pune', 'Kothrud'),
(488, 'Pune', 'Bhosari'),
(489, 'Pune', 'Maval'),
(490, 'Pune', 'Ambegaon'),
(491, 'Pune', 'Shirur'),
(492, 'Pune', 'Hadapsar'),
(493, 'Pune', 'Khed Alandi'),
(494, 'Pune', 'Shivajinagar'),
(495, 'Pune', 'Pune Cantonment'),
(496, 'Pune', 'Baramati'),
(497, 'Pune', 'Khadakwasala'),
(498, 'Pune', 'Kasbapeth'),
(499, 'Pune', 'Parvati'),
(500, 'Pune', 'Vadgaon Sheri'),
(501, 'Pune', 'Indapur'),
(502, 'Pune', 'Daund'),
(503, 'Raigad', 'Mahad'),
(504, 'Raigad', 'Karjat'),
(505, 'Raigad', 'Alibag'),
(506, 'Raigad', 'Panvel'),
(507, 'Raigad', 'Pen'),
(508, 'Raigad', 'Shrivardhan'),
(509, 'Raigad', 'Uran'),
(510, 'Ratnagiri', 'Dapoli'),
(511, 'Ratnagiri', 'Ratnagiri'),
(512, 'Ratnagiri', 'Rajapur'),
(513, 'Ratnagiri', 'Guhagar'),
(514, 'Ratnagiri', 'Chiplun'),
(515, 'Sangli', 'Khanapur'),
(516, 'Sangli', 'Islampur'),
(517, 'Sangli', 'Shirala'),
(518, 'Sangli', 'Sangli'),
(519, 'Sangli', 'Miraj'),
(520, 'Sangli', 'Jath'),
(521, 'Sangli', 'Tasgaon-Kavathe Mahankal'),
(522, 'Sangli', 'Palus-Kadegaon'),
(523, 'Satara', 'Patan'),
(524, 'Satara', 'Koregaon'),
(525, 'Satara', 'Karad North');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district_ass`
--
ALTER TABLE `district_ass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district_ass`
--
ALTER TABLE `district_ass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
