-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 03 Ιουν 2017 στις 11:59:42
-- Έκδοση διακομιστή: 10.1.21-MariaDB
-- Έκδοση PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `travel_guide`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `aksiotheata`
--

CREATE TABLE `aksiotheata` (
  `onoma` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `kwdikos` int(11) NOT NULL,
  `image` varchar(60) DEFAULT NULL,
  `price` decimal(4,2) DEFAULT '0.00',
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `aksiotheata`
--

INSERT INTO `aksiotheata` (`onoma`, `description`, `kwdikos`, `image`, `price`, `geometric_width`, `geometric_length`) VALUES
('Piazza del Popolo', 'Η Piazza del Popolo είναι μία μεγάλο οβάλ πλατεία κοντά στο πάρκο Μποργκέζε. Διαθέτει ένα αυθεντικό οβελίσκο από την Ηλιούπολη της Αιγύπτου. Στη βόρεια πλευρά της πλατείας δεσπόζει η Porta del Popolo, η οποία οδηγεί στην Via Flaminia. Η Via Flaminia χτίστηκε το 220 π.Χ. για να συνδέσει τη Ρώμη με την Αδριατική ακτή και ήταν ένας από τους σημαντικότερους δρόμους που οδηγούν στη Ρώμη. Το 1562 Πάπας Πίος ΣΤ΄ ανέθεσε στον αρχιτέκτονα Nanni di Baccio Bigio να κατασκευάσει μια μεγάλη πύλη, την Porta Flaminia, για να εντυπωσιάσουν τους πιστούς που κατάφθαναν στην πόλη μέσω της Via Flaminia.', 16, 'http://dummyimage.com/249x228.png/ff4444/ffffff', '0.00', '20.5592', '-103.4308'),
('Colosseo', 'Το Κολοσσαίο είναι ίσως το πιο εντυπωσιακό κτίριο της ρωμαϊκής αυτοκρατορίας. Αρχικά γνωστό ως το Αμφιθέατρο του Φλαβιανού, το Κολοσσαίο ήταν το μεγαλύτερο κτίριο της εποχής. Μπορεί η θεόρατη δομή του να έχει περιέλθει σε ερείπια στις μέρες μας αλλά ακόμη παραμένει ένα επιβλητικό και όμορφο θέαμα. Ο Αυτοκράτορας Βεσπασιανός, ιδρυτής της δυναστείας Φλαβιανών, άρχισε την κατασκευή του Κολοσσαίου το 72 μ.Χ. και το οποίο ολοκληρώθηκε το 80 μ.Χ., ένα χρόνο μετά το θάνατο Βεσπασιανού.', 17, 'http://dummyimage.com/237x198.png/dddddd/000000', '4.00', '28.73768', '114.07153'),
('Pantheon', 'Χτισμένο πάνω από 1800 χρόνια πριν, το υπέροχο Πάνθεον στέκεται ακόμα ως υπενθύμιση της μεγάλης ρωμαϊκής αυτοκρατορίας. Με τους χοντρούς τοίχους του και τις μεγάλες μαρμάρινες κολόνες, το Πάνθεον εντυπωσιάζει τους επισκέπτες. Αυτό που θα σας αφήσει άφωνους όμως είναι ο 43 μέτρα ψηλός τρούλος του.', 18, 'http://dummyimage.com/215x162.png/ff4444/ffffff', '6.50', '12.57758', '-87.02705'),
('Piazza Navona', 'Η Piazza Navona είναι μία από τις πιο διάσημες και αναμφισβήτητα μία από τις ομορφότερες πλατείες της Ρώμης. Η πλατεία είναι χτισμένη στο πρώην στάδιο του Δομιτιανού, που χτίστηκε από τον αυτοκράτορα Δομιτιανό το 86 μ.Χ. Εξ ου και η μεγάλη, με ωοειδές σχήμα πλατεία. Το γήπεδο, το οποίο είχε ένα μεγαλύτερο χώρο για αγωνίσματα από το Κολοσσαίο χρησιμοποιήθηκε κυρίως για φεστιβάλ και αθλητικές εκδηλώσεις. Το στάδιο ήταν γνωστό ως «Circus Agonalis» (ο στίβος του ανταγωνισμού).', 19, 'http://dummyimage.com/192x180.png/ff4444/ffffff', '0.00', '31.37522', '120.45132'),
('Vatican City', 'Η Πόλη του Βατικανού είναι ένα εκπληκτικό μέρος που θα σας κάνει να θέλετε να το εξερευνήσετε όλο. Το Βατικανό έχει το δικό του τουριστικό γραφείο του στην αριστερή πλευρά της η πλατείας του Αγίου Πέτρου που είναι ένα καλό μέρος για να ξεκινήσετε την επίσκεψή σας. Εδώ μπορείτε να κάνετε μίνι εκδρομές στους κήπους του Βατικανού και ξεκινήσετε τις ξεναγήσεις στην πλατεία, την βασιλική του Αγίου Πέτρου και τα περίφημα μουσεία του Βατικανού. Υπάρχει επίσης έντονη φήμη ότι το ταχυδρομικό σύστημα του Βατικανού είναι καλύτερο από εκείνο της πόλης της Ρώμης, επομένως να προτιμήσετε να ταχυδρομήσετε τις καρτ-ποστάλ σας από εκεί. Πληροφορίες για τον Άγιο Πέτρο και τα Μουσεία του Βατικανού θα βρείτε στη σελίδα του Βατικανού πατώντας το \"περισσότερα\" στην κάτω δεξιά γωνία αυτού του πλαισίου.', 20, 'http://dummyimage.com/120x172.png/5fa2dd/ffffff', '20.00', '39.0375', '65.585'),
('St. Peters Basilica', 'Αυτός ο ναός αποτελεί το κέντρο του καθολικού χριστιανισμού. Η πολυτέλεια του εσωτερικού του κτιρίου φέρει μαρτυρία για τον πλούτο της Καθολικής Εκκλησίας τον 16ο αιώνα. Ο Αυτοκράτορας Κωνσταντίνος, ο πρώτος χριστιανός αυτοκράτορας της Ρώμης, διέταξε να οικοδομηθεί μια βασιλική στο λόφο του Βατικανού. Η τοποθεσία ήταν συμβολική καθώς αυτός ήταν ο τόπος όπου ο Άγιος Πέτρος, ο επικεφαλής απόστολος, θάφτηκε το 64 μ.Χ. Ένα μικρό ιερό υπήρχε ήδη στην περιοχή και η νέα εκκλησία ολοκληρώθηκε περίπου το 349 μ.Χ. Στα μέσα του 15ου αιώνα, η βασιλική ήταν ένα ερείπιο και ο πάπας Νικόλας ο V’ διέταξε την αποκατάσταση και διεύρυνση της εκκλησίας με σχέδια του Μπερνάντο Ροσελλίνο (Bernardo Rossellino). Με το θάνατο όμως του πάπα τα έργα σταμάτησαν.', 21, 'http://dummyimage.com/227x187.png/5fa2dd/ffffff', '7.00', '59.1986', '17.8332'),
('Roman Forum', 'Η Ρωμαϊκή Αγορά (Forum Romanum) ήταν το κέντρο της καθημερινής ζωής στην αυτοκρατορική Ρώμη όπως αποδεικνύεται από τα πολλά ερείπια, τις αψίδες θριάμβου, τους ναούς και τις βασιλικές. Μέχρι το 509 π.Χ., όταν η Ρώμη έγινε δημοκρατία, η πόλη βασιλευόταν από την ετρουσκική δυναστεία των Ταρκίν (Tarquin). Οι βασιλείς κατασκεύασαν αγωγό λυμάτων, το αποχωρητήριο του «Maxima», για την αποστράγγιση των υδάτων από τις βαλτώδεις περιοχές της κοιλάδας μεταξύ των λόφων του Παλατίν, του Καπιτωλίνου και του Εσκουλίν του ποταμού Τίβερη. Από τότε, η περιοχή αυτή ήταν το κέντρο των δραστηριοτήτων στη Ρώμη.', 22, 'http://dummyimage.com/115x120.png/5fa2dd/ffffff', '5.00', '40.06762', '44.43591'),
('Sistine Chapel', 'Η Καπέλα Σιξτίνα ή Καπέλα Σιστίνα είναι παρεκκλήσι του Αποστολικού Παλατιού, της επίσημης κατοικίας του Πάπα, στην πόλη του Βατικανού. Αναγέρθηκε από τον Πάπα Σίξτο Δ (ή Σίστο Δ) εκ του οποίου οφείλεται και το όνομα αυτού. Η φήμη του όμως βασίζεται στην αρχιτεκτονική του, η οποία ακολουθεί το Ναό της Παλαιάς Διαθήκης, και ιδιαίτερα για το διάκοσμό του. Είναι ζωγραφισμένο εξ ολοκλήρου με τοιχογραφίες μεγάλων καλλιτεχνών της Αναγέννησης, μεταξύ των οποίων ο Μιχαήλ Άγγελος, ο οποίος φιλοτέχνησε την θρυλική οροφή του (1508-1512).', 23, 'http://dummyimage.com/149x140.png/cc0000/ffffff', '6.00', '-24.04556', '-52.38306'),
('Castel Sant Angelo museum', 'Το κάστρο του Αγίου Αγγέλου είναι ένα επιβλητικό κτίριο στη δεξιά όχθη του ποταμού Τίβερη με μια πολυτάραχη ιστορία ακόμη και για τα πρότυπα της Ρώμης. Το κτίριο λειτούργησε αρχικά ως μαυσωλείο, στη συνέχεια, έγινε μέρος του τείχους της πόλης και αργότερα μετατράπηκε σε φρούριο πριν λειτουργήσει ως παπική κατοικία και τέλος ως στρατώνας και στρατιωτική φυλακή.', 24, 'http://dummyimage.com/144x195.png/ff4444/ffffff', '8.00', '25.17276', '114.40126'),
('Borghese Gallery', 'Η Βίλλα Μποργκέζε (Villa Borghese) είναι το μεγαλύτερο δημόσιο πάρκο της Ρώμης. Διαθέτει λίμνη, ναούς, σιντριβάνια, αγάλματα και διάφορα μουσεία. Το πάρκο βρίσκεται βόρεια από την Πιάτσα ντι Σπάνια (Piazza di Spagna). Οι κύριες είσοδοι βρίσκονται στην Piazza del Popolo και την Porta Pinciana στο τέλος της Via Veneto. Το πάρκο Borghese είναι ένα ευχάριστο καταφύγιο από το θόρυβο της ζωής της Ρώμης. Η περιοχή ξεκίνησε ως αμπελώνες τον 16ο αιώνα.Το 1605 ο καρδινάλιος Σκιπίoν Μποργκέζε (Scipione Borghese), ανιψιός του Πάπα Παύλου Ε, μετέτρεψε τα αμπέλια σε πάρκο', 25, 'http://dummyimage.com/136x149.png/cc0000/ffffff', '5.50', '48.91508', '16.89779'),
('Fontana di Trevi', 'Η Φοντάνα ντι Τρέβι (Fontana di Trevi) είναι το πιο διάσημο και αναμφισβήτητα το πιο όμορφο σιντριβάνι της Ρώμης. Αυτό το εντυπωσιακό μνημείο δεσπόζει στη μικρή πλατεία Trevi που βρίσκεται στην περιοχή του Quirinale. Η Φοντάνα ντι Τρέβι είναι το τέλος του Aqua Virgo, ενός υδραγωγείου που κατασκευάστηκε το 19 π.Χ. και φέρνει νερό από τις πηγές στο Salone (περίπου 20 χιλιόμετρα από τη Ρώμη) και παρέχει στα σιντριβάνια της Ρώμης νερό.', 26, 'http://dummyimage.com/136x149.png/cc0220/ffffff', '0.00', '44.91307', '13.89879'),
('via del corso', 'The Via del Corso (ancient Via Lata, the urban stretch of Via Flaminia), is a main street in the historical centre of Rome. It is remarkable for being absolutely straight in an area characterized by narrow meandering alleys and small piazzas. Considered a wide street in ancient times, today the Corso is approximately 10 metres wide, and it only has room for two lanes of traffic and two narrow sidewalks', 27, 'http://dummyimage.com/136x149.png/dd2222/ffffff', '0.00', '40.91307', '11.89879'),
('rome΄s birthday festival', 'Rome’s birthday is the pinnacle of all birthday celebrations. Lots of activities are planned over the birthday weekend closest to April 21st. During the weekend extravaganza, Rome comes alive with concerts, reenactments of historic events, parades and other cultural celebrations at Circus Maximus. The Colosseum lights up with gladiator displays and fireworks.The rich cultural history of Rome is beautifully depicted through the weekend birthday celebrations. Be there, say cheers and sing “Happy Birthday” to this great city.', 28, NULL, '0.00', '', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `diamoni`
--

CREATE TABLE `diamoni` (
  `kwdikos` int(11) NOT NULL,
  `onoma` varchar(40) NOT NULL,
  `asteria` enum('2','3','4','5') NOT NULL,
  `dieuthunsi` varchar(40) NOT NULL,
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `diamoni`
--

INSERT INTO `diamoni` (`kwdikos`, `onoma`, `asteria`, `dieuthunsi`, `geometric_width`, `geometric_length`, `price`) VALUES
(1, 'Hotel Artemide', '5', 'Via Nazionale 22,Ρώμη', '41.900848', '12.494186', '246.00'),
(2, 'Appartamenti MarcoAurelio49', '4', 'Via Marco Aurelio 49,Ρώμη', '25.57139', '111.50222', '130.00'),
(3, 'Grand Hotel Ritz', '4', 'Via Chelini 41,Ρώμη', '41.926424', '12.481865', '127.00'),
(4, 'Palazzo Navona Hotel', '5', 'Largo della Sapienza,8,Ρώμη,', '41.897795', '12.474462', '500.00'),
(5, 'San Anselmo', '4', 'Piazza San Anselmo 2,Ρώμη', '41.882115', '12.479275', '144.00'),
(6, 'Splendide Royal', '5', 'Via Di Porta Pinciana 14,Ρώμη', '41.908476', '12.485862', '297.00'),
(7, 'Holiday Inn Rome-Pisana', '3', 'Via della Pisana 374,Ρώμη', '41.868761', '12.411576', '43.00'),
(8, 'Gioia B&B', '3', 'Via Vittorio Amedeo II, 20,Ρώμη', '41.890602', '12.509059', '71.00'),
(9, 'Hotel Daniela', '3', 'Via Luigi Luzzatti, 31,Ρώμη', '41.890602', '12.509059', '85.00'),
(10, 'Hotel Donatello', '3', 'Via di Porta Maggiore,83,Ρώμη', '41.892204', '12.513342', '82.00'),
(11, 'Hotel Best Roma', '4', 'Via di Porta Maggiore,51,Ρώμη', '41.892765', '12.511599', '112.00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ekdhlwseis`
--

CREATE TABLE `ekdhlwseis` (
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `kwd_ekd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `ekdhlwseis`
--

INSERT INTO `ekdhlwseis` (`startdate`, `enddate`, `kwd_ekd`) VALUES
('2018-04-21', '2018-04-24', 28);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `endiaferomenos`
--

CREATE TABLE `endiaferomenos` (
  `onoma` varchar(40) NOT NULL,
  `kwdikos` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `IBAN` varchar(40) NOT NULL,
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `endiaferomenos`
--

INSERT INTO `endiaferomenos` (`onoma`, `kwdikos`, `Email`, `IBAN`, `geometric_width`, `geometric_length`) VALUES
('Courtenay Yorkston', '0WqyyJ', 'cyorkstonh@msn.com', 'LB47 1817 GLB3 MPTV F71X DJLB B3EX', '27.01969', '114.36506'),
('Genni Gibbings', '1c6JPZ83l8WJ', 'ggibbingsf@hp.com', 'GI86 LKEG 6FNX MGEK SWFX RCU', '6.74202', '-7.34918'),
('Lester MacCook', '2WLX7aX2', 'lmaccook7@google.com', 'CR54 6227 3944 0586 9874 7', '49.72775', '18.1885'),
('Zelig Slorance', '35hRS7R', 'zslorancel@bigcartel.com', 'FR04 2285 5175 43QF KR8C H3I7 Z48', '-8.1387', '111.5463'),
('Eirena Oakeshott', '48uw0DxXn', 'eoakeshottb@alexa.com', 'KZ68 986H IYCN FMCO AY0A', '19.18043', '-70.02046'),
('Winnah Labrom', '778H0vSU', 'wlabrom6@netvibes.com', 'DK86 6713 2498 3579 26', '22.71123', '113.00602'),
('Chan MacMechan', 'G3i4wa6R0ZOR', 'cmacmechani@t-online.de', 'AD78 3729 6107 LMGM GFXL T6EC', '-6.5217', '106.1021'),
('Pincus Danielsen', 'gq2N9PnNG', 'pdanielsen5@wsj.com', 'MD14 G6FV DHGY Z6PZ QIO7 EAZQ', '41.56225', '26.5147'),
('Walker Barnhill', 'J1P5jAe8Gn', 'wbarnhill4@hatena.ne.jp', 'LT93 2054 8086 0989 2324', '-38.82224', '-68.06293'),
('Archer Gorrick', 'KjaTmvQK', 'agorrick1@mysql.com', 'PT49 0573 9792 4825 8549 2388 1', '25.99662', '119.64974'),
('Beret Coath', 'lJAr0uSDYLR', 'bcoath8@patch.com', 'AL36 2961 3634 LOJG D326 S2HV WPS6', '50.79313', '15.83559'),
('Debor Brain', 'lRzn2R86', 'dbrainc@macromedia.com', 'DO14 ISTT 3810 8353 3637 9662 1099', '-7.0938', '113.6665'),
('Laraine McGroarty', 'mOPptk0', 'lmcgroartya@usnews.com', 'AE52 6283 4464 8788 4452 271', '-32.17301', '-64.11406'),
('Delora Woodrow', 'mUJ5ef', 'dwoodrowd@arizona.edu', 'GI77 HFCN AEAJ REFZ XVLN FXY', '-23.62392', '-65.40797'),
('Sasha Curragh', 'nkTTASDp', 'scurraghg@usnews.com', 'NO25 7419 9814 649', '41.22594', '113.29058'),
('Shaw Lissett', 'NqyvarZNo', 'slissett2@wsj.com', 'MD52 UEJG TNQK RLBF IDQO HTUS', '34.03715', '-4.9998'),
('Valentin Hindes', 'OoIxUhQf', 'vhindes0@disqus.com', 'FR72 4041 9063 29HW 2JED OOII U97', '62.65', '26.03333'),
('Tandi Rene', 'q2ckSV', 'trenem@xinhuanet.com', 'FR24 8442 4848 256M QSU3 36S7 H34', '24.3539', '68.26706'),
('Karleen Beckinsale', 'SPeFnd7', 'kbeckinsale3@dot.gov', 'GR72 6659 1655 U4PG SXFT HWSD NKS', '40.96426', '122.85418'),
('Calv Semor', 'TMjeJ0EH', 'csemor9@unblog.fr', 'KZ32 026Y BIWE DPTQ DKZG', '47.3167', '5.0167'),
('Minnaminnie Frearson', 'UlsoM0', 'mfrearsone@dot.gov', 'PS28 AYOU WPVL HMW1 LAD2 DY9U ESZE T', '16.70228', '102.8557'),
('Gilemette Chillingworth', 'Uox8Z6', 'gchillingworthj@apple.com', 'SK68 5891 3807 6184 0389 1248', '-7.1035', '113.5201'),
('Kira Canero', 'UPcWLQf', 'kcanerok@illinois.edu', 'PL76 8685 3521 1890 8121 7306 1689', '-26.34066', '-60.43207'),
('Brody Anthonsen', 'z1fQ0S7Joi5H', 'banthonsenn@alexa.com', 'VG24 BBZS 5386 1093 7524 9683', '-8.0826', '111.9982'),
('Odilia Bumpass', 'ZBh5CrGtr', 'obumpasso@telegraph.co.uk', 'FR70 8451 9747 75VB VJA0 H6MX H47', '41.44587', '113.30316');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `entassontai`
--

CREATE TABLE `entassontai` (
  `kwd_aks` int(11) NOT NULL,
  `kwd_diad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `entassontai`
--

INSERT INTO `entassontai` (`kwd_aks`, `kwd_diad`) VALUES
(17, 2),
(17, 4),
(20, 5),
(22, 2),
(22, 4),
(25, 3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `epithumi`
--

CREATE TABLE `epithumi` (
  `kwd_endiaf` varchar(20) NOT NULL,
  `kwd_aks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `epithumi`
--

INSERT INTO `epithumi` (`kwd_endiaf`, `kwd_aks`) VALUES
('gq2N9PnNG', 17),
('gq2N9PnNG', 22),
('gq2N9PnNG', 23),
('OoIxUhQf', 25),
('OoIxUhQf', 26),
('OoIxUhQf', 28),
('z1fQ0S7Joi5H', 17),
('z1fQ0S7Joi5H', 22),
('z1fQ0S7Joi5H', 23);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `estiasi`
--

CREATE TABLE `estiasi` (
  `onoma` varchar(40) NOT NULL,
  `dieuthunsi` varchar(40) NOT NULL,
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL,
  `aksiologisi` text,
  `type` varchar(40) NOT NULL,
  `kwdikos` int(11) NOT NULL,
  `prosito` enum('NAI','OXI') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `estiasi`
--

INSERT INTO `estiasi` (`onoma`, `dieuthunsi`, `geometric_width`, `geometric_length`, `aksiologisi`, `type`, `kwdikos`, `prosito`) VALUES
('Ristorante Il Padellaccio 2', 'Via Palestro,73,Roma', '41.893342', '12.510266', 'Good honest food for a amazing price outside of the city centre.....fornt of house team are amazing and attentive and will always keep you coming back ', 'fish cuisine', 21, 'NAI'),
('Ristorante La Taverna Italiana Roma', 'Viale Manzoni 107 Via Giovanni Giolitti ', '41.894081', '12.510945', 'ειναι εκπληκτικο.τελεια φαγητο.τελειες τιμες.το μονο αρνητικο ειναι τα μικρα πιατα', 'Italian cuisine', 22, 'NAI'),
('Le Caveau Ristorante', 'Via Conte Verde 6/6a,Roma', '41.893805', '12.506283', 'We had a lovely time. Great service. The staff spoke English and were very helpful explaining unknown items on the menu and offering advice/recommendations. A bit pricey but includes service fee so no need to tip. Recommend the fruit sorbet. Excellent for sharing and utterly delicious.', 'Italian cuisine', 23, 'OXI'),
('Trattoria Vecchia Roma', 'Via Ferruccio,12,Roma,', '41.893781', '12.502270', 'Τοπικές γεύσεις! Φοβερό φαγητό, καλές τιμές,απλά θέλει κράτηση τουλάχιστον μια μέρα πριν για να είστε σίγουροι ότι θα φάτε την μέρα που θα πάτε!! ', 'Italian cuisine', 24, 'NAI'),
('Os Club', 'Via delle Terme di Traiano,4,Roma,', '41.893310', '12.498440', 'Ottima location in centro... ma la particolarità delle scuderie... che sono lo stesso locale la trovo superiore in accoglienza e qualità del cibo.', 'fish cuisine', 25, 'OXI'),
('Zizzi Pizza', 'Piazza di S. Martino Ai Monti,5,Roma', '41.895295', '12.497529', 'Very friendly staff, splendido pizzas, small but varied selection of craft beers and artisan soft drinks. I came back here a second time in space of three hours. I was welcomed back with hearty recognition and now I΄m stuffed!', 'Pizzerie', 26, 'NAI'),
('Le Torri', 'Via Giovanni Lanza,132,Roma', '41.895310', '12.498556', NULL, 'Snack Bar', 27, 'NAI'),
('Scoglio di Frisio', 'Via Merulana,256,Roma', '41.895415', '12.499852', 'Exceptional staff. Service was quick and ambience is superb. I was fortunate enough to walk into a piano and soprano performance at dinner time. Thoroughly enjoyed myself.', 'Restaurant', 28, 'OXI'),
('il pasticciaccio', 'Via Merulana,36-37,Roma', '41.894875', '12.500501', 'Pasticceria ottima!Personale accogliente;consiglio caldamente il fiocco di neve al pistacchio.Lo consiglio agli amanti dei dolci.Anche un buon rapporto qualità prezzo.Nota negativa:manca la carta igienica nella toilette,ma cosa da poco.Per il resto è perfetto lo consiglio', 'Αρτοποιείο - Ζαχαροπλαστείο', 29, 'NAI'),
('Pizzeria Rustica,Di Vitali Gianluca', 'Via Leopardi,44,00185 Roma', '41.894480', '12.502016', NULL, 'Pizzerie', 30, 'NAI');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `famous_streets`
--

CREATE TABLE `famous_streets` (
  `kwd_drom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `famous_streets`
--

INSERT INTO `famous_streets` (`kwd_drom`) VALUES
(16),
(19),
(27);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `guide`
--

CREATE TABLE `guide` (
  `kwd_diad` int(11) NOT NULL,
  `kwd_endiaf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `guide`
--

INSERT INTO `guide` (`kwd_diad`, `kwd_endiaf`) VALUES
(2, 'gq2N9PnNG'),
(2, 'z1fQ0S7Joi5H'),
(3, 'OoIxUhQf');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `metaforika`
--

CREATE TABLE `metaforika` (
  `kwdikos` int(11) NOT NULL,
  `type` enum('Μετρό','Λεωφορείο','Ιδιωτικό') DEFAULT NULL,
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL,
  `stasi` varchar(40) NOT NULL,
  `price` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `metaforika`
--

INSERT INTO `metaforika` (`kwdikos`, `type`, `geometric_width`, `geometric_length`, `stasi`, `price`) VALUES
(1, 'Μετρό', '41.898557', '12.501998', 'Barberini', '1.50'),
(1, 'Μετρό', '41.912704', '12.476383', 'Flaminio', '1.50'),
(1, 'Μετρό', '41.901169', '12.499627', 'Roma Termini', '1.50'),
(2, 'Μετρό', '41.913599', '12.520849', 'Bologna', '1.50'),
(2, 'Μετρό', '41.908713', '12.512284', 'Policlinico', '1.50'),
(2, 'Μετρό', '41.901169', '12.499627', 'Roma Termini', '1.50'),
(5, 'Λεωφορείο', '41.898557', '12.501998', 'Turati/fanti', '2.00'),
(7, 'Λεωφορείο', '41.898557', '12.601998', 'Romani', '2.00'),
(7, 'Λεωφορείο', '41.898557', '12.501998', 'Turati/fanti', '2.00'),
(11, 'Λεωφορείο', '42.898557', '12.501998', 'Ceasar', '2.00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `mnimeia`
--

CREATE TABLE `mnimeia` (
  `kwd_mnim` int(11) NOT NULL,
  `istoric_epox` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `mnimeia`
--

INSERT INTO `mnimeia` (`kwd_mnim`, `istoric_epox`) VALUES
(17, 'Ρωμαϊκή Εποχή'),
(18, 'Ρωμαϊκή Εποχή'),
(20, 'Μετά Ρωμαϊκή Εποχη'),
(21, 'Αναγέννηση'),
(22, 'Ρωμαϊκή Εποχή'),
(26, 'Αναγέννηση');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `mouseia`
--

CREATE TABLE `mouseia` (
  `kwd_mous` int(11) NOT NULL,
  `dieuthunsi` varchar(40) NOT NULL,
  `urlsite` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `mouseia`
--

INSERT INTO `mouseia` (`kwd_mous`, `dieuthunsi`, `urlsite`) VALUES
(23, '00120 Vatican City Βατικανό', NULL),
(24, 'Lungotevere Castello 50 00193 Roma', 'http://www.castelsantangelo.com/'),
(25, 'Piazzale Scipione Borghese 5 00197 Roma', 'http://www.galleriaborghese.it/it/');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `prosvasi_aks`
--

CREATE TABLE `prosvasi_aks` (
  `kwd_meta` int(11) NOT NULL,
  `kwd_aks` int(11) NOT NULL,
  `stasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `prosvasi_aks`
--

INSERT INTO `prosvasi_aks` (`kwd_meta`, `kwd_aks`, `stasi`) VALUES
(1, 16, 'Roma Termini'),
(1, 23, 'Barberini'),
(2, 23, 'Roma Termini'),
(5, 16, 'Turati/fanti'),
(7, 26, 'Turati/fanti'),
(11, 21, 'Ceasar');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `search_diam`
--

CREATE TABLE `search_diam` (
  `kwd_endiaf` varchar(20) NOT NULL,
  `kwd_diam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `search_diam`
--

INSERT INTO `search_diam` (`kwd_endiaf`, `kwd_diam`) VALUES
('gq2N9PnNG', 5),
('OoIxUhQf', 4),
('z1fQ0S7Joi5H', 1),
('z1fQ0S7Joi5H', 5);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `search_esti`
--

CREATE TABLE `search_esti` (
  `kwd_endiaf` varchar(20) NOT NULL,
  `kwd_esti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `search_esti`
--

INSERT INTO `search_esti` (`kwd_endiaf`, `kwd_esti`) VALUES
('gq2N9PnNG', 26),
('OoIxUhQf', 22),
('OoIxUhQf', 26),
('OoIxUhQf', 27),
('OoIxUhQf', 29),
('z1fQ0S7Joi5H', 26),
('z1fQ0S7Joi5H', 29);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `search_metaf`
--

CREATE TABLE `search_metaf` (
  `kwd_endiaf` varchar(20) NOT NULL,
  `kwd_metaf` int(11) NOT NULL,
  `stasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tourist_routes`
--

CREATE TABLE `tourist_routes` (
  `title` varchar(100) DEFAULT NULL,
  `description` text NOT NULL,
  `dieuthunsi` varchar(40) NOT NULL,
  `geometric_width` varchar(40) NOT NULL,
  `geometric_length` varchar(40) NOT NULL,
  `kwdikos` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `tourist_routes`
--

INSERT INTO `tourist_routes` (`title`, `description`, `dieuthunsi`, `geometric_width`, `geometric_length`, `kwdikos`, `price`) VALUES
('Skip the Line:Colosseum,Roman Forum & Ancient Rome Tour', 'Walk in the footsteps of Roman emperors and citizens on a 3-hour tour of Ancient Rome with skip-the-line entrance to the Colosseum, Roman Forum, and Palatine Hill. End with a walk along the Sacred Way as you immerse yourself in Roman history.', 'Largo Gaetana Agnesi', '41.8913525', '12.4916908', 2, '50.00'),
('Borghese Gallery Ticket', 'After meeting a representative and exchanging your voucher,gain quick access to the Borghese Gallery and Museum,one of the worlds most incredible art collections where you get to see the art in its original setting. There are sculptures and paintings produced by masters such as Bernini,Canova,Caravaggio and Titian.', 'Piazzale del Museo Borghese', '41.9139755', '12.4919086', 3, '38.00'),
('Rome: 3.5-hour Colosseum & Roman Forum Walking Tour', 'Skip the long lines and visit the Colosseum, the Roman Forum, the Capitoline Hill, Piazza Venezia, the Pantheon and Piazza Navona on this 3.5-hour guided walking tour in a small group with a maximum of 18 people.Key Det', 'Colosseo metro station(Line B)', '41.8913525', '12.4916908', 4, '34.00'),
('Vatican & Ancient Rome:7-Hour Skip-the-Line Tour', 'See the important sites of Ancient Rome on this combination of 2 walking tours. See the highlights of the Vatican in the morning, and then discover over 2,000 years of Romes art and architecture in the afternoon.', 'metro station is Ottaviano(line A)', '41.9073974', '12.4560168', 5, '72.00');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `aksiotheata`
--
ALTER TABLE `aksiotheata`
  ADD PRIMARY KEY (`kwdikos`);

--
-- Ευρετήρια για πίνακα `diamoni`
--
ALTER TABLE `diamoni`
  ADD PRIMARY KEY (`kwdikos`);

--
-- Ευρετήρια για πίνακα `ekdhlwseis`
--
ALTER TABLE `ekdhlwseis`
  ADD PRIMARY KEY (`kwd_ekd`);

--
-- Ευρετήρια για πίνακα `endiaferomenos`
--
ALTER TABLE `endiaferomenos`
  ADD PRIMARY KEY (`kwdikos`);

--
-- Ευρετήρια για πίνακα `entassontai`
--
ALTER TABLE `entassontai`
  ADD PRIMARY KEY (`kwd_aks`,`kwd_diad`),
  ADD KEY `kwd_diad` (`kwd_diad`);

--
-- Ευρετήρια για πίνακα `epithumi`
--
ALTER TABLE `epithumi`
  ADD PRIMARY KEY (`kwd_endiaf`,`kwd_aks`),
  ADD KEY `kwd_aks` (`kwd_aks`);

--
-- Ευρετήρια για πίνακα `estiasi`
--
ALTER TABLE `estiasi`
  ADD PRIMARY KEY (`kwdikos`);

--
-- Ευρετήρια για πίνακα `famous_streets`
--
ALTER TABLE `famous_streets`
  ADD PRIMARY KEY (`kwd_drom`);

--
-- Ευρετήρια για πίνακα `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`kwd_diad`,`kwd_endiaf`),
  ADD KEY `kwd_endiaf` (`kwd_endiaf`);

--
-- Ευρετήρια για πίνακα `metaforika`
--
ALTER TABLE `metaforika`
  ADD PRIMARY KEY (`kwdikos`,`stasi`);

--
-- Ευρετήρια για πίνακα `mnimeia`
--
ALTER TABLE `mnimeia`
  ADD PRIMARY KEY (`kwd_mnim`);

--
-- Ευρετήρια για πίνακα `mouseia`
--
ALTER TABLE `mouseia`
  ADD PRIMARY KEY (`kwd_mous`);

--
-- Ευρετήρια για πίνακα `prosvasi_aks`
--
ALTER TABLE `prosvasi_aks`
  ADD PRIMARY KEY (`kwd_meta`,`kwd_aks`,`stasi`),
  ADD KEY `kwd_meta` (`kwd_meta`,`stasi`),
  ADD KEY `kwd_aks` (`kwd_aks`);

--
-- Ευρετήρια για πίνακα `search_diam`
--
ALTER TABLE `search_diam`
  ADD PRIMARY KEY (`kwd_endiaf`,`kwd_diam`),
  ADD KEY `kwd_diam` (`kwd_diam`);

--
-- Ευρετήρια για πίνακα `search_esti`
--
ALTER TABLE `search_esti`
  ADD PRIMARY KEY (`kwd_endiaf`,`kwd_esti`),
  ADD KEY `kwd_esti` (`kwd_esti`);

--
-- Ευρετήρια για πίνακα `search_metaf`
--
ALTER TABLE `search_metaf`
  ADD PRIMARY KEY (`kwd_endiaf`,`kwd_metaf`,`stasi`),
  ADD KEY `kwd_metaf` (`kwd_metaf`,`stasi`);

--
-- Ευρετήρια για πίνακα `tourist_routes`
--
ALTER TABLE `tourist_routes`
  ADD PRIMARY KEY (`kwdikos`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `aksiotheata`
--
ALTER TABLE `aksiotheata`
  MODIFY `kwdikos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT για πίνακα `diamoni`
--
ALTER TABLE `diamoni`
  MODIFY `kwdikos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT για πίνακα `ekdhlwseis`
--
ALTER TABLE `ekdhlwseis`
  MODIFY `kwd_ekd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT για πίνακα `estiasi`
--
ALTER TABLE `estiasi`
  MODIFY `kwdikos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT για πίνακα `famous_streets`
--
ALTER TABLE `famous_streets`
  MODIFY `kwd_drom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT για πίνακα `mnimeia`
--
ALTER TABLE `mnimeia`
  MODIFY `kwd_mnim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT για πίνακα `mouseia`
--
ALTER TABLE `mouseia`
  MODIFY `kwd_mous` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT για πίνακα `tourist_routes`
--
ALTER TABLE `tourist_routes`
  MODIFY `kwdikos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `ekdhlwseis`
--
ALTER TABLE `ekdhlwseis`
  ADD CONSTRAINT `ekdhlwseis_ibfk_1` FOREIGN KEY (`kwd_ekd`) REFERENCES `aksiotheata` (`kwdikos`);

--
-- Περιορισμοί για πίνακα `entassontai`
--
ALTER TABLE `entassontai`
  ADD CONSTRAINT `entassontai_ibfk_1` FOREIGN KEY (`kwd_aks`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entassontai_ibfk_2` FOREIGN KEY (`kwd_diad`) REFERENCES `tourist_routes` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `epithumi`
--
ALTER TABLE `epithumi`
  ADD CONSTRAINT `epithumi_ibfk_1` FOREIGN KEY (`kwd_endiaf`) REFERENCES `endiaferomenos` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `epithumi_ibfk_2` FOREIGN KEY (`kwd_aks`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `famous_streets`
--
ALTER TABLE `famous_streets`
  ADD CONSTRAINT `famous_streets_ibfk_1` FOREIGN KEY (`kwd_drom`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `guide_ibfk_1` FOREIGN KEY (`kwd_endiaf`) REFERENCES `endiaferomenos` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guide_ibfk_2` FOREIGN KEY (`kwd_diad`) REFERENCES `tourist_routes` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `mnimeia`
--
ALTER TABLE `mnimeia`
  ADD CONSTRAINT `mnimeia_ibfk_1` FOREIGN KEY (`kwd_mnim`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `mouseia`
--
ALTER TABLE `mouseia`
  ADD CONSTRAINT `mouseia_ibfk_1` FOREIGN KEY (`kwd_mous`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `prosvasi_aks`
--
ALTER TABLE `prosvasi_aks`
  ADD CONSTRAINT `prosvasi_aks_ibfk_1` FOREIGN KEY (`kwd_meta`,`stasi`) REFERENCES `metaforika` (`kwdikos`, `stasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prosvasi_aks_ibfk_2` FOREIGN KEY (`kwd_aks`) REFERENCES `aksiotheata` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `search_diam`
--
ALTER TABLE `search_diam`
  ADD CONSTRAINT `search_diam_ibfk_1` FOREIGN KEY (`kwd_endiaf`) REFERENCES `endiaferomenos` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `search_diam_ibfk_2` FOREIGN KEY (`kwd_diam`) REFERENCES `diamoni` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `search_esti`
--
ALTER TABLE `search_esti`
  ADD CONSTRAINT `search_esti_ibfk_1` FOREIGN KEY (`kwd_endiaf`) REFERENCES `endiaferomenos` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `search_esti_ibfk_2` FOREIGN KEY (`kwd_esti`) REFERENCES `estiasi` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `search_metaf`
--
ALTER TABLE `search_metaf`
  ADD CONSTRAINT `search_metaf_ibfk_1` FOREIGN KEY (`kwd_endiaf`) REFERENCES `endiaferomenos` (`kwdikos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `search_metaf_ibfk_2` FOREIGN KEY (`kwd_metaf`,`stasi`) REFERENCES `metaforika` (`kwdikos`, `stasi`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
