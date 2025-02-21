'**********************
'Gottlieb Diamond Lady
'added by Inkochnito
'Added coins chute by Mike da Spike
'**********************
 
Sub editDips
    Dim vpmDips:Set vpmDips = New cvpmDips
    With vpmDips
        .AddForm 700, 400, "Diamond Lady - DIP switches"

        .AddFrame 2,4,190,"Left Coin Chute (Coins/Credit)",&H0000001F,Array("4/1",&H0000000D,"2/1",&H0000000A,"1/1",&H00000000,"1/2",&H00000010) 'Dip 1-5
        .AddFrame 2,80,190,"Right Coin Chute (Coins/Credit)",&H00001F00,Array("4/1",&H00000D00,"2/1",&H00000A00,"1/1",&H00000000,"1/2",&H00001000) 'Dip 9-13
        .AddFrame 2,160,190,"Center Coin Chute (Coins/Credit)",&H001F0000,Array("4/1",&H000D0000,"2/1",&H000A0000,"1/1",&H00000000,"1/2",&H00010000) 'Dip 17-21
        .AddFrame 2,240,190,"3rd coin chute credits control",&H20000000,Array("no effect",0,"add 9",&H20000000)'dip 30        

        .AddFrame 207, 4, 190, "Maximum credits", 49152, Array("8 credits", 0, "10 credits", 32768, "15 credits", &H00004000, "20 credits", 49152)                                                                                  'dip 15&16
        .AddFrame 207, 80, 190, "Coin chute 1 and 2 control", &H00002000, Array("seperate", 0, "same", &H00002000)                                                                                                                  'dip 14
        .AddFrame 207, 126, 190, "Playfield special", &H00200000, Array("replay", 0, "extra ball", &H00200000)                                                                                                                      'dip 22
        .AddFrame 207, 172, 190, "High games to date control", &H00000020, Array("no effect", 0, "reset high games 2-5 on power off", &H00000020)                                                                                   'dip 6
        .AddFrame 207, 218, 190, "Auto-percentage control", &H00000080, Array("disabled (normal high score mode)", 0, "enabled", &H00000080)                                                                                        'dip 8
        .AddFrame 207, 264, 190, "Royal flush sequence is", &H40000000, Array("reset royal flush value every ball", 0, "memorize royal flush value every ball", &H40000000)                                                         'dip 31
        .AddFrame 207, 310, 190, "Game playing time control", &H80000000, Array("shorter", 0, "longer", &H80000000)                                                                                                                 'dip 32

        .AddFrame 412, 4, 190, "High game to date awards", &H00C00000, Array("not displayed and no award", 0, "displayed and no award", &H00800000, "displayed and 2 replays", &H00400000, "displayed and 3 replays", &H00C00000) 'dip 23&24
        .AddFrame 412, 80, 190, "Balls per game", &H01000000, Array("5 balls", 0, "3 balls", &H01000000)                                                                                                                          'dip 25
        .AddFrame 412, 126, 190, "Replay limit", &H04000000, Array("no limit", 0, "one per game", &H04000000)                                                                                                                     'dip 27
        .AddFrame 412, 172, 190, "Novelty", &H08000000, Array("normal", 0, "extra ball and replay scores 500K", &H08000000)                                                                                                       'dip 28
        .AddFrame 412, 218, 190, "Game mode", &H10000000, Array("replay", 0, "extra ball", &H10000000)                                                                                                                            'dip 29
        .AddChk 412, 316, 180, Array("Match feature", &H02000000)                                                                                                                                                                 'dip 26
        .AddChk 412, 331, 190, Array("Attract sound", &H00000040)                                                                                                                                                                 'dip 7
        .AddLabel 178, 360, 300, 20, "After hitting OK, press F3 to reset game with new settings."                                                                                                                                                              'dip 7
        .ViewDips
    End With
End Sub
Set vpmShowDips = GetRef("editDips")
