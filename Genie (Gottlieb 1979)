
'Gottlieb Genie
'added by Inkochnito
'Added Coins chute by Mike da Spike
 Sub editDips
 	Dim vpmDips : Set vpmDips = New cvpmDips
  	With vpmDips
  		.AddForm 700,400,"System 1 (Multi-Mode sound) - DIP switches"
  		.AddFrame 0,0,190,"Coin chute control",&H00040000,Array("seperate",0,"same",&H00040000)'dip 19
  		.AddFrame 0,46,190,"Game mode",&H00000400,Array("extra ball",0,"replay",&H00000400)'dip 11
  		.AddFrame 0,92,190,"High game to date awards",&H00200000,Array("no award",0,"3 replays",&H00200000)'dip 22
  		.AddFrame 0,138,190,"Balls per game",&H00000100,Array("5 balls",0,"3 balls",&H00000100)'dip 9
  		.AddFrame 0,184,190,"Tilt effect",&H00000800,Array("game over",0,"ball in play only",&H00000800)'dip 12
		  .AddFrame 0,230,190,"Coin Chute 1 (Coins/Credit)",&H0000000F,Array("1/2",&H00000001,"1/1",&H00000000,"2/1",&H00000009) 'Dip 1-4
		  .AddFrame 0,292,190,"Coin Chute 2 (Coins/Credit)",&H000000F0,Array("1/2",&H00000010,"1/1",&H00000000,"2/1",&H00000090) 'Dip 5-8
  		.AddFrame 205,0,190,"Maximum credits",&H00030000,Array("5 credits",0,"8 credits",&H00020000,"10 credits",&H00010000,"15 credits",&H00030000)'dip 17&18
  		.AddFrame 205,76,190,"Sound settings",&H80000000,Array("sounds",0,"tones",&H80000000)'dip 32
  		.AddFrame 205,122,190,"Attract tune",&H10000000,Array("no attract tune",0,"attract tune played every 6 minutes",&H10000000)'dip 29
  		.AddChk 205,175,190,Array("Match feature",&H00000200)'dip 10
  		.AddChk 205,190,190,Array("Credits displayed",&H00001000)'dip 13
  		.AddChk 205,205,190,Array("Play credit button tune",&H00002000)'dip 14
  		.AddChk 205,220,190,Array("Play tones when scoring",&H00080000)'dip 20
  		.AddChk 205,235,190,Array("Play coin switch tune",&H00400000)'dip 23
  		.AddChk 205,250,190,Array("High game to date displayed",&H00100000)'dip 21
  		.AddLabel 50,354,300,20,"After hitting OK, press F3 to reset game with new settings."
  		.ViewDips
  	End With
 End Sub
 Set vpmShowDips = GetRef("editDips")
