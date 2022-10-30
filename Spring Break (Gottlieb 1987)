'Gottlieb Spring Break
'added by Inkochnito
'Added Coins chute by Mike da Spike

Sub editDips
    Dim vpmDips : Set vpmDips = New cvpmDips
	With vpmDips
        .AddForm  700,400,"Spring Break - DIP switches"
        .AddFrame 2,4,190,"Left Coin Chute (Coins/Credit)",&H0000001F,Array("1/4",&H00000018,"1/2",&H00000010,"1/1",&H00000000,"2/1",&H0000000A) 'Dip 1-5
        .AddFrame 2,80,190,"Right Coin Chute (Coins/Credit)",&H00001F00,Array("1/4",&H00001800,"1/2",&H00001000,"1/1",&H00000000,"2/1",&H00000A00) 'Dip 9-13
        .AddFrame 2,160,190,"Center Coin Chute (Coins/Credit)",&H001F0000,Array("1/4",&H00180000,"1/2",&H00100000,"1/1",&H00000000,"2/1",&H000A0000) 'Dip 17-21
	.AddFrame 2,240,190,"3rd coin chute credits control",&H20000000,Array("no effect",0,"add 9",&H20000000)'dip 30    
        
        .AddFrame 207,4,190,"Maximum credits",49152,Array("8 credits",0,"10 credits",32768,"15 credits",&H00004000,"20 credits",49152)'dip 15&16
        .AddFrame 207,80,190,"Coin chute left and right control",&H00002000,Array("seperate",0,"same",&H00002000)'dip 14
        .AddFrame 207,126,190,"Playfield special",&H00200000,Array("replay",0,"extra ball",&H00200000)'dip 22
        .AddFrame 207,172,190,"High games to date control",&H00000020,Array("no effect",0,"reset high games 2-5 on power off",&H00000020)'dip 6
        
        .AddFrame 412,4,190,"High game to date awards",&H00C00000,Array("not displayed and no award",0,"displayed and no award",&H00800000,"displayed and 2 replays",&H00400000,"displayed and 3 replays",&H00C00000)'dip 23&24
        .AddFrame 412,80,190,"Balls per game",&H01000000,Array("5 balls",0,"3 balls",&H01000000)'dip 25
        .AddFrame 412,126,190,"Replay limit",&H04000000,Array("no limit",0,"one per game",&H04000000)'dip 27
        .AddFrame 412,172,190,"Novelty",&H08000000,Array("normal",0,"extra ball and replay scores 500K",&H08000000)'dip 28
        .AddFrame 412,218,190,"Game mode",&H10000000,Array("replay",0,"extra ball",&H10000000)'dip 29
        
        .AddChk 2,320,120,Array("Match feature",&H02000000)'dip 26
        .AddLabel 50,380,300,20,"After hitting OK, press F3 to reset game with new settings."
    End With
	Dim extra
	extra = Controller.Dip(4) + Controller.Dip(5)*256
	extra = vpmDips.ViewDipsExtra(extra)
	Controller.Dip(4) = extra And 255
	Controller.Dip(5) = (extra And 65280)\256 And 255
End Sub
Set vpmShowDips = GetRef("editDips")
