

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `tiranainctravelagency`

-- Table structure for table `admin`


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `admin`

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'EvaDaci', '0000');

-- Table structure for table `agent`

CREATE TABLE `agent` (
  `agentid` int(11) NOT NULL,
  `agentname` varchar(255) NOT NULL,
  `agentjoined` varchar(255) NOT NULL,
  `agentmobile` int(20) NOT NULL,
  `agentlocation` varchar(30) NOT NULL,
  `agentemail` varchar(255) NOT NULL,
  `agentpic` varchar(30) NOT NULL,
  `agentavailability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `agent`

INSERT INTO `agent` (`agentid`, `agentname`, `agentjoined`, `agentmobile`, `agentlocation`, `agentemail`, `agentpic`, `agentavailability`) VALUES
(2, 'Enriketa Hoxha', '2/15/2022', 1112222, 'Tirana', 'enhoxha20@epoka.edu.al', 'eni.png', 0),
(1, 'Eva Daçi', '2/01/2022', 1113333, 'Tirana', 'edaci20@epoka.edu.al', 'eva.png', 1),
(3, 'Klaudia Kasa', '2/10/2022', 1114444, 'Durres', 'klkasa20@epoka.edu.al', 'klaudia.png', 1);

-- Table structure for table `client`

CREATE TABLE `client` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `client`

INSERT INTO `client` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(3, 'Ndricim ', 'Topalli', 'ntopalli@epoka.edu.al', 'Cimi', '1111', 3);

-- Table structure for table `package`

CREATE TABLE `package` (
  `packageid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `packagetype` varchar(20) NOT NULL,
  `destinationdate` varchar(100) NOT NULL,
  `arrivaldate` varchar(100) NOT NULL,
  `transport` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `moreinfo` varchar(255) NOT NULL,
  `packagephoto` varchar(255) NOT NULL,
  `availability` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `package`

INSERT INTO `package` (`packageid`, `location`, `packagetype`, `destinationdate`, `arrivaldate`, `transport`, `price`, `moreinfo`, `packagephoto`, `availability`) VALUES
(37, 'Paris, France', 'Individual', '06/24/2022', '06/29/2022', 'Plane', 555, ' This is a package to go to Paris, France. It is an individual package, four day trip with hotel included in the full price. For extra services contact us.', 'france.jpg', 0),
(38, 'Switzerland', 'Family', '06/23/2022', '06/26/2022', 'Plane', 666, ' Join us on an epic adventure in Sweeden....', 'switzerland.jpg', 0),
(39, 'New York', 'Family', '06/25/2022', '06/29/2022', 'Plane', 777, ' It is your time to post a photo at Times Square....', 'newyork.jpg', 0);

-- Table structure for table `payment`

CREATE TABLE `payment` (
  `paymentid` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `flight` int(255) NOT NULL,
  `hotel` int(255) NOT NULL,
  `taxes` int(255) NOT NULL,
  `fullprice` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `payment`

INSERT INTO `payment` (`paymentid`, `id`, `username`, `flight`, `hotel`, `taxes`, `fullprice`) VALUES
(12, '56', 'test', 555, 55, 6, 6666);

-- Table structure for table `reservations`

CREATE TABLE `reservations` (
  `orderid` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `package` varchar(558) NOT NULL,
  `dest_date` varchar(100) NOT NULL,
  `arrival_date` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `agentid` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `reservations`

INSERT INTO `reservations` (`orderid`, `fullname`, `username`, `package`, `dest_date`, `arrival_date`, `email`, `mobile`, `confirmation`, `location`, `agentid`, `finished`, `paid`) VALUES
(58, 'Ndricim Topalli', 'Cimi', 'Paris, France at this price: 555', '07/03/2022', '08/01/2022', 'ntopalli@epoka.edu.al', 15151551, 0, '15151551', 0, 1, 0);

-- Table structure for table `travelfinance`

CREATE TABLE `travelfinance` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `taxcost` varchar(11) NOT NULL,
  `extra` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `travelfinance`

INSERT INTO `travelfinance` (`id`, `order_id`, `username`, `taxcost`, `extra`, `total`, `paid`) VALUES
(22, '56', 'test', '6', '666', '6666', 1);

-- Indexes for dumped tables

-- Indexes for table `admin`

ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

-- Indexes for table `agent`

ALTER TABLE `agent`
  ADD PRIMARY KEY (`agentid`);

-- Indexes for table `client`

ALTER TABLE `client`
  ADD PRIMARY KEY (`user_id`);

-- Indexes for table `package`

ALTER TABLE `package`
  ADD PRIMARY KEY (`packageid`);

-- Indexes for table `payment`

ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

-- Indexes for table `reservations`

ALTER TABLE `reservations`
  ADD PRIMARY KEY (`orderid`);

-- Indexes for table `travelfinance`

ALTER TABLE `travelfinance`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `admin`

ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- AUTO_INCREMENT for table `agent`

ALTER TABLE `agent`
  MODIFY `agentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

-- AUTO_INCREMENT for table `client`

ALTER TABLE `client`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

-- AUTO_INCREMENT for table `package`

ALTER TABLE `package`
  MODIFY `packageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

-- AUTO_INCREMENT for table `payment`

ALTER TABLE `payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

-- AUTO_INCREMENT for table `reservations`

ALTER TABLE `reservations`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

-- AUTO_INCREMENT for table `travelfinance`

ALTER TABLE `travelfinance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;
