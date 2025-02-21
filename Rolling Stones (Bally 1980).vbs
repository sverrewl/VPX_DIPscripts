'added by Inkochnito
'added coins chute by Mike da Spike

Sub editDips
    Dim vpmDips:Set vpmDips = New cvpmDips
    With vpmDips
        .AddForm 700, 400, "Rolling Stones - DIP switches"
        .AddChk 7, 10, 180, Array("Match feature", &H08000000)                                                                                                                                     'dip 28
        .AddChk 205, 10, 115, Array("Credits display", &H04000000)                                                                                                                                 'dip 27
        .AddFrame 2,30,190,"Coin Chute 1(Credit/Coins)",&H0000001F,Array("1/2",&H00000003,"1/1",&H00000002,"2/1",&H00000004,"4/1",&H00000008)                                                       'dip 1-5
        .AddFrame 2,106,190,"Coin Chute 2(Credit/Coins)",&H000F0000,Array("Same as Chute #1",&H00000000,"1/1",&H00010000,"2/1",&H00020000,"4/1",&H00040000)                                        'dip 17-20
        .AddFrame 2,182,190,"Coin Chute 3(Credit/Coins)",&H00001F00,Array("1/2",&H00000300,"1/1",&H00000200,"2/1",&H00000400,"4/1",&H00000800)                                                      'dip 9-13
        .AddFrame 207, 30, 190, "Maximum credits", &H03000000, Array("10 credits", 0, "15 credits", &H01000000, "25 credits", &H02000000, "40 credits", &H03000000)                                'dip 25&26
        .AddFrame 207, 106, 190, "Sound features", &H30000000, Array("chime effects", 0, "noises and no background", &H10000000, "noise effects", &H20000000, "noises and background", &H30000000) 'dip 29&30
        .AddFrame 207, 184, 190, "Special/Extra Ball modes", &H00000060, Array("points", 0, "extra ball", &H00000040, "replay/extra ball", &H00000060)                                             'dip 6&7
        .AddFrame 207, 248, 190, "Extraball arrow", &H00800000, Array("will not come back on", 0, "will come back on", &H00800000)                                                                 'dip 24
        .AddFrame 207, 298, 190, "Side hoop feature", &H00002000, Array("score independently", 0, "score tied together", &H00002000)                                                               'dip 14
        .AddFrame 207, 348, 190, "Bumper score", &H00400000, Array("100 points", 0, "1,000 points", &H00400000)                                                                                    'dip 23
        .AddFrame 412, 30, 190, "High score to date", &H00300000, Array("no award", 0, "1 credit", &H00100000, "2 credits", &H00200000, "3 credits", &H00300000)                                   'dip 21&22
        .AddFrame 412, 106, 190, "Balls per game", &H40000000, Array("3 balls", 0, "5 balls", &H40000000)                                                                                          'dip 31
        .AddFrame 412, 152, 190, "R-O-C-K feature", &H00000080, Array("not in memory", 0, "in memory", &H00000080)                                                                                 'dip 8
        .AddFrame 412, 198, 190, "R-O-C-K blip sound", &H00004000, Array("off", 0, "on", &H00004000)                                                                                               'dip 15
        .AddFrame 412, 248, 190, "Saucer droptarget", &H80000000, Array("reset target", 0, "not reset target", &H80000000)                                                                         'dip 32
        .AddFrame 412, 298, 190, "1-5 feature", 32768, Array("not in memory", 0, "in memory", 32768)                                                                                               'dip 16
        .AddLabel 50, 400, 300, 20, "After hitting OK, press F3 to reset game with new settings."
        .ViewDips
    End With
End Sub
