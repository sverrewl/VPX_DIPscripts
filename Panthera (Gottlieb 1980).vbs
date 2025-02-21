
'Gottlieb Panthera
'added by Inkochnito
'Added Coins chute by Mike da Spike

Sub editDips
    Dim vpmDips:Set vpmDips = New cvpmDips
    With vpmDips
        .AddForm 700, 400, "Panthera - DIP switches"
        .AddFrame 2,10,190,"Left Coin Chute (Coins/Credit)",&H0000000F,Array("2/1",&H00000009,"1/1",&H00000000,"1/2",&H00000008) 'Dip 1-4
        .AddFrame 2,72,190,"Right Coin Chute (Coins/Credit)",&H000000F0,Array("2/1",&H00000090,"1/1",&H00000000,"1/2",&H00000080) 'Dip 5-8
        .AddFrame 2,132,190,"Center Coin Chute (Coins/Credit)",&H00000F00,Array("2/1",&H00000900,"1/1",&H00000000,"1/2",&H00000800) 'Dip 9-12
        .AddFrame 2,194, 190, "Coin chute 1 and 2 control", &H00002000, Array("seperate", 0, "same", &H00002000)                                                                                                                   'dip 14
        .AddFrame 2,242, 190, "3rd coin chute credits control", &H00001000, Array("no effect", 0, "add 9", &H00001000)                                                                                                          'dip 13


        .AddFrame 207, 10, 190, "Maximum credits", 49152, Array("8 credits", 0, "10 credits", 32768, "15 credits", &H00004000, "25 credits", 49152)                                                                                  'dip 15&16
        .AddFrame 207, 86, 190, "Playfield special", &H00200000, Array("replay", 0, "extra ball", &H00200000)                                                                                                                       'dip 22
        .AddFrame 207, 132, 190, "Hole for special", &H80000000, Array("alternating", 0, "stays lit", &H80000000)                                                                                                                    'dip32
        .AddFrame 207, 178, 190, "High score to date awards", &H00C00000, Array("not displayed and no award", 0, "displayed and no award", &H00800000, "displayed and 2 replays", &H00400000, "displayed and 3 replays", &H00C00000) 'dip 23&24

        .AddChk 2, 300, 190, Array("Sound when scoring?", &H01000000)                                                                                                                                                              'dip 25
        .AddChk 2, 315, 190, Array("Replay button tune?", &H02000000)                                                                                                                                                              'dip 26
        .AddChk 2, 330, 190, Array("Coin switch tune?", &H04000000)                                                                                                                                                                'dip 27
        .AddChk 2, 345, 190, Array("Credits displayed?", &H08000000)                                                                                                                                                               'dip 28
        .AddChk 207, 300, 190, Array("Match feature", &H00020000)                                                                                                                                                                    'dip 18
        .AddChk 207, 315, 190, Array("Attract features", &H20000000)                                                                                                                                                                 'dip 30
        .AddChkExtra 207, 330, 190, Array("Background sound off", &H0100)                                                                                                                                                            'S-board dip 1
        .AddFrameExtra 412, 10, 190, "Attract tune", &H0200, Array("no attract tune", 0, "attract tune played every 6 minutes", &H0200)                                                                                            'S-board dip 2
        .AddFrame 412, 56, 190, "Balls per game", &H00010000, Array("5 balls", 0, "3 balls", &H00010000)                                                                                                                           'dip 17
        .AddFrame 412, 102, 190, "Replay limit", &H00040000, Array("no limit", 0, "one per ball", &H00040000)                                                                                                                      'dip 19
        .AddFrame 412, 148, 190, "Novelty", &H00080000, Array("normal game mode", 0, "50,000 points for special/extra ball", &H0080000)                                                                                            'dip 20
        .AddFrame 412, 194, 190, "Game mode", &H00100000, Array("replay", 0, "extra ball", &H00100000)                                                                                                                             'dip 21

        .AddFrame 412, 240, 190, "Tilt penalty", &H10000000, Array("game over", 0, "ball in play", &H10000000)                                                                                                                     'dip 29
        .AddFrame 412, 286, 190, "Extra ball target adjust", &H40000000, Array("alternating", 0, "stays lit", &H40000000)                                                                                                          'dip 31
        .AddLabel 150, 400, 300, 20, "After hitting OK, press F3 to reset game with new settings."
    End With
    Dim extra
    extra = Controller.Dip(4) + Controller.Dip(5) * 256
    extra = vpmDips.ViewDipsExtra(extra)
    Controller.Dip(4) = extra And 255
    Controller.Dip(5) = (extra And 65280) \ 256 And 255
End Sub
Set vpmShowDips = GetRef("editDips")


