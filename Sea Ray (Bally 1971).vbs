'Stern Sea Witch
'added by Inkochnito
'Added Coins chute by Mike da Spike
Sub editDips
	Dim vpmDips : Set vpmDips = New cvpmDips
	With vpmDips
		.AddForm 700,400,"Sea Witch - DIP switches"
		.AddChk 2,10,115,Array("Match feature",&H00100000)'dip 21
		.AddChk 120,10,115,Array("Credits display",&H00080000)'dip 20
		.AddChk 240,10,125,Array("Background sound",&H00002000)'dip 14
		.AddFrame 2,30,190 ,"Coin Chute 1 (Coins/Credit)",&H00000F00,Array("2/1",&H00000009,"1/1",&H00000000,"1/2",&H00000100) 'Dip 9-12
		.AddFrame 2,92,190,"Coin Chute 2 (Coins/Credit)",&H0000000F,Array("2/1",&H00000009,"1/1",&H00000000,"1/2",&H00000001) 'Dip 1-4
		.AddFrame 2,152,190,"Coin Chute 3 (Coins/Credit)",&H0F000000,Array("2/1",&H09000000,"1/1",&H00000000,"1/2",&H01000000) 'Dip 24-28
		.AddFrame 207,30,190,"Maximum credits",&H00060000,Array("10 credits",0,"15 credits",&H00020000,"25 credits",&H00040000,"40 credits",&H00060000)'dip 18&19
		.AddFrame 207,105,190,"High game to date",49152,Array("points",0,"1 free game",&H00004000,"2 free games",32768,"3 free games",49152)'dip 15&16
		.AddFrame 207,180,190,"High score feature",&H00000020,Array("extra ball",0,"replay",&H00000020)'dip 6
		.AddFrame 207,226,190,"Special adjustment",&H00000080,Array("special on 7X",0,"special on 6X or 7X and resets to 3X",&H00000080)'dip 8
		.AddFrame 207,272,190,"Outlane special",&H00010000,Array("alternating",0,"both lites stay on",&H00010000)'dip 17
		.AddFrame 412,30,190,"Special award",&HC0000000,Array("no award",0,"100,000 points",&H40000000,"free ball",&H80000000,"free game",&HC0000000)'dip 31&32
		.AddFrame 412,105,190,"Extra ball lites",&H00C00000,Array("completely off",0,"left on, both off, right on, both off",&H00400000,"alternate left to right",&H00800000,"alternate both on and off",&H00C00000)'dip 23&24
		.AddFrame 412,180,190,"Balls per game",&H00000040,Array("3 balls",0,"5 balls",&H00000040)'dip 7
		.AddFrame 412,226,190,"Special limit",&H00200000,Array("1 per ball",0,"1 per game",&H00200000)'dip 22
		.AddFrame 412,272,190,"Extra ball memory",&H30000000,Array ("only 1 stored in memory",0,"maximum 3 stored in memory",&H10000000,"maximum 5 stored in memory",&H30000000)'dip 29&30
		.AddLabel 180,340,300, 20,"After hitting OK, press F3 to reset game with new settings."
		.ViewDips
	End With
End Sub
Set vpmShowDips = GetRef("editDips")
