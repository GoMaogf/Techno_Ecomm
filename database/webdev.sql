-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 10:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(14, 20, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Electrical', 'electrical'),
(2, 'Pipes and Tubes', 'pipe and tubes'),
(3, 'Fastener', 'fastener'),
(4, 'Tools', 'tools');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 1, 1),
(22, 12, 1, 1),
(23, 12, 7, 1),
(24, 13, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Omni Regular Plug', '<p>A plug on a piece of electrical equipment is a small plastic object with two or three metal pins that fit into the holes of an electric outlet, allowing the equipment to connect to the electricity supply</p>\r\n', 'omni-regular-plug', 25, 'omni-regular-plug_1677127720.PNG', '2023-03-01', 5),
(2, 1, 'Firefly LED Bulb 3w', '<p>Firefly LED lamp technology produces the proper amount of lumens to diectly replace common household versions of CFL and incandescent lamps.&nbsp;Light-Emitting Diode (LED) bulb have a lifespan and electrical efficiency which are several times greater than incandescent lamps, and are significantly more efficient than most fluorescent lamps</p>\r\n', 'firefly-led-bulb-3w', 70, 'firefly-led-bulb-3w.PNG', '2023-03-01', 1),
(3, 1, 'DOUBLE WIRE RED AND BLACK per meter', '<p>Products are widely used in electronics, batteries, model aircrafts batterry, Model wiring harness, Electric appliance, and equipment, Instrument internal connections.</p>\r\n', 'double-wire-red-and-black-per-meter', 7, 'double-wire-red-and-black-per-meter.PNG', '2023-02-23', 1),
(4, 1, 'Wire max flatcord wire per meter', '<p>Flat cables allow for compact designs of electrical conductors and tubing, encasing power, signal, video, data and even pneumatic tubing in one flat profile. By eliminating the multiple layers of fillers, shielding and jacketing used in round cables, they offer reduced space and weight and extremely long lives.</p>\r\n', 'wire-max-flatcord-wire-per-meter', 25, 'wire-max-flatcord-wire-per-meter.jpg', '2023-03-01', 3),
(5, 1, 'Panasonic Wide Series 1 Way Switches', '<p>A One Way switch is used&nbsp;<strong>when you only have one switch for a light</strong>, for example, a bedroom ceiling light. These are the cheapest switches available as the circuit is very simple and easy to make, making it the most basic and widely available types of switch on the market.</p>\r\n', 'panasonic-wide-series-1-way-switches', 57, 'panasonic-wide-series-1-way-switches.PNG', '0000-00-00', 0),
(6, 2, 'Stainless Tubes per foot ', '<p>High-quality standard and special grade of seamless stainless steel tube and welded stainless steel tubing. Our 300 series has increased strength and corrosion resistance for applications in harsh environments, meeting the requirements for your stainless tube projects. ASTM standard specifications include A213 seamless tube, A269 welded tube, A511 seamless mechanical tube and A554 ornamental tube, with annealed and pickled as well as bright annealed manufacturing options. Tube cutting and polishing services customize your order to job specifications.</p>\r\n', 'stainless-tubes-per-foot', 135, 'stainless-tubes-per-foot.PNG', '2023-03-01', 1),
(7, 2, 'GI Nipple ', '<p>A fitting or adapter is used in pipe systems to connect straight sections of pipe or tube, adapt to different sizes or shapes, and for other purposes such as regulating (or measuring) fluid flow.[1] These fittings are used in plumbing to manipulate the conveyance of water, gas, or liquid waste in domestic or commercial environments, within a system of pipes or tubes</p>\r\n', 'gi-nipple', 75, 'gi-nipple.PNG', '2023-03-01', 29),
(8, 2, 'Steel Plain Round Bar per foot', '<p>&nbsp;</p>\r\n\r\n<p>Steel round bars are available in hot rolled or cold rolled. Hot rolled round bar is typically used for applications like construction where finish and precise dimensions aren&rsquo;t a priority. Conversely, cold rolled round bar is used for applications where a superior surface finish and exact dimensions are essential. Some common applications of steel round bar include frameworks, supports, braces, shafts, and axles.</p>\r\n', 'steel-plain-round-bar-per-foot', 150, 'steel-plain-round-bar-per-foot_1677233891.PNG', '2023-02-24', 1),
(9, 2, 'Blue Pipe 20ft 2\" Neltex Imperial', '<p>Blue pipe labels are associated with compressed air, and in some cases compressed steam. Sticking to the ANSI/ASME A13.1 pipe marking standard is essential to not only stay in compliance with OSHA but to also keep employees safe from the hazards that are contained in piping systems.</p>\r\n', 'blue-pipe-20ft-2-neltex-imperial', 1050, 'blue-pipe-20ft-2-neltex-imperial.PNG', '0000-00-00', 0),
(10, 2, 'PVC Neltex per meter ', '<p>The PVC orange pipes are one of the pipe materials that every construction needs. They are not prone to any corrosion, chemical resistant, flame retardant, and maintenance-free. PVC orange pipes and fittings are widely used for transporting water from potable and non-potable water.</p>\r\n', 'pvc-neltex-per-meter', 272, 'pvc-neltex-per-meter.PNG', '0000-00-00', 0),
(11, 3, 'Wood Screws per 10 pcs', '<p>Wood screws are handy for quickly building jigs and clamping forms, joining cabinet and furniture parts, mounting hardware and trim, and much more. Screws form strong connections between parts made from solid wood, plywood and other sheet goods without the need for cut joinery.</p>\r\n', 'wood-screws-per-10-pcs', 15, 'wood-screws-per-10-pcs.PNG', '2023-03-01', 1),
(12, 3, 'Machine Screw 50 pcs', '<p>Machine screws are used to clamp machine parts together, either when one of the parts has a threaded hole or in conjunction with a nut. These screws stretch when tightened, and the tensile load created clamps the parts together.</p>\r\n', 'machine-screw-50-pcs', 119, 'machine-screw-50-pcs.PNG', '2023-03-01', 1),
(13, 3, 'Hex Bolts 10 pcs ', '<p>Hex bolts are a type of threaded bolt, characterised by their six-sided hexagonal-shaped head. Hex bolts can be either fully threaded or partially threaded (featuring a clear shank along part of the body) and are suitable for use in a wide range of applications, typically machinery and construction.</p>\r\n', 'hex-bolts-10-pcs', 22.5, 'hex-bolts-10-pcs.PNG', '0000-00-00', 0),
(14, 3, 'Metal Screw 10 pcs', '<p>A sheet metal screw is a type of hardware used for fastening metal objects. It consists of a threaded shank with a flat or rounded head. Unlike wood screws, which are only partially threaded, a sheet metal screw has a shank that is threaded down its entire length. The threads and tip of the screw are sharp, which allows them to easily cut through metal, wood and other objects. These screws are used to secure one metal object to another, or to fasten metal items to wood, plastic or various other materials.</p>\r\n', 'metal-screw-10-pcs', 50, 'metal-screw-10-pcs.PNG', '0000-00-00', 0),
(15, 3, 'Lag Screw 50 pcs', '<p>Lag screws, also called lag bolts, are large wood screws with hexagonal heads. They&#39;re used in a variety of applications where it is important to have a screw with lots of holding power. They are typically used to secure lumber and other heavy materials that bear a lot of weight or stress.</p>\r\n', 'lag-screw-50-pcs', 119, 'lag-screw-50-pcs.PNG', '0000-00-00', 0),
(16, 3, 'Tin Washer  10 pcs', '<p>A washer is a thin plate with a hole (typically in the middle) that is normally used to distribute the load of a threaded fastener, such as a bolt or nut.</p>\r\n', 'tin-washer-10-pcs', 15, 'tin-washer-10-pcs.PNG', '0000-00-00', 0),
(17, 4, 'Tolsen Ball Pein Hammer', '<p>Normally used by a machinist or an engineer, the ball pein is used for peening, shaping metal and closing rivets (metalworking). With two heads, one being flat and the other round, it is suitable for specific tasks.<br />\r\n&nbsp;<br />\r\nThe ball/round end can be used to round off edges of metal pins and fasteners in addition to making gaskets for mating surfaces. On the other hand, the flat end of the hammer is often employed to strike punches and chisels.</p>\r\n', 'tolsen-ball-pein-hammer', 355, 'tolsen-ball-pein-hammer_1677079752.jpg', '2023-03-01', 1),
(18, 4, 'Stanley Claw Hammer', '<p>Claw hammers are one of the most popular hammers for general work. Their handles come in various materials - wood, steel, glass-fiber and more. With a rubber grip, it is easier for you to exert force without experiencing any hand fatigue.<br />\r\n&nbsp;<br />\r\nThe hammer&rsquo;s claw is normally curved, incorporating a &lsquo;V&rsquo; shaped structure which is suitable for any woodworking, prying or finishing jobs. The curved claw allows you to pull out any stubborn nails and perform other jobs where a lever is required.</p>\r\n', 'stanley-claw-hammer', 600, 'stanley-claw-hammer_1677078281.jpg', '2018-07-09', 3),
(19, 4, 'M10 Heavy Duty Cross Pein Hammer', '<p>Also known as&nbsp;Warrington Pattern hammers, cross peins are often considered a carpenter&rsquo;s hammer. It is also&nbsp;a tool that is most useful domestically.<br />\r\n&nbsp;<br />\r\nOther than shaping metals, they are used for starting panel pins and tacks. The chiseled side of the hammer&rsquo;s head is first used to start the nail. Then, it is reversed and the nail is driven by the flat side of the hammer.<br />\r\n&nbsp;</p>\r\n', 'm10-heavy-duty-cross-pein-hammer', 355, 'm10-heavy-duty-cross-pein-hammer_1677079107.jpg', '0000-00-00', 0),
(20, 4, 'Ohsho  Mirror Sheet Metal Hammer', '<p>Both ends of the hammer&rsquo;s head namely the wide flat circular head and the chisel-shaped head are used for &lsquo;pecking&rsquo; metals to shape them.<br />\r\n&nbsp;<br />\r\nThe specialized heads of the hammer allow you to bend, indent, mark, shift, stretch and form a sheet of metal - producing precise bends and formations based on your needs.</p>\r\n', 'ohsho-mirror-sheet-metal-hammer', 1520, 'ohsho-mirror-sheet-metal-hammer_1677079624.jpg', '0000-00-00', 0),
(21, 4, 'BUTTERFLY Tools Aluminum Level Bar with Magnet', '<p>Built-in magnet at the bottom of the tool that adheres strongly to metal surfaces. Big surround-view vials reflect ambient light for an easy read.<br />\r\nThe tool offers high accuracy with easy to read level bubbles (Provides maximum readability).</p>\r\n', 'butterfly-tools-aluminum-level-bar-magnet', 189, 'butterfly-tools-aluminum-level-bar-magnet.PNG', '0000-00-00', 0),
(22, 4, 'Stanley Tylon Steel Heavy Duty Tape Measure', '<p>With blade lock for convenience and ease of use.<br />\r\nThe tape can be extended smoothly.<br />\r\nHeat-treated spring for lasting durability and reliability.<br />\r\nShows the measurements in Inches/Feet and Centimetres/Metres<br />\r\nBold numbers are easy to read.<br />\r\nThe shock-absorbent casing provides added impact protection and keeps tape safe inside.<br />\r\nProvides accurate measurements for carpenters, builders and more.</p>\r\n', 'stanley-tylon-steel-heavy-duty-tape-measure', 200, 'stanley-tylon-steel-heavy-duty-tape-measure_1677081835.PNG', '0000-00-00', 0),
(23, 4, 'Stanley Long Nose Pliers', '<p>An anti-slip handle makes it convenient for operation (and also reduces hand fatigue).<br />\r\nFixed joint design is ideal for bending, twisting, and cutting.<br />\r\nLong nose design is ideal for use in hard-to-reach areas.<br />\r\nThe blade is processed with a special hardening treatment which offers a perfect cutting effect.</p>\r\n', 'stanley-long-nose-pliers', 235, 'stanley-long-nose-pliers_1677082338.PNG', '0000-00-00', 0),
(24, 4, 'Lotus Toolbox Diagonal Plier', '<p>Induction-hardened cutting edge - ensures that the pliers stay sharp.<br />\r\nThick, sturdy, and durable, yet lightweight for easy carry and use.<br />\r\nComfortable grips that provide great leverage &amp; reduce hand fatigue.<br />\r\nThe angled head design ensures easy work in confined spaces.</p>\r\n', 'lotus-toolbox-diagonal-plier', 152, 'lotus-toolbox-diagonal-plier.PNG', '0000-00-00', 0),
(25, 4, 'Mr.HW ANTON COMBINATION PLIERS', '<p>An anti-slip handle makes it convenient for operation (and also reduces hand fatigue).<br />\r\nFixed joint design is ideal for bending, twisting, and cutting.<br />\r\nThe blades are processed with a special hardening treatment which offers a perfect cutting effect.</p>\r\n', 'mr-hw-anton-combination-pliers', 208, 'mr-hw-anton-combination-pliers.PNG', '0000-00-00', 0),
(37, 4, 'BUTTERFLY Tools Hand Saw', '<p>Fast &amp; clean cuts - The hand saw has an exclusive tooth geometry and fine teeth for fast &amp; clean cuts.<br />\r\nInduction hardened teeth for long-lasting hardness &amp; durability.<br />\r\nStraight angles on handle design provide a handy way to mark 45- and 90-degree angles.</p>\r\n', 'butterfly-tools-hand-saw', 329, 'butterfly-tools-hand-saw.PNG', '0000-00-00', 0),
(38, 4, 'Stanley Hack Saw Frame', '<p>Durable saw made to last.<br />\r\nVirtually unbreakablebimetal bladefor superb cutting performance, wear-resistance and safety.<br />\r\nDesigned for demanding applications and tough environments of construction sites.<br />\r\nThe saw has an innovative tensioning mechanism for high blade tension and straight cutting.</p>\r\n', 'stanley-hack-saw-frame', 350, 'stanley-hack-saw-frame.PNG', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(11, 9, 'PAYID-MP5AL3A0WD45076LY135810C', '2023-02-25'),
(12, 9, 'PAYID-MP7W4NA2CB43843PA701831A', '2023-03-01'),
(13, 20, 'PAYID-MP7ZDYI8EP44862W8562443N', '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Rock', 'Stone', '', '', 'therock.jfif', 1, '', '', '2018-05-01'),
(2, 'totoy@gmail.com', '$2y$10$tBsdJY5Y.xI5GxYzwMjER.I356slZRriM2JQv/MeDFG.ZmeFMB19u', 0, 'Toty', 'bibo', '', '', '', 0, 'Sy96wnchbJGj', '', '2023-03-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
