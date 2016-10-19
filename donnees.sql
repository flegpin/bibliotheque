-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 01 Septembre 2016 à 20:05
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `adsi`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE IF NOT EXISTS `authentification` (
  `numAuth` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `numClient` int(11) NOT NULL,
  PRIMARY KEY (`numAuth`),
  KEY `numClient` (`numClient`),
  KEY `numClient_2` (`numClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `adresse` varchar(250) COLLATE utf8_bin NOT NULL,
  `nom` varchar(15) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(15) COLLATE utf8_bin NOT NULL,
  `codePostal` varchar(15) COLLATE utf8_bin NOT NULL,
  `tel` varchar(15) COLLATE utf8_bin NOT NULL,
  `dateInscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `numClient` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`numClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `num` int(11) NOT NULL,
  `numLivre` int(11) NOT NULL,
  `numClient` int(11) NOT NULL,
  `dateCommande` date NOT NULL,
  `dateLivraison` date NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `fournir`
--

CREATE TABLE IF NOT EXISTS `fournir` (
  `num` int(11) NOT NULL,
  `numLivre` int(11) NOT NULL,
  `numLien` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `liens`
--

CREATE TABLE IF NOT EXISTS `liens` (
  `numLiens` int(11) NOT NULL,
  `nomSite` varchar(20) COLLATE utf8_bin NOT NULL,
  `lienSite` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Numlivre` int(11) NOT NULL,
  `isbn` varchar(15) COLLATE utf8_bin NOT NULL,
  `titre` varchar(50) COLLATE utf8_bin NOT NULL,
  `auteur` varchar(20) COLLATE utf8_bin NOT NULL,
  `edition` varchar(50) COLLATE utf8_bin NOT NULL,
  `anneEdition` date NOT NULL,
  `categorie` varchar(15) COLLATE utf8_bin NOT NULL,
  `type` varchar(15) COLLATE utf8_bin NOT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Numlivre`, `isbn`, `titre`, `auteur`, `edition`, `anneEdition`, `categorie`, `type`, `prix`, `quantite`, `description`) VALUES
(2, '470894563', 'How to Build the Leadership Powered Company', 'Ram Charan', 'Jossey-Bass, 2 edition', '2010-12-21', 'Affaires', 'used', 56, 234, 'An updated and revised version of the bestselling '),
(3, '307460266', 'The Talent Masters', 'Bill Conaty', 'Crown Business', '2010-11-09', 'Affaires', 'used', 65, 123, 'The talent masters do. They put people before numb'),
(4, '142213007X', 'Retooling HR', 'John W. Boudreau', 'Harvard Business Press', '2010-07-02', 'Affaires', 'used', 21, 43, 'HR professionals have made major strides toward be'),
(5, '1422166732', 'One Page Talent Management: Eliminating Complexity', 'Marc Effron', 'Harvard Business Press', '2015-09-03', 'Affaires', 'new', 16, 500, 'Of the new business books that came out in 2010, t'),
(6, '159562015X', 'Strengthsfinder 2.0', 'Tom Rath', 'Gallup; 1 edition', '2012-01-12', 'Informatique', 'used', 11, 289, 'This book has a unique code that lets you do a 30-'),
(7, '1595620400', 'The Five Essential Elements', 'James K. Harter', 'Gallup Press; First Edition edition', '2011-02-08', 'Informatique', 'used', 12, 29, 'This title shows the five most important elements '),
(8, '1412974887', 'Theory and Practice', 'Peter G. Northouse', 'Sage Publications; 5 edition', '2015-10-09', 'Informatique', 'new', 95, 560, 'Adopted at more than 800 colleges and universities'),
(9, '1451648537', 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', '2011-11-24', 'Technologi', 'used', 10, 211, 'Walter Isaacson has written a riveting story of th'),
(10, '007174875X', 'Carmine Gallo', 'The Innovation Secre', 'McGraw-Hill; 1 edition', '2015-08-30', 'Technologie', 'new', 18, 190, 'You might want to take a look at how someone creat'),
(11, '032180824X', 'The Photoshop Elements 10 Book for Digital Photogr', 'Matt Kloskowski', 'Peachpit Press; 1 edition', '2011-12-01', 'Technologie', 'used', 10, 432, 'This book breaks new ground by doing something for'),
(12, '1118151739', 'Teach Yourself VISUALLY Photoshop Elements 10', 'Mike Wooldridge', 'Visual', '2011-11-18', 'Technologie', 'used', 13, 398, 'Packed with step-by-step instructions illustrated '),
(13, '160061454X', 'Creating Digital Art with Adobe Photoshop Elements', 'Susan Tuttle', 'North Light Books; Pap/Com edition', '2011-08-20', 'Technologie', 'used', 21, 243, 'Now imagine expressing that dream artistically. Wi'),
(14, '1600611044', 'Exhibition 36: Mixed Media Demonstrations + Explor', 'Susan Tuttle', 'North Light Books; Original edition', '2015-10-15', 'Informatique', 'new', 46, 700, 'Come inside for an amazing virtual art exhibit fea'),
(15, '1440308152', 'Stephanie Lee', 'Mixed-Media Techniqu', 'North Light Books', '2015-09-24', 'Informatique', 'new', 18, 1000, 'Return to the origin of the earth and discover a n'),
(16, '1844487156', 'Rolina van Vliet', '50 Inspirational Pro', 'Search Press', '2015-08-20', 'Informatique', 'new', 55, 2400, 'the Cormen et al book is the best textbook that I '),
(17, '262033844', 'Introduction to Algorithms', 'Thomas H. Cormen', 'The MIT Press; third edition edition', '2015-07-01', 'Informatique', 'new', 78, 1200, 'Introduction to Algorithms, the ''bible'' of the fie'),
(18, '201657880', 'Programming Pearls', 'Jon Bentley', 'Addison-Wesley Professional; 2 edition', '2015-10-17', 'Informatique', 'new', 32, 1230, 'Written in a quick and lively style, this book is '),
(19, '1848000693', 'The Algorithm Design Manua', 'Steven S. Skiena', 'Springer; 2nded. 2008 edition', '2015-10-09', 'Informatique', 'new', 22, 500, 'This expanded and updated second edition of a clas'),
(20, '321623215', 'The C++ Standard Library: A Tutorial and Reference', 'Nicolai M. Josuttis', 'Addison-Wesley Professional; 2 edition', '2015-11-05', 'Informatique', 'new', 88, 2000, 'The C++ standard library provides a set of common '),
(21, '1118102274', 'Professional Android 4 Application Development', 'Reto Meier', 'Wrox; Updated edition', '2015-10-30', 'Technologie', 'new', 32, 3210, 'The fast-growing popularity of Android smartphones'),
(22, '1430230428', 'Beginning Android Games', 'Mario Zechner', 'Apress', '2015-10-05', 'Technologie', 'new', 24, 500, 'Do you have an awesome idea for the next break-thr'),
(23, '1430231564', 'Learn Java for Android Development', 'Jeff Friesen', 'Apress', '2015-10-29', 'Technologie', 'new', 45, 1230, 'Once you complete this book, you will be ready to '),
(24, '321820185', 'The iPad for Photographers: Master the Newest Tool', 'Jeff Carlson', 'Peachpit Press; 1 edition', '2015-10-08', 'Technologie', 'new', 21, 120, 'Instead of hauling a laptop on the road or to a ph'),
(25, '111802222X', 'Nik Software Captured: The Complete Guide to Using', 'Tony L. Corbell', 'Wiley', '2011-10-28', 'Technologie', 'used', 23, 30, 'Styled in such a way as to resemble the way photog'),
(26, '823085864', 'Creating HDR Photos: The Complete Guide to High Dy', 'Harold Davis', 'Amphoto Books', '2015-07-24', 'Technologie', 'new', 43, 1000, 'Best of all, you will find out how to control the '),
(27, '321819594', 'The Adobe Photoshop Lightroom 4 Book for Digital P', 'Scott Kelby', 'Adobe Press; 1 edition', '2012-01-16', 'Technologie', 'used', 10, 210, 'this book shows you how to create your own photogr'),
(28, '1118169115', 'Canon EOS 5D Mark III Digital Field Guide', 'Charlotte K. Lowrie', 'Wiley', '2012-02-17', 'Technologie', 'used', 23, 100, 'Guides you step-by-step through the functions on y'),
(29, '321821521', 'iOS Programming: The Big Nerd Ranch Guide', 'Joe Conway', 'Addison-Wesley Professional; 3 edition', '2012-02-12', 'Technologie', 'used', 11, 210, 'Based on Big Nerd Ranch?s popular iOS Bootcamp cou'),
(30, '321774086', 'Cocoa Programming for Mac OS X', 'Aaron Hillegass', 'Addison-Wesley Professional; 4 edition', '2012-01-11', 'Technologie', 'used', 12, 230, 'The best-selling introduction to Cocoa, once again'),
(31, '672333279', 'Xcode 4 Unleashed', 'Fritz F. Anderson', 'Sams; 2 edition', '2011-10-17', 'Technologie', 'used', 13, 30, 'In Xcode 4 Unleashed, renowned Mac/iOS developer F'),
(32, '321811909', 'Programming in Objective-C', 'Stephen G. Kochan', 'Addison-Wesley Professional; 4 edition', '2010-10-22', 'Informatique', 'used', 24, 211, 'The book makes no assumptions about prior experien'),
(33, '1430236051', 'Beginning iOS 5 Development: Exploring the iOS SDK', 'David Mark', 'Apress Publishers; New edition', '2010-10-19', 'Informatique', 'used', 40, 345, 'There''s coverage of brand new technologies, with c'),
(34, '1430236531', 'Objective-C for Absolute Beginners: iPhone, iPad a', 'Gary Bennett', 'Apress Publishers; 2 edition', '2012-03-03', 'Informatique', 'used', 30, 32, 'Objective-C is the universal language of iPhone, i'),
(35, '321832086', 'Learning Objective-C 2.0: A Hands-on Guide to Obje', 'Robert Clair', 'Addison-Wesley Professional; 2 edition', '2012-04-15', 'Informatique', 'used', 26, 23, 'Get Started Fast with Objective-C 2.0 Programming '),
(36, '142000280', 'Getting Things Done: The Art of Stress-Free Produc', 'David Allen', 'Penguin Books; 1 edition', '2009-10-04', 'Affaires', 'used', 12, 23, 'In Getting Things Done Allen shows how to Apply th'),
(37, '684802031', 'First Things First', 'David Allen', 'Free Press; 1 edition', '2002-10-20', 'Affaires', 'used', 12, 390, 'First Things First can help you understand why so '),
(38, '743269519', 'The 7 Habits of Highly Effective People: Powerful ', 'Stephen R. Covey', 'Free Press; 15 edition', '2004-10-31', 'Affaires', 'used', 13, 456, 'In The 7 Habits of Highly Effective People, author'),
(39, '688014291', 'One Minute Manager', 'Ken Blanchard', 'William Morrow; 1 edition', '2002-10-11', 'Affaires', 'used', 34, 403, 'The book also presents several studies in medicine'),
(40, '688039693', 'Leadership & One Min Man', 'Kenneth Blanchard', 'William Morrow; 1 edition', '2015-10-28', 'Affaires', 'new', 37, 1022, 'In clear, simple terms Leadership and the One Minu');

-- --------------------------------------------------------

--
-- Structure de la table `nouveautes`
--

CREATE TABLE IF NOT EXISTS `nouveautes` (
  `numNouveaute` int(11) NOT NULL,
  `description` varchar(250) COLLATE utf8_bin NOT NULL,
  `dateApparition` date NOT NULL,
  `dateEcheance` date NOT NULL,
  `numLivre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `nouveautes`
--

INSERT INTO `nouveautes` (`numNouveaute`, `description`, `dateApparition`, `dateEcheance`, `numLivre`) VALUES
(1, 'Of the new business books that came out in 2010, this one stands head and shoulders above the rest.', '2015-09-03', '2016-02-03', 5),
(2, 'Adopted at more than 800 colleges and universities worldwide, the market-leading text owes its success to the unique way in which it combines an academically robust account of the major theories', '2015-10-09', '2016-03-09', 8),
(3, 'You might want to take a look at how someone creates multi-billion dollar ideas, and turns them into multi-billion dollar products that everyone loves and admires. This book is not an option. Buy it now, bank it tomorrow.', '2015-08-30', '2015-12-30', 10),
(4, 'Come inside for an amazing virtual art exhibit featuring 36 inspiring artists.', '2015-10-15', '2016-03-15', 14),
(5, 'Return to the origin of the earth and discover a new way of playing in the mud.', '2015-09-24', '2016-02-24', 15),
(6, 'the Cormen et al book is the best textbook that I have ever seen on this subject.', '2015-08-20', '2016-01-20', 16),
(7, 'Introduction to Algorithms, the ''bible'' of the field, is a comprehensive textbook covering the full spectrum of modern algorithms: from the fastest algorithms and data structures to polynomial-time algorithms for seemingly intractable problems', '2015-07-01', '2015-12-01', 17),
(8, 'Written in a quick and lively style, this book is packed with good advice and is a valuable read for programmers at any level', '2015-10-17', '2016-03-17', 18),
(9, 'This expanded and updated second edition of a classic bestseller continues to take the "mystery" out of designing and analyzing algorithms and their efficacy and efficiency', '2015-10-09', '2016-03-09', 19),
(10, 'The C++ standard library provides a set of common classes and interfaces that greatly extend the core C++ language. The library, however, is not self-explanatory.', '2015-11-05', '2016-04-05', 20),
(11, 'The fast-growing popularity of Android smartphones and tablets creates a huge opportunities for developers.', '2015-10-30', '2016-04-30', 21),
(12, 'Do you have an awesome idea for the next break-through mobile gaming title? Beginning Android Games will help you kick-start your project', '2015-10-05', '2016-03-05', 22),
(13, 'Once you complete this book, you will be ready to dive into Android, and you can start that journey by obtaining a copy of Beginning Android 2', '2015-10-29', '2016-03-29', 23),
(14, 'Instead of hauling a laptop on the road or to a photo shoot, you can tuck the lightweight iPad in your camera bag and take advantage of its large screen, third-party apps, and online access to effectively complete and share your work', '2015-10-08', '2016-03-08', 24),
(15, 'Best of all, you will find out how to control the style of your HDR images, from subtle to hyper-real, using a range of photographic and post-processing techniques', '2015-07-24', '2015-12-24', 26),
(16, 'In clear, simple terms Leadership and the One Minute Manager teaches managers the art of Situational Leadership', '2015-10-28', '2016-03-28', 40);

-- --------------------------------------------------------

--
-- Structure de la table `table 1`
--

CREATE TABLE IF NOT EXISTS `table 1` (
  `COL 1` varchar(8) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(84) DEFAULT NULL,
  `COL 4` varchar(56) DEFAULT NULL,
  `COL 5` varchar(38) DEFAULT NULL,
  `COL 6` varchar(11) DEFAULT NULL,
  `COL 7` varchar(12) DEFAULT NULL,
  `COL 8` varchar(4) DEFAULT NULL,
  `COL 9` varchar(4) DEFAULT NULL,
  `COL 10` varchar(8) DEFAULT NULL,
  `COL 11` varchar(247) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `table 1`
--

INSERT INTO `table 1` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`) VALUES
('Numlivre', 'isbn', 'titre', 'auteur', 'edition', 'anneEdition', 'categorie', 'type', 'prix', 'quantite', 'description'),
('2', '0470894563', 'How to Build the Leadership Powered Company', 'Ram Charan', 'Jossey-Bass, 2 edition', '12/21/2010', 'Affaires', 'used', '56.2', '234', 'An updated and revised version of the bestselling The Leadership Pipeline ? the critical resource for how companies can grow leaders from the inside.'),
('3', '0307460266', 'The Talent Masters', 'Bill Conaty', 'Crown Business', '11/9/2010', 'Affaires', 'used', '65.0', '123', 'The talent masters do. They put people before numbers for the simple reason that it is talent that delivers the numbers.'),
('4', '142213007X', 'Retooling HR', 'John W. Boudreau', 'Harvard Business Press', '7/2/2010', 'Affaires', 'used', '21.0', '43', 'HR professionals have made major strides toward becoming strategic partners. But they need to do more - by generating value through savvy decisions about talent.'),
('5', '1422166732', 'One Page Talent Management: Eliminating Complexity, Adding Value', 'Marc Effron', 'Harvard Business Press', '9/3/2015', 'Affaires', 'new', '16.0', '500', 'Of the new business books that came out in 2010, this one stands head and shoulders above the rest.'),
('6', '159562015X', 'Strengthsfinder 2.0', 'Tom Rath', 'Gallup; 1 edition', '1/12/2012', 'Informatique', 'used', '11.1', '289', 'This book has a unique code that lets you do a 30-minute talent test on their web site.'),
('7', '1595620400', 'The Five Essential Elements', 'James K. Harter', 'Gallup Press; First Edition edition', '2/8/2011', 'Informatique', 'used', '12.3', '29', 'This title shows the five most important elements of a life well-lived and how they are interdependent.'),
('8', '1412974887', 'Theory and Practice', 'Peter G. Northouse', 'Sage Publications; 5 edition', '10/9/2015', 'Informatique', 'new', '94.8', '560', 'Adopted at more than 800 colleges and universities worldwide, the market-leading text owes its success to the unique way in which it combines an academically robust account of the major theories'),
('9', '1451648537', 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', '11/24/2011', 'Technologi', 'used', '10.4', '211', 'Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries'),
('10', '007174875X', 'Carmine Gallo', 'The Innovation Secrets of Steve Jobs', 'McGraw-Hill; 1 edition', '8/30/2015', 'Technologie', 'new', '18.2', '190', 'You might want to take a look at how someone creates multi-billion dollar ideas, and turns them into multi-billion dollar products that everyone loves and admires. This book is not an option. Buy it now, bank it tomorrow.'),
('11', '032180824X', 'The Photoshop Elements 10 Book for Digital Photographers', 'Matt Kloskowski', 'Peachpit Press; 1 edition', '12/1/2011', 'Technologie', 'used', '10.1', '432', 'This book breaks new ground by doing something for digital photographers that?s never been done before?it cuts through the bull and shows you exactly ?how to do it".'),
('12', '1118151739', 'Teach Yourself VISUALLY Photoshop Elements 10', 'Mike Wooldridge', 'Visual', '11/18/2011', 'Technologie', 'used', '13.0', '398', 'Packed with step-by-step instructions illustrated with full-color screen shots, this book clearly shows you how to do tasks, rather than using lengthy explanations.'),
('13', '160061454X', 'Creating Digital Art with Adobe Photoshop Elements', 'Susan Tuttle', 'North Light Books; Pap/Com edition', '8/20/2011', 'Technologie', 'used', '20.8', '243', 'Now imagine expressing that dream artistically. With Digital Expressions you can take ordinary photos and, with the help of Adobe Photoshop Elements, voice your flights of fancy.'),
('14', '1600611044', 'Exhibition 36: Mixed Media Demonstrations + Explorations', 'Susan Tuttle', 'North Light Books; Original edition', '10/15/2015', 'Informatique', 'new', '45.8', '700', 'Come inside for an amazing virtual art exhibit featuring 36 inspiring artists.'),
('15', '1440308152', 'Stephanie Lee', 'Mixed-Media Techniques for Painting, Casting and Carving', 'North Light Books', '9/24/2015', 'Informatique', 'new', '18.2', '1000', 'Return to the origin of the earth and discover a new way of playing in the mud.'),
('16', '1844487156', 'Rolina van Vliet', '50 Inspirational Projects', 'Search Press', '8/20/2015', 'Informatique', 'new', '54.7', '2400', 'the Cormen et al book is the best textbook that I have ever seen on this subject.'),
('17', '0262033844', 'Introduction to Algorithms', 'Thomas H. Cormen', 'The MIT Press; third edition edition', '7/1/2015', 'Informatique', 'new', '78.0', '1200', 'Introduction to Algorithms, the ''bible'' of the field, is a comprehensive textbook covering the full spectrum of modern algorithms: from the fastest algorithms and data structures to polynomial-time algorithms for seemingly intractable problems'),
('18', '0201657880', 'Programming Pearls', 'Jon Bentley', 'Addison-Wesley Professional; 2 edition', '10/17/2015', 'Informatique', 'new', '32.0', '1230', 'Written in a quick and lively style, this book is packed with good advice and is a valuable read for programmers at any level'),
('19', '1848000693', 'The Algorithm Design Manua', 'Steven S. Skiena', 'Springer; 2nded. 2008 edition', '10/9/2015', 'Informatique', 'new', '22.1', '500', 'This expanded and updated second edition of a classic bestseller continues to take the "mystery" out of designing and analyzing algorithms and their efficacy and efficiency'),
('20', '0321623215', 'The C++ Standard Library: A Tutorial and Reference', 'Nicolai M. Josuttis', 'Addison-Wesley Professional; 2 edition', '11/5/2015', 'Informatique', 'new', '88.0', '2000', 'The C++ standard library provides a set of common classes and interfaces that greatly extend the core C++ language. The library, however, is not self-explanatory.'),
('21', '1118102274', 'Professional Android 4 Application Development', 'Reto Meier', 'Wrox; Updated edition', '10/30/2015', 'Technologie', 'new', '32.3', '3210', 'The fast-growing popularity of Android smartphones and tablets creates a huge opportunities for developers.'),
('22', '1430230428', 'Beginning Android Games', 'Mario Zechner', 'Apress', '10/5/2015', 'Technologie', 'new', '24.3', '500', 'Do you have an awesome idea for the next break-through mobile gaming title? Beginning Android Games will help you kick-start your project'),
('23', '1430231564', 'Learn Java for Android Development', 'Jeff Friesen', 'Apress', '10/29/2015', 'Technologie', 'new', '45.0', '1230', 'Once you complete this book, you will be ready to dive into Android, and you can start that journey by obtaining a copy of Beginning Android 2'),
('24', '0321820185', 'The iPad for Photographers: Master the Newest Tool in Your Camera Bag', 'Jeff Carlson', 'Peachpit Press; 1 edition', '10/8/2015', 'Technologie', 'new', '21.0', '120', 'Instead of hauling a laptop on the road or to a photo shoot, you can tuck the lightweight iPad in your camera bag and take advantage of its large screen, third-party apps, and online access to effectively complete and share your work'),
('25', '111802222X', 'Nik Software Captured: The Complete Guide to Using Nik Software''s Photographic Tools', 'Tony L. Corbell', 'Wiley', '10/28/2011', 'Technologie', 'used', '23.0', '30', 'Styled in such a way as to resemble the way photographers think, Nik Software Captured aims to help you learn to apply all the features and functionality of the Nik software products. With Nik Software Captured, authors and Nik Software, Inc.'),
('26', '0823085864', 'Creating HDR Photos: The Complete Guide to High Dynamic Range Photography', 'Harold Davis', 'Amphoto Books', '7/24/2015', 'Technologie', 'new', '43.0', '1000', 'Best of all, you will find out how to control the style of your HDR images, from subtle to hyper-real, using a range of photographic and post-processing techniques'),
('27', '0321819594', 'The Adobe Photoshop Lightroom 4 Book for Digital Photographers', 'Scott Kelby', 'Adobe Press; 1 edition', '1/16/2012', 'Technologie', 'used', '10.0', '210', 'this book shows you how to create your own photography workflow using Lightroom'),
('28', '1118169115', 'Canon EOS 5D Mark III Digital Field Guide', 'Charlotte K. Lowrie', 'Wiley', '2/17/2012', 'Technologie', 'used', '23.3', '100', 'Guides you step-by-step through the functions on your new Canon EOS 5D Mark III dSLR camera'),
('29', '0321821521', 'iOS Programming: The Big Nerd Ranch Guide', 'Joe Conway', 'Addison-Wesley Professional; 3 edition', '2/12/2012', 'Technologie', 'used', '11.1', '210', 'Based on Big Nerd Ranch?s popular iOS Bootcamp course and its well-tested materials and methodology, this best-selling guide teaches iOS concepts and coding in tandem. The result is instruction that is relevant and useful.'),
('30', '0321774086', 'Cocoa Programming for Mac OS X', 'Aaron Hillegass', 'Addison-Wesley Professional; 4 edition', '1/11/2012', 'Technologie', 'used', '12.0', '230', 'The best-selling introduction to Cocoa, once again updated to cover the latest Mac programming technologies, and still enthusiastically recommended by experienced Mac OS X developer'),
('31', '0672333279', 'Xcode 4 Unleashed', 'Fritz F. Anderson', 'Sams; 2 edition', '10/17/2011', 'Technologie', 'used', '13.0', '30', 'In Xcode 4 Unleashed, renowned Mac/iOS developer Fritz Anderson shows how to use Apple?s powerful new Xcode 4 integrated development environment to develop outstanding software with the least effort possible'),
('32', '0321811909', 'Programming in Objective-C', 'Stephen G. Kochan', 'Addison-Wesley Professional; 4 edition', '10/22/2010', 'Informatique', 'used', '24.2', '211', 'The book makes no assumptions about prior experience with object-oriented programming languages or with the C language (which Objective-C is based upon).'),
('33', '1430236051', 'Beginning iOS 5 Development: Exploring the iOS SDK', 'David Mark', 'Apress Publishers; New edition', '10/19/2010', 'Informatique', 'used', '40.4', '345', 'There''s coverage of brand new technologies, with chapters on storyboards and iCloud, for example, as well as significant updates to existing chapters to bring them in line with all the changes that came with the iOS 5 SDK'),
('34', '1430236531', 'Objective-C for Absolute Beginners: iPhone, iPad and Mac Programming Made Easy', 'Gary Bennett', 'Apress Publishers; 2 edition', '3/3/2012', 'Informatique', 'used', '30.0', '32', 'Objective-C is the universal language of iPhone, iPad, and Mac apps, and Objective-C for Absolute Beginners, Second Edition starts you on the path to mastering this language and its latest release'),
('35', '0321832086', 'Learning Objective-C 2.0: A Hands-on Guide to Objective-C for Mac and iOS Developers', 'Robert Clair', 'Addison-Wesley Professional; 2 edition', '4/15/2012', 'Informatique', 'used', '25.5', '23', 'Get Started Fast with Objective-C 2.0 Programming for OS X Mountain Lion, iOS 5.1, and Beyond'),
('36', '0142000280', 'Getting Things Done: The Art of Stress-Free Productivity', 'David Allen', 'Penguin Books; 1 edition', '10/4/2009', 'Affaires', 'used', '12.2', '23', 'In Getting Things Done Allen shows how to Apply the "do it, delegate it, defer it, drop it" rule to get your in-box to empty'),
('37', '0684802031', 'First Things First', 'David Allen', 'Free Press; 1 edition', '10/20/2002', 'Affaires', 'used', '12.0', '390', 'First Things First can help you understand why so often our first things aren''t first. Rather than offering you another clock, First Things First provides you with a compass, because where you''re headed is more important than how fast you''re going'),
('38', '0743269519', 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 'Stephen R. Covey', 'Free Press; 15 edition', '10/31/2004', 'Affaires', 'used', '12.5', '456', 'In The 7 Habits of Highly Effective People, author Stephen R. Covey presents a holistic, integrated, principle-centered approach for solving personal and professional problems'),
('39', '0688014291', 'One Minute Manager', 'Ken Blanchard', 'William Morrow; 1 edition', '10/11/2002', 'Affaires', 'used', '34.0', '403', 'The book also presents several studies in medicine and the behavioral sciences that clearly explain why these apparently simple methods work so well with so many people'),
('40', '0688039693', 'Leadership & One Min Man', 'Kenneth Blanchard', 'William Morrow; 1 edition', '10/28/2015', 'Affaires', 'new', '37.0', '1022', 'In clear, simple terms Leadership and the One Minute Manager teaches managers the art of Situational Leadership');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
