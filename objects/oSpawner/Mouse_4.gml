/// Choisis la réplique à afficher dans la boite de dialogue

global.id_replique++;
switch(global.id_replique){
	
	//Room1 : introduction avec l'usine et Bob
	case 1 : dialog_text = "Factory : Hi little robot, welcome to the world ! You just got out of the robot factory. Basically, you are an empty shell, you are just capable of basic communication."; break;
	case 2 : dialog_text = "Bob : Um ..."; break;
	case 3 : dialog_text = "Factory : See ? hohoho ! To be honest, a robot without intelligence is meaningless. What would you like to do in life ?"; break;
	case 4 : dialog_text = "Bob : Um... I like games...?"; break;
	case 5 : dialog_text = "Factory : Games ? hohoho ! Well Bobby, you need to travel the world and learn some algorithms !"; break;
	case 6 : dialog_text = "Bob : Algorithms ? Um, okay...?"; break;
	
	//Room2 : Bob trouve le jeu des allumettes et joue avec l'utilisateur
	case 8 : dialog_text = "Bob : Oh ! What is it... it looks like a game..."; break;
	case 9 : dialog_text = "Bob : Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; break;
	case 10 : dialog_text = "Bob : No... You look ignorant, like me... But, you look nice and I need to find somebody to try this game ! Um... You up for this ? Let's go !"; break;
	
	//Room3 : Bob (random_looser) vs User 
	
	//Room4 : Bob perd contre l'utilisateur et rencontre Wendy Simon qui lui explique les solutions gagnantes
	case 12 : dialog_text = "Bob : Um... It's not easy... To be honest, I just played randomly"; break;
	case 13 : dialog_text = "Wendy Simon : Hi Hi ! I saw you playing and it wasn't really good... even a bit painful, y'know."; break;
	case 14 : dialog_text = "Bob : Hi, who are you ? And why do you say that ?"; break;
	case 15 : dialog_text = "W. S. : Sorry, I forgot to introduce myself ! I'm Wendy Simon and I've been playing this game for a looooong time with my grandfather y'know."; break;
	case 16 : dialog_text = "W. S. : Well, your moves were complete garbage ! You didn't mind your opponent's moves, right ? Y'know there is an unbreakable solution, a winning solution ?"; break;
	case 17 : dialog_text = "Bob : Huh ? What's a winning solution ?"; break;
	case 18 : dialog_text = "W. S. : Sit down, young Padawan, I'll tell you everything I know..."; break;
	case 19 : dialog_text = "W. S. : A winning solution is a sure strategy to win a game or at worst, not to lose, y'know."; break;
	case 20 : dialog_text = "W. S. : In some games, like in the game of matches, all the possibilities of evolution are know so if you are in a winning situation you can apply a set of rules and get the victory ! "; break;
	case 21 : dialog_text = "W. S. : So the first step is to reach a winning situation, y'know, and after, apply the set of winning rules !"; break;
	case 22 : dialog_text = "Bob : Woaw ! It's awesome ! Isn't it ? And you ? Did you understand ? We'll see about that right now."; break;
	case 23 : dialog_text = "Wait Bob ! I send you the algo of the game of sticks, y'know !"; break;
	// Attendre 1 sec, allumer la lumière de Bob avant d'afficher le dialogue
	case 24 : dialog_text = "Thank you Wendy !"; break;
	
	//Room5 : tuto W.S. + Bob (WS) vs User
	case 26 : dialog_text = "Bob : Wololo It's cool, I know more things about AI now ! Um... Thank you Wendy for your time"; break;
	case 27 : dialog_text = "W. S. : You're welcome Bob, you still have a lot to discover, I advise you to keep exploring this great factory, you'll find interesting things I'm sure!"; break;
	case 28 : dialog_text = "Bob : Roger roger"; break;
	
	//Room6 : Arrivée dans la partie Expert System
	case 30 : dialog_text = "Bob : Oh it's nice here, I was told that people in this area really like a board game, I don't know what it is but it looks nice"; break;
	case 31 : dialog_text = "Bob : I think he's here! Quick, let's test it!"; break;
	case 32 : dialog_text = "Bob : Um... The rules seem more complicated than for the stick game, but it doesn't matter, let's try it."; break;
	
	//Room7 : Bob (random) vs User
	
	//Room8 : Bob recontre Edmund Simon
	case 34 : dialog_text = "Bob : It's really hard! I tried to find a winning solution like Wendy taught us but I couldn't... How did you do it?"; break;
	case 35 : dialog_text = "E. S. : Did you say something about Wendy ? Ohoh I see you met my granddaughter. I’m Edmund Simon, nice to meet you. "; break;
	case 36 : dialog_text = "Bob : Hello Sir, yes she taught me how to find winning solutions for games. But I don't see how to do this game, I guess it doesn't always work... Can you help me?"; break;
	case 37 : dialog_text = "E. S. : Ohohoh, Yeah, she really likes winning solutions. But the winning solutions are only special cases of expert systems."; break;
	case 38 : dialog_text = "E. S. : Expert system is a AI program to simulate a human judgement and the behavior that has an expert knowledge and experience in a specific field, right."; break;
	case 39 : dialog_text = "E. S. : Expert systems are composed by 2 main elements : the knowledge base and the inference engine, right."; break;
	case 40 : dialog_text = "E. S. : The knowledge base represents the facts you know about the world and the rules. The rules are given by a human expert in the field."; break;
	case 41 : dialog_text = "E. S. : The inference engine allows inferences to be made by deciding which rules are satisfied by the facts and setting priorities, right. It produces new facts which are add to the knowledge base, right."; break;
	case 42 : dialog_text = "E. S. : Inference engines operate primarily in one of two modes: forward chaining or backward chaining. The sequence forward begins with the known facts and affirms new facts."; break;
	case 43 : dialog_text = "E.S. : The backward sequence begins with aims, and works backward to determine what facts need to be asserted in order for the aims to be achieved."; break;
	case 44 : dialog_text = "E. S. : Unfortunately, an expert system would not be effective enough for this game because there are too many rules, right."; break;
	case 45 : dialog_text = "E.S. : To have an effective expert system, the rules must be explicit about the world in which we find ourselves. Here, you can't tell what to do for every possible situation in the game, it would take too long..."; break;
	case 46 : dialog_text = "Bob : It doesn't matter! Now I really know what expert systems are."; break;
	case 47 : dialog_text = "E. S. : I taught you everything I know. I'm sure you'll find someone who can teach you how to play this game not far from here, right. Good luck with that."; break;
	case 48 : dialog_text = "Bob : I look forward to meeting them and learning new things! Thank you Mr Simon"; break;
	
	//Room9 : Arrivée dans le nouveau monde, rencontre avec Max
	case 50 : dialog_text = "Bob : Wow, that looks cool in here, I'm sure I can find someone who can teach me how to play checkers! Hellooo! Anybody there?"; break;
	case 51 : dialog_text = "Max : Hi ! My name is Max!"; break;
	case 52 : dialog_text = "Bob : Hello ! I'm Bob ! Nice to meet you !"; break;
	case 53 : dialog_text = "Max : I see it's a checkers game you have with you! I love this game, so, can you play it?"; break;
	case 54 : dialog_text = "Bob : Uh... yes it's a checkers game but uh... I'm not really very good at this haha game! But you can play against my friend, he's stronger than me, I watch you play, okay ?"; break;
	case 55 : dialog_text = "Max : Okay, so let's see what you got! You ready to go? Let's go! Let's go!"; break;
	
	//Room10 : Max vs User
	
	//Room11 : Explication algo MiniMax
	case 57 : dialog_text = "Bob : Oh, you're doing great! How do you do it?"; break;
	case 58 : dialog_text = "Max : So I use a rather effective strategy: minimax, you know it?"; break;
	case 59 : dialog_text = "Bob : Uh... no, not at all, can you please explain ?"; break;
	case 60 : dialog_text = "Max : Of course Bob !"; break;
	case 61 : dialog_text = "Max : My strategy is based on my score and that of my opponent. So I consider the overall score = my score - my opponent's score."; break;
	case 62 : dialog_text = "Max : So, now I review all possibilities for a limited number of moves and assign them a value that takes into account my score and that of my opponent."; break;
	case 63 : dialog_text = "Max : So, the best choice is the one that minimizes my losses while assuming that my opponent is trying to maximize them. I know it’s not easy to understand like this, so I'll explain with a sketch."; break;
	
	//Room12 : Gamification avec l'arbre
	
	//Room13 : Fin discussion Max + Début discussion Bethany
	case 65 : dialog_text = "Bob : That's awesome! With that, I'll get even better! Thank you so much Max !"; break;
	case 66 : dialog_text = "Max : It was nice helping you! So, I have to go, but keep playing and going around the AI worlds to improve your skills. Bye!"; break;
	case 67 : dialog_text = "Bob : Goodbye !"; break;
	case 68 : dialog_text = "Max : Oh wait Bob ! Didn't I introduce you to my sister ?"; break;
	case 69 : dialog_text = "Bob : Uh.. no"; break;
	case 70 : dialog_text = "Max : She's like me, but even faster! She never wanted to explain to me how she does it, but maybe she'll tell you."; break;
	case 71 : dialog_text = "Bob : Oh nice, I would like to know her secret ! Where can I find her ?"; break;
	case 72 : dialog_text = "Max : He's not far from here, I can call him if you want ?"; break;
	case 73 : dialog_text = "Bob : Uh... okay, let's go !"; break;
	case 74 : dialog_text = "Max : Bethaaaaaaaa ? Could you come here please ?"; break;
	case 75 : dialog_text = "Bethany : What do you want Max ? I'm actually working..."; break;
	case 76 : dialog_text = "Max : This is my friend Bob !"; break;
	case 77 : dialog_text = "Bob : Hi !"; break;
	case 78 : dialog_text = "Max : I explain to him how to play checkers with minimax ! So, can you explain to him your secret to be faster than me ?"; break;
	case 79 : dialog_text = "Bethany : Why not... but only if you leave Max ! But only if you promise not to reveal my secret to Max !"; break;
	case 80 : dialog_text = "Max : Don't worry Bethany, I'm outta here... And I will find your secret Betha, you'll see !"; break;
	
	//Room14 : Explication alpha-beta
	case 82 : dialog_text = "Bethany : So my secret is very simple actually. As my brother explained to you, the game is like a tree of possibilities and you have to make the best choice."; break;
	case 83 : dialog_text = "But in fact you don't need to explore all the possibilities ! Actually I use the alpha–beta pruning"; break;
	case 84 : dialog_text = "Bethany : Actually, It's easier to understand with a sketch, look..."; break;
	
	//Room15 : Gamification avec l’arbre minimax et l’élagage alpha-bêta
	
	//Room16 : Fin dialogue avec Bethany
	case 86 : dialog_text = "Bethany : so you get the point? It's actually easy"; break;
	case 87 : dialog_text = "Bob : Uh… Yeah, I got that right ! I'm in a hurry to try your secret technique !"; break;
	case 88 : dialog_text = "Bethany : Here, it's the algorithm! Test it on the checkers game, you'll see how convenient it is"; break;
	// Attendre 1 sec, allumer la lumière de Bob avant d'afficher le dialogue
	case 89 : dialog_text = "Bob : Thank you Bethany ! I'll try it right now with my friend !"; break;
	case 90 : dialog_text = "Bethany : Haha, have fun! And don't tell Max, I trust you. I'm gonna get back to work. Bye Bob !"; break;
	case 91 : dialog_text = "Bob : Don't worry, your secret will be safe. Bye."; break;
	
	//Room17 : Bob (minimax avec élagage alpha-bêta) vs User
	
	//Room18 : Fin du monde 2 et début du monde 3 en construction..
	case 93 : dialog_text = "Bob : It's so cool !! I'm proud of us ! We learned a lot together!"; break;
	// Attendre 1 sec, allumer la lumière de Bob avant d'afficher le dialogue
	case 94 : dialog_text = "Bob : Oh... looks like there's a train to get to the next world but the station's under construction. :/ In the meantime we can review WINNING SOLUTIONS, EXPERT SYSTEMS, MINIMAX or ALPHA-BÊTA if you want?"; break;
	
	//Permet de changer de room
	default : global.mask.timer = 100; global.mask.fading = true; break;
}
sText(id);