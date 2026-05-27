-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 03:33 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(2, 'travel', 'this is description for travel category'),
(4, 'uncategorized', 'uncategorized'),
(5, 'Art', 'Art'),
(6, 'Wildlife', 'Wildlife'),
(7, 'Science &amp; Technology', 'Science &amp; Technology'),
(8, 'Food', 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(24, 'Methuselah', 'These drawings are based upon the Ancient Bristlecone Pine Forest of the Eastern Sierras in CA. Some trees here are as old as the pyramids but are left unmarked. Each pillar of time grows slowly, battered and twisted by its extreme conditions. Hotter droughts and an invasive bark beetles are finally placing their marks upon these trees. A warming climate has put these weathered Goliaths on a precipice.\r\n\r\nMemory and the turning of time are all themes within my work. Trees make me nostalgic of the wild freedom, wonder and fear I experienced growing up in my childhood forests of Indiana. They provide me with a mirror to look inward. My goal as an artist is to help provide access for others to that self reflective mirror, to reconnect us with looking and be an envoy to nature.', '1663679944Rachael_Pease_04-600x600.jpg', '2022-09-20 13:19:04', 5, 17, 0),
(25, 'Life Along the Ganges', 'Varanasi is one of the oldest living cities in the world, with traditions dating back to the 6th century BC. It is the holiest of all places of pilgrimage, the Jerusalem or Lalibela of India.\r\nContrary to the myth that nothing interesting happens next to the water, Varanasi is one of the oldest living cities in the world.\r\nThis ancient city on the banks of the Ganges river is the holiest of all places of pilgrimage. The Jerusalem or Lalibela of India. The place where Buddha himself came to teach. Already known 2.500 years ago, before even Rome had risen to fame, it is also the only city in the world that has maintained the same traditions since 6th Century B.C.\r\nIn the ghats, along the river Ganges, between temples and shrines, you can feel the drama and beauty of life and death. This is where devout pilgrims from all over India come to worship and bathe.\r\nEarly in the morning the pilgrims come to immerse themselves in the holy river, said to have originated from the body of a god at the beginning of time, from the union of the ancient Varuna and Asi river. According to different sources and religious books, the name Varanasi originated from these rivers &mdash; the mystical veins of the body or the sword, Asi, and the averter, Varana, that protect the city.\r\n\r\n\r\n\r\n', '1663680151Screenshot (67).png', '2022-09-20 13:22:31', 2, 17, 1),
(26, 'Living Root Bridges of Megahalaya', 'In the far north east of India among the East Khasi Hills live the Khasi people. With skill and patience they weave their remarkable paths through the forest.\r\n\r\nBack in 2005, during a bout of backpacking in India, I heard about Megahalaya&rsquo;s living root bridges from a fellow traveler I had met in Darjeeling. Although he confessed to never having actually been there himself, he said he had heard from another person that the area called the East Khasi Hills was a fascinating and under-explored place.\r\n\r\nI clearly remember trying to conjure up an image in my mind of what a &lsquo;living root bridge&rsquo; might look like, but to be honest, the best I could muster was something akin to a log across a small brook, a sight I&rsquo;ve seen many times during various jungle treks all over the world.\r\n\r\nAssam, India\r\n\r\nIn fact, when I think about it now, I&rsquo;m amazed I ever bothered following up the lead on his recommendation, but I am so thankful that the lure of the north east states as a whole was strong enough to eventually get me on a train to Guwahati, which serves as the gateway to this part of India.\r\n\r\nAt that time there was no mention of this part of Meghalaya in any guide books. In fact, the Lonely Planet only devoted a few sparse pages to all seven of the north east frontier states due to the ongoing conflicts in the area with a general warning for tourists to stay away.\r\n\r\nOf course, a warning like this &mdash; to not to go somewhere &mdash; is a very seductive thing to a person like myself.\r\nOver the years experience has taught me that an intelligent and friendly traveller can avoid this type of internal conflict quite easily, since flash points tend to occur as isolated incidences in an otherwise peaceful and welcoming place.\r\n\r\n', '1663680210Screenshot (68).png', '2022-09-20 13:23:30', 2, 17, 0),
(27, 'Is Antifreeze The Same As Coolant?', 'Although the terms&#039; antifreeze&#039; and\r\n&#039;coolant&#039; are often used interchangeably, they&#039;re not the same thing. Antifreeze is a liquid that contains either ethylene glycol or propylene glycol, whereas a coolant is a mixture of antifreeze and water.\r\n\r\nMost modern vehicles have cooling systems that use a solution of water and antifreeze to maintain a stable temperature and prevent damage to the engine. Antifreeze can actually damage your car.\r\n\r\nPure antifreeze typically has a freezing point of between -18C and -15C.  The freezing point can be further lowered when mixed with water, making it a more effective coolant.\r\n\r\n\r\n', '1663680247Screenshot (69).png', '2022-09-20 13:24:07', 7, 17, 0),
(28, 'Storytellers of data, fortune tellers of the future.', '&ldquo;What do data scientists, well, do?&rdquo; Yukta&rsquo;s blog discusses some of the most interesting and exciting facets of the data science field, and what is at the core of the data scientist profession.\r\nLooking back on the last three years of my undergraduate journey, I cannot help but reflect on a particular question. \r\n\r\nA question that has piqued my mind time and time again, that has been asked by friends and family alike. A question that I have eventually had to ask myself, that has brought upon pondering and reflection for days on end.  \r\n\r\n&quot;What do data scientists, well, do?&quot; \r\n\r\nIt seems like a simple question, Google-able if you will. Upon which we are inundated with a sea of search results that neither deliver the true definition of this up-and-coming occupation, nor convey the true beauty of data science. The fact is, data science has long been misunderstood as a profession that deals with data in its primitive sense, accompanied by tools and algorithms that appear to us as a blur of software which we believe are at the crux of becoming a data scientist. While web definitions don&rsquo;t go much further in explaining the field beyond this, there is a lot more to the exciting world of data science. \r\n\r\nThe term data science was first coined by Paul Naur in 1974, in conjunction with the idea of datalogy and how these dealt with the science of working with &ldquo;data and data processes&rdquo;. As such, data science as a concept is not even 50 years old, but has its roots in a field that has existed for over 300 years - the field of statistics. Indeed, data science combines the time-tested theories and workings of statistics with our modern-day computing and data processing capabilities to bring the most meaning it can to ordinary datasets. By turning the once-manual calculations and models proposed for different statistical operations, whether it is hypothesis testing, discriminant analysis or regression, into programmable, tuneable algorithms that can run on computers in a matter of seconds, data science has broadened the horizons of the conservative world of statistics. So much so that we now have new statistical models derived entirely from computational capabilities, such as support vector machines. This has allowed for high-dimensional analyses, the sensemaking of &lsquo;big data&rsquo; (a story for another day!), and revolutionary data insights.  \r\n\r\nAs such, while most of us are aware of the idea that data science involves summarising and representing data, whether it is through pie charts or histograms, this is just a small part of the bigger data science operation - what we actually want to achieve is to understand why our data behaves like it does. We want to understand how our observations act, how our variables are connected in the real world, and how true, or &lsquo;significant&rsquo;, these connections really are. \r\n\r\nRegression is the first place to start with this, by correlating one variable with another. How does a one unit increase in sepal width affect the sepal length? And how consistently is it doing this? This is where regression coefficients and the coefficient of determination come into play, indicating the direction and magnitude of the relationship. Such analysis can be linear or non-linear, furnished with polynomial terms, or include more than one predictor variable, as is with multivariate regression.  \r\n\r\n', '1663680368joshua-sortino-LqKhnDzSF-8-unsplash (1).jpg', '2022-09-20 13:26:08', 7, 1, 0),
(29, 'The five W&#039;s of time management', 'I remember an old adage, &ldquo;Time flies&rdquo; or &ldquo;Time flies, remember death&rdquo;. I am not, however here to talk about death, or the end of all things&mdash;but the importance of time and its proper use in your academic development. Everything or every event depends on time, from sporting activities to business meetings; our birth to our first graduation ceremony or first kiss. Time gauges our successes and failures, also our life and its development in a society and the planet.\r\n\r\nAs a student of the University of London, I had to consider several implications of using my time effectively&mdash;using time to bring about a favourable result. Failure would be a sure thing if I did not complete my assessments or make space in my busy schedule to study and review the material. I also had to consider the length of time it would take to cover all the necessary chapters in the module that would bring about a comprehensive understanding of the topic. So time, when applied effectively brings about good results. However, as they say &ldquo;Rome was not built in a day&rdquo;, so it would be suffice to say that some of us still struggle with this construct of measuring time and how it affects our daily activities.\r\n\r\nIt would be fitting to suggest ways one can accomplish tasks or goals, especially of personal development. I have labelled it as the The 5 W&rsquo;s of Time Management.\r\n\r\nThe idea of the 5 W&rsquo;s is not new so I will not attempt to claim ownership of its origin. We have heard about 5 W&rsquo;s before when composing a story or detailing an event. They are Who, Why, What, Where and When.\r\n\r\nHow does time fit into these 5 W&rsquo;s? \r\n\r\nLet&rsquo;s start by tackling these aspects of an event or task, using the context of a main character who is a university student and we will see how the construct of time affects them.\r\n\r\n1.    Who?\r\nWe are the main characters! You must recognize at this point in time that on one half, you are responsible for your own development, no one else. The other half is Who you will affect positively after (a point in time, obviously) whether it is your family, friends or work peers.\r\n\r\n2.    Why?\r\nSetting aside a moment to pinpoint the reasons behind your academic journey and pushing those reading hours would bring about a realization or create that sense of purpose for yourself. In other words, the great why.\r\n\r\n3.    What?\r\nIdentify your objectives or goals and what is needed to accomplish them. Formulate a detailed plan and engage in continuous, steady action through study. Those with time constraints need to consider how to bring about a successful outcome, perhaps graduation and starting your chosen career.\r\n\r\n4.    Where?\r\nThe event or task has to be done in a place which occupies a moment in time, the Where. A student must find a quiet place to study and it must be done at the best time, without distractions, to achieve success. \r\n\r\n5.    When?\r\nOne must determine the most opportune moment to complete a task or goal, for doing the particular thing at the wrong moment in time, could hamper success. Reviewing material last minute or not making time to practise would place an obstacle to a student&rsquo;s academic development.\r\n\r\nEffectively applying the 5 W&rsquo;s of Time Management has helped my study process exponentially. If you choose to use it, I hope it will do the same for you.', '1663680435Untitled design (28).png', '2022-09-20 13:27:15', 5, 1, 0),
(30, ' Pesto meatballs and orecchiette', 'As long as we are a full six days before fall begins, I am allowed to sneak in one more zucchini recipe. It would be right there in my contract, had I one, above the expectation of ironed shoelaces and below that of a daily slice of chocolate biscuit cake. I&rsquo;d actually intended this recipe for July (and the eggplant involtini for August). But July was so hot, and August wasn&rsquo;t much better; I couldn&rsquo;t bring myself to publish recipes that require oven time, so I waited for a better moment to arrive. Our patience has been rewarded; this brothy, late summer-y bowl of pasta and meatballs is absolutely perfect for right now, with the kind of sunny warm days that require a morning and evening cardigan &mdash; i.e. the very best weather on this earth, full stop.\r\n\r\nWe start with a sheet pan of ground turkey meatballs but we add pesto to them. We&rsquo;ll roast them on a sheet pan with some vegetables that go well with pesto; I chose zucchini but others will work. While they roast, we&rsquo;ll boil some orecchiette, whose shape acts like tiny meatball catcher mitts. And then we put everything together in a brothy pesto puddle in a bowl that might be a fork thing, might be a spoon thing, or might be both; I see no reason to choose.\r\n\r\n\r\n\r\n', '1663680474turkey-pesto-meatballs-11-scaled (1).jpeg', '2022-09-20 13:27:54', 8, 1, 0),
(31, 'Chocolate and Toasted Hazelnut Milk', 'Like most people with at least a passing interest in foods made from recognizable ingredients, I&rsquo;ve heard a lot about almond milk in the last decade. But my love of all things milk, cream, cr&egrave;me fra&icirc;che, sour cream, double-cream, triple-creme, dulce de leche, sweetened condensed milk and milk fudge (you know, just to get started) was such that I had little interest in making it a regular part of my life.\r\nPlus, there was so much that I didn&rsquo;t understand. First, most recipes call for raw almonds. Have you ever tasted a raw almond before? They taste, to me, terrible, like waxy nothingness. Why stretch this waxy nothingness into a glass of liquid? However, you know that flavor you get when you deeply toast almonds to a nice milky coffee (mm, milky coffee) shade, that incredible flavor which is amazing in pastries as it is on salads and even for a plain snack? Why weren&rsquo;t we making almond milk out of toasted almonds &mdash; was it just the shade? Does beige &ldquo;milk&rdquo; unnerve people?\r\n\r\nPost navigation\r\nPrevious post: corn, cheddar and scallion strataNext post: herbed tomato and roasted garlic tart\r\nRECIPES\r\nchocolate and toasted hazelnut milk\r\nSEPTEMBER 5, 2014 JUMP TO COMMENTS\r\nLike most people with at least a passing interest in foods made from recognizable ingredients, I&rsquo;ve heard a lot about almond milk in the last decade. But my love of all things milk, cream, cr&egrave;me fra&icirc;che, sour cream, double-cream, triple-creme, dulce de leche, sweetened condensed milk and milk fudge (you know, just to get started) was such that I had little interest in making it a regular part of my life.\r\n\r\n\r\nwell-toasted hazelnuts\r\nsoaking in water overnight or longer\r\n\r\nPlus, there was so much that I didn&rsquo;t understand. First, most recipes call for raw almonds. Have you ever tasted a raw almond before? They taste, to me, terrible, like waxy nothingness. Why stretch this waxy nothingness into a glass of liquid? However, you know that flavor you get when you deeply toast almonds to a nice milky coffee (mm, milky coffee) shade, that incredible flavor which is amazing in pastries as it is on salads and even for a plain snack? Why weren&rsquo;t we making almond milk out of toasted almonds &mdash; was it just the shade? Does beige &ldquo;milk&rdquo; unnerve people?\r\n\r\nlooking real murky the next day\r\n\r\nrinsing the nuts\r\ni admire their buoyancy\r\nthings get violent\r\n\r\nAnd then &mdash; yes, I know, there&rsquo;s more &mdash; I mean, I like almonds. I do! But I also love walnuts and pecans and hazelnuts. Where&rsquo;s the pecan milk? Where&rsquo;s the hazelnut milk? Where&rsquo;s the chocolate-hazelnut omgnutellamilk.\r\n\r\n[Insert sound of a needle scratching off a record.]\r\nSuddenly, I was very very VERY interested in vegan dairy products &mdash; although, typically, for all the wrong reasons, but it&rsquo;s too late to change my ways now. I toasted hazelnuts so they were quite dark. I soaked them for most of a day in water. I blended them until as pureed as possible. I strained. I squeezed. And then I melted chocolate and whisked the toasted hazelnut milk in a little at a time. I chilled it. I poured it into tiny glasses and propped in bendy straws. And then my darling little kindergartener arrived home from his first day at school and I said &ldquo;Mama made you a chocolate snack!&rdquo; and he was so excited and I poured him a glass and he said, &ldquo;No. I do not like this.&rdquo;\r\n\r\nPost navigation\r\nPrevious post: corn, cheddar and scallion strataNext post: herbed tomato and roasted garlic tart\r\nRECIPES\r\nchocolate and toasted hazelnut milk\r\nSEPTEMBER 5, 2014 JUMP TO COMMENTS\r\nLike most people with at least a passing interest in foods made from recognizable ingredients, I&rsquo;ve heard a lot about almond milk in the last decade. But my love of all things milk, cream, cr&egrave;me fra&icirc;che, sour cream, double-cream, triple-creme, dulce de leche, sweetened condensed milk and milk fudge (you know, just to get started) was such that I had little interest in making it a regular part of my life.\r\n\r\n\r\nwell-toasted hazelnuts\r\nsoaking in water overnight or longer\r\n\r\nPlus, there was so much that I didn&rsquo;t understand. First, most recipes call for raw almonds. Have you ever tasted a raw almond before? They taste, to me, terrible, like waxy nothingness. Why stretch this waxy nothingness into a glass of liquid? However, you know that flavor you get when you deeply toast almonds to a nice milky coffee (mm, milky coffee) shade, that incredible flavor which is amazing in pastries as it is on salads and even for a plain snack? Why weren&rsquo;t we making almond milk out of toasted almonds &mdash; was it just the shade? Does beige &ldquo;milk&rdquo; unnerve people?\r\n\r\nlooking real murky the next day\r\n\r\nrinsing the nuts\r\ni admire their buoyancy\r\nthings get violent\r\n\r\nAnd then &mdash; yes, I know, there&rsquo;s more &mdash; I mean, I like almonds. I do! But I also love walnuts and pecans and hazelnuts. Where&rsquo;s the pecan milk? Where&rsquo;s the hazelnut milk? Where&rsquo;s the chocolate-hazelnut omgnutellamilk.\r\n\r\n[Insert sound of a needle scratching off a record.]\r\n\r\npouring into a tight cheesecloth-lined strainer\r\nsqueezing liquids from solids\r\n\r\nSuddenly, I was very very VERY interested in vegan dairy products &mdash; although, typically, for all the wrong reasons, but it&rsquo;s too late to change my ways now. I toasted hazelnuts so they were quite dark. I soaked them for most of a day in water. I blended them until as pureed as possible. I strained. I squeezed. And then I melted chocolate and whisked the toasted hazelnut milk in a little at a time. I chilled it. I poured it into tiny glasses and propped in bendy straws. And then my darling little kindergartener arrived home from his first day at school and I said &ldquo;Mama made you a chocolate snack!&rdquo; and he was so excited and I poured him a glass and he said, &ldquo;No. I do not like this.&rdquo;\r\n\r\nthis is toasted hazelnut milk. but we&#039;re not stopping here.\r\nchopping chocolate, but chips work too\r\n\r\nI suppose it should be noted that nut milks are probably an acquired taste &mdash; if you&rsquo;re not crazy about almond milk, this may not convert you. But my husband and I loved it. It&rsquo;s barely sweet (though you can add a little sugar if desired) and tastes spectacularly of chocolate and hazelnuts, without the dairy products muddling the flavor &mdash; it will not survive the weekend. It may not even survive this paragraph.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1663680523chocolate-and-toasted-hazelnut-milk1.jpeg', '2022-09-20 13:28:43', 8, 1, 0),
(32, 'Tiger Safari', 'Seeing this raw beast free in the wild is an out of the world experience. When you see a tiger close to you, you forget all about the world around you. It is only you and the tiger that occupy your mind. Your heartbeat quickens and seconds seem like centuries. This is an experience that you should not miss out on. In this blog you find all the information you should know about tiger safaris and the national parks of India. You can read about facts that will change your whole perspective of the jungle land. You can also read about the conservation of these mighty beasts.\r\n\r\n\r\n\r\n\r\n', '1663680560Gir-National-Park.jpg', '2022-09-20 13:29:20', 6, 1, 0),
(33, 'KAZIRANGA &ndash; A GREATEST EXAMPLE OF WILDLIFE PROTECTION AND CONSERVATION WORLDWIDE', 'Kaziranga National Park is located in Assam. It is spread over the region of Golaghat and Nagaon District of Assam and Karbi hills and Anglong Landscape (Both in Burma). Kaziranga National Park is the habitat for Single Horned Rhinoceros, Swamp Deer, Royal Bengal Tiger, Golden Tiger, Asiatic Wild Water Buffalo, Elephant and so many traveling birds. Kaziranga National Park Assam is mostly famous for it&rsquo;s Indian rhinoceros.\r\nKAZIRANGA &ndash; A GREATEST EXAMPLE OF WILDLIFE PROTECTION AND CONSERVATION WORLDWIDE\r\nPosted on 16 December 2017 by India Wildlife\r\nKaziranga National Park is located in Assam. It is spread over the region of Golaghat and Nagaon District of Assam and Karbi hills and Anglong Landscape (Both in Burma). Kaziranga National Park is the habitat for Single Horned Rhinoceros, Swamp Deer, Royal Bengal Tiger, Golden Tiger, Asiatic Wild Water Buffalo, Elephant and so many traveling birds. Kaziranga National Park Assam is mostly famous for it&rsquo;s Indian rhinoceros.\r\n\r\nWelcome To Kaziranga National Park Assam India\r\n\r\nSingle-horned Rhinoceros were hunted by Poachers and hunters for their horn. They sell it at high prices on the black market. It has some medicinal value as an Aphrodisiac. This was the main reason people started hunting them. At one point along the 19th century, they were almost on extinction until Mary Curzon came.\r\n\r\nMary Curzon was the wife of British viceroy at that time. One time when she was on tour of Kaziranga Forest she could not find a Single Rhino. On further investigation, she found that Poachers are killing them for their horn to sell them at the black market.\r\n\r\nShe took this matter to her husband and thus it was declared a reserve forest naming Kaziranga Reserve Forest. Agricultural expansion, logging, development and timber thief caused the deforestation of more than 120,000 square kilometers each year.\r\n\r\nThis results in reduced home space for the Rhinoceros and other big animals like Elephants, wild water Buffalo, Royal Bengal Tiger etc. These all animals are solitary creatures. They require a territory.\r\n\r\nHuman Population Growth and Deforestation are proportional to each other. This relationship causes loss of biodiversity hotspots. More Rhino is born than killed by Poachers. It is hard to provide habitat to the rhino when a population is increasing at an alarming rate.\r\n\r\nWhat are the challenges?\r\n1. Kaziranga National Park was made a reserve forest on June 1, 1906.\r\n\r\n2. A RiveBrahmaputrr runs through Kaziranga National Park. The floods kill a lot of wild animals every year.\r\n\r\n3. Poaching is also a very big concern. Rhino killing for their horn is common. The horn is supposed to have Aphrodisiac values making it expensive.\r\n\r\n4. Deforestation, Increase of Population along with wildlife habitat, Agriculture expansion etc are also some serious concerns.\r\n\r\nSuccess Story:\r\nKaziranga National Park now has the largest population of Single Horned Rhinoceros. Once from practically extinct they now have a strength of 2401 in Kaziranga National Park.\r\n\r\nThis was possible due to the sheer will and efforts made by the Assam Government, Government of India, World Wildlife Fund India, some private NGOs. Rhinos in Kaziranga makes up to the 80% of the Rhino population in the world. This is a huge success. Some other big animals have the same story.\r\n\r\nHere is a quick glance through the Numbers of Big Fives at Kaziranga National Park:\r\nIn 1968 Assam state government passed a bill named Assam Rhinoceros Bill that imposed a heavy penalty for poachers. Throughout the time it reserved more fame through protective movements and became a UNESCO heritage site in 1985.\r\n\r\nMuch private organizations and NGO&rsquo;s and government came forward for this noble cause. It is the efforts that have resulted in the highest density in Tiger, Increased no of endangered one-horned Rhinoceros, Swamp deer conservation, Wild birds Habitat, etc. It is WWF Ecoregion and Endemic Bird Areas.\r\n\r\nAwards and Achievements:\r\nKaziranga National Park is an incredible example of conservation efforts.\r\n\r\n1.   It is a great conservation success story- Dipankar Ghose director of World Wildlife Fund in India\r\n\r\n2. Rhinoceros is the state animal of Assam, and people have a very deep-rooted affinity with them- Sanjeev Kumar   Bora, Director of Forest Conservation at Kaziranga National Park\r\n\r\n3. Kaziranga-The Frontline of India&rsquo;s Rhino Wars- News.Mongabay.com\r\n\r\n4. 2 times consecutive Millenium Award for Rhino Conservation Program by World Wild Life fund.\r\n\r\nUpcoming Challenges:\r\nInadequate habitat is always a factor when it comes to wildlife conservation. Big animals require territory and fight when one intrudes on others. This results in conflicts resulting in death.\r\n\r\nRailway networks go through Kaziranga National Park. Sometimes elephants, tigers and Rhinoceros die in rail accidents. We need a better disaster management strategy. Every year flood causes the loss of wildlife as well as revenue (Park is closed in flood season for months).\r\n\r\nYouths from the local region should be hired as forest guards. This gives the opportunity of employment to the locals. They know the terrain better and can do a better job protecting the habitat given a chance.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1663680617Untitled-2-265x174 (1).jpg', '2022-09-20 13:30:17', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'spandan', 'lade', 'spandanl', 'sp@gmail.com', '$2y$10$f3iO/yDKEN2VCfq.r7aeKuOE/aLYb5hkkOgkyyrofVR5bp8t0LsuO', '1658646159gggg.png', 1),
(14, 'kishankumar', 'gavare', 'kishankumar', 'kishangavare@gmail.com', '$2y$10$AI23uIlKCcIVZdm03vzTSODg8rGzyFFmkzy9./GpMEBFZ4NnMGD/q', '16599528131.jpg', 1),
(17, 'Spandan', 'Lade', 'Spandanlade', 'spandanlade25@gmail.com', '$2y$10$2tO8yTke02/EVV5pAvPoTuZ4.aMbS0JLaZdD1yliLztk7ilt0WbGq', '1663354779adobe_scan_Image.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
