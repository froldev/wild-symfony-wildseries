bin/console d:d:d --force
bin/console d:d:c
bin/console d:m:m -n

php bin/console doctrine:query:sql 'INSERT INTO category (id,name) VALUES (1, "Horreur");'
php bin/console doctrine:query:sql 'INSERT INTO category (id,name) VALUES (2, "Drame");'
php bin/console doctrine:query:sql 'INSERT INTO category (id,name) VALUES (3, "Action");'


php bin/console doctrine:query:sql 'INSERT INTO program (id, title, summary, poster, category_id) VALUES (NULL, "Walking Dead", "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.", "https://m.media-amazon.com/images/M/MV5BZmFlMTA0MmUtNWVmOC00ZmE1LWFmMDYtZTJhYjJhNGVjYTU5XkEyXkFqcGdeQXVyMTAzMDM4MjM0._V1_.jpg", 1);'
php bin/console doctrine:query:sql 'INSERT INTO program (id, title, summary, poster, category_id) VALUES (NULL, "Chernobyl", "In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the worlds worst man-made catastrophes.", "https://m.media-amazon.com/images/M/MV5BNTEyYmIzMDUtNWMwNC00Y2Q1LWIyZTgtMGY1YzUxOTAwYTAwXkEyXkFqcGdeQXVyMjIyMTc0ODQ@._V1_UX182_CR0,0,182,268_AL_.jpg", 2);'
php bin/console doctrine:query:sql 'INSERT INTO program (id, title, summary, poster, category_id) VALUES (NULL, "Game of Thrones", "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", "https://m.media-amazon.com/images/M/MV5BMjA5NzA5NjMwNl5BMl5BanBnXkFtZTgwNjg2OTk2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg", 3);'


php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2010, "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2011, "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2012, "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2013, "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.", 1);'

php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2019, "In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the worlds worst man-made catastrophes.", 2);'

php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2011, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2012, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2013, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2014, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2015, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2016, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2017, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO season (id, year, description, program_id) VALUES (NULL, 2019, "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", 3);'



php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Days Gone Bye", 1, "Deputy Sheriff Rick Grimes awakens from a coma, and searches for his family in a world ravaged by the undead.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Guts", 2, "In Atlanta, Rick is rescued by a group of survivors, but they soon find themselves trapped inside a department store surrounded by walkers.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Tell It to the Frogs", 3, "Rick is reunited with Lori and Carl but soon decides - along with some of the other survivors - to return to the rooftop and rescue Merle. Meanwhile, tensions run high between the other survivors at the camp.", 1);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Vatos", 4, "Rick, Glenn, Daryl and T-Dog come across a group of seemingly hostile survivors whilst searching for Merle. Back at camp, Jim begins behaving erratically.", 1);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "What Lies Ahead", 1, "The groups plan to head for Fort Benning is put on hold when Sophia goes missing.", 2);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Bloodletting", 2, "After Carl is accidentally shot, the group are brought to a family living on a nearby farm. Shane makes a dangerous trip in search of medical supplies.", 2);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Save the Last One", 3, "As Carls condition continues to deteriorate, Shane and Otis try to dodge the walkers as they head back to the farm.", 2);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Seed", 1, "After months on the run, the group take refuge in a federal prison, while elsewhere, Andreas health starts to deteriorate.", 3);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Sick", 2, "As Hershels condition worsens, Rick, Daryl and T-Dog deal with a group of prisoners.", 3);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "30 Days Without an Accident", 1, "Several months have passed and Rick and the expanded group are living a more peaceful life at the prison. Problems surface when Rick encounters a new survivor, and a supply run ends in disaster.", 4);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Infected", 2, "Rick is forced to abandon his quiet lifestyle when a mysterious virus puts the lives of everyone at the prison at risk.", 4);'


php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "1:23:45", 1, "Plant workers and firefighters put their lives on the line to control a catastrophic April 1986 explosion at a Soviet nuclear power plant.", 5);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Please Remain Calm", 2, "With untold millions at risk, Ulana makes a desperate attempt to reach Valery and warn him about the threat of a second explosion.", 5);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Open Wide, O Earth", 3, "Valery creates a detailed plan to decontaminate Chernobyl; Lyudmilla ignores warnings about her firefighter husbands contamination.", 5);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Happiness of All Mankind", 4, "Valery and Boris attempt to find solutions to removing the radioactive debris; Ulana attempts to find out the cause of the explosion.", 5);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Vichnaya Pamyat", 5, "Valery, Boris and Ulana risk their lives and reputations to expose the truth about Chernobyl.", 5);'



php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Winter Is Coming", 1, "Eddard Stark is torn between his family and an old friend when asked to serve at the side of King Robert Baratheon; Viserys plans to wed his sister to a nomadic warlord in exchange for an army.", 6);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Kingsroad", 2, "While Bran recovers from his fall, Ned takes only his daughters to Kings Landing. Jon Snow goes with his uncle Benjen to the Wall. Tyrion joins them.", 6);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Lord Snow", 3, "Jon begins his training with the Nights Watch; Ned confronts his past and future at Kings Landing; Daenerys finds herself at odds with Viserys.", 6);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Cripples, Bastards, and Broken Things", 4, "Eddard investigates Jon Arryns murder. Jon befriends Samwell Tarly, a coward who has come to join the Nights Watch.", 6);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The North Remembers", 1, "Tyrion arrives at Kings Landing to take his fathers place as Hand of the King. Stannis Baratheon plans to take the Iron Throne for his own. Robb tries to decide his next move in the war. The Nights Watch arrive at the house of Craster.", 7);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Night Lands", 2, "Arya makes friends with Gendry. Tyrion tries to take control of the Small Council. Theon arrives at his home, Pyke, in order to persuade his father into helping Robb with the war. Jon tries to investigate Crasters secret.", 7);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "What Is Dead May Never Die", 3, "Tyrion tries to see who he can trust in the Small Council. Catelyn visits Renly to try and persuade him to join Robb in the war. Theon must decide if his loyalties lie with his own family or with Robb.", 7);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Valar Dohaeris", 1, "Jon is brought before Mance Rayder, the King Beyond the Wall, while the Nights Watch survivors retreat south. In Kings Landing, Tyrion asks for his reward. Littlefinger offers Sansa a way out.", 8);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Dark Wings, Dark Words", 2, "Bran and company meet Jojen and Meera Reed. Arya, Gendry, and Hot Pie meet the Brotherhood. Jaime travels through the wilderness with Brienne. Sansa confesses her true feelings about Joffery to Margaery.", 8);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Walk of Punishment", 3, "Robb and Catelyn arrive at Riverrun for Lord Hoster Tullys funeral. Tywin names Tyrion the new Master of Coin. Arya says goodbye to Hot Pie. The Nights Watch returns to Crasters. Brienne and Jaime are taken prisoner.", 8);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "And Now His Watch Is Ended", 4 "Jaime mopes over his lost hand. Cersei is growing uncomfortable with the Tyrells. The Nights Watch is growing impatient with Craster. Daenerys buys the Unsullied.", 8);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Two Swords", 1, "Tyrion welcomes a guest to Kings Landing. At Castle Black, Jon stands trial. Daenerys is pointed to Meereen, the mother of all slave cities. Arya runs into an old enemy.", 9);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Lion and the Rose", 2, "Joffrey and Margaerys wedding has come. Tyrion breaks up with Shae. Ramsay tries to prove his worth to his father. Bran and company find a Weirwood tree.", 9);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Breaker of Chains", 3, "Tyrion is arrested for the murder of Joffrey and awaits trial. Sansa escapes Kings Landing. Sam sends Gilly to Moles Town as the Nights Watch finds itself in a tight spot. Meereen challenges Daenerys.", 9);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Wars to Come", 1, "Cersei and Jaime adjust to a world without Tywin. Tyrion and Varys arrive at Pentos. In Meereen, a new enemy emerges. Jon is caught between two kings.", 10);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The House of Black and White", 2, "Arya arrives in Braavos. Jaime takes on a secret mission. Ellaria Sand seeks revenge for Oberyns death. Stannis makes Jon a generous offer as the Nights Watch elects a new Lord Commander. Daenerys is faced with a difficult decision.", 10);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "High Sparrow", 3, "Tommen and Margaery wed. Arya has trouble adapting to her new life. Littlefinger reveals his plans to Sansa. Jon gives his first orders as Lord Commander. Tyrion and Varys arrive in Volantis.", 10);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Red Woman", 1, "The fate of Jon Snow is revealed. Daenerys is brought before Khal Moro. Tyrion gets used to living in Meereen. Ramsay sends his dogs after Theon and Sansa. Ellaria and the Sand Snakes make their move. Cersei mourns for Myrcella.", 11);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Home", 2, "Bran trains with the Three-Eyed Raven. Tommen meets with Cersei. Tyrion makes a bold move. Theon leaves while at Pyke new issues arise. Ramsays brother is born. Davos asks Melisandre for a miracle.", 11);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Oathbreaker", 3, "Daenerys arrives at Vaes Dothrak. Sam and Gilly sail for Horn Hill. Arya trains as No One. Varys finds information on the Sons of the Harpy. Ramsay receives a gift. Tommen meets with the High Sparrow. At Castle Black, a miracle occurs.", 11);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Dragonstone", 1, "Jon organizes the Norths defenses. Cersei tries to even the odds. Daenerys comes home. Arya reminds the Freys the North remembers. Sam adapts to life in Oldtown. The Night King makes his way south.", 12);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Stormborn", 2, "Daenerys receives an unexpected visitor. Jon faces resistance. Tyrion plans the conquest of Westeros. Cersei gathers her allies. Arya has a reunion with old friends. Sam risks his career and life.", 12);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Queens Justice", 3, "Jon and Daenerys finally meet. Cersei gains a new ally. Sansa receives an unexpected visitor. Sam is confronted for his actions.", 12);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Spoils of War", 4, "Daenerys takes matters into her own hands. Arya reaches her destination. Jaime and Bronn collect the spoils from the war with the Tyrells.", 12);'

php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "Winterfell", 1, "Jon and Daenerys arrive in Winterfell and are met with skepticism. Sam learns about the fate of his family. Cersei gives Euron the reward he aims for. Theon follows his heart.", 13);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "A Knight of the Seven Kingdoms", 2, "Jaime faces judgment and Winterfell prepares for the battle to come.", 13);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Long Night", 3, "The Night King and his army have arrived at Winterfell and the great battle begins.", 13);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Last of the Starks", 4, "The Battle of Winterfell is over and a new chapter for Westeros begins.", 13);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Bells", 5, "Forces have arrived at Kings Landing for the final battle.", 13);'
php bin/console doctrine:query:sql 'INSERT INTO episode (id, title, number, synopsis, season_id) VALUES (NULL, "The Iron Throne", 6, "In the aftermath of the devastating attack on Kings Landing, Daenerys must face the survivors.", 13);'