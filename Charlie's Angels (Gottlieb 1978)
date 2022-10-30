'Added by Inkochnito
'added coins chute by Mike da Spike
Sub editDips
    Dim vpmDips:Set vpmDips = New cvpmDips
    With vpmDips
        .AddForm 700, 400, "System 1 (3 tones) - DIP switches"
        .AddFrame 0,0,190,"Coin Chute 1 (Coins/Credit)",&H0000000F,Array("1/2",&H00000001,"1/1",&H00000000,"2/1",&H00000009)                                   'Dip 1-4
        .AddFrame 0,62,190,"Coin Chute 2 (Coins/Credit)",&H000000F0,Array("1/2",&H00000010,"1/1",&H00000000,"2/1",&H00000090)                                   'Dip 5-8 
        .AddFrame 0, 124, 190, "Coin chute control", &H00040000, Array("seperate", 0, "same", &H00040000)                                                          'dip 19
        .AddFrame 207, 0, 190, "Game mode", &H00000400, Array("extra ball", 0, "replay", &H00000400)                                                              'dip 11
        .AddFrame 207, 46, 190, "High game to date awards", &H00200000, Array("no award", 0, "3 replays", &H00200000)                                              'dip 22
        .AddFrame 207, 92, 190, "Balls per game", &H00000100, Array("5 balls", 0, "3 balls", &H00000100)                                                          'dip 9
        .AddFrame 207, 138, 190, "Tilt effect", &H00000800, Array("game over", 0, "ball in play only", &H00000800)                                                 'dip 12
        .AddFrame 412, 0, 190, "Maximum credits", &H00030000, Array("5 credits", 0, "8 credits", &H00020000, "10 credits", &H00010000, "15 credits", &H00030000) 'dip 17&18 
        .AddChk 412, 80, 190, Array("Match feature", &H00000200)                                                                                                 'dip 10
        .AddChk 412, 95, 190, Array("Credits displayed", &H00001000)                                                                                             'dip 13
        .AddChk 412, 110, 190, Array("Play credit button tune", &H00002000)                                                                                      'dip 14
        .AddChk 412, 125, 190, Array("Play tones when scoring", &H00080000)                                                                                      'dip 20
        .AddChk 412, 140, 190, Array("Play coin switch tune", &H00400000)                                                                                        'dip 23
        .AddChk 412, 155, 190, Array("High game to date displayed", &H00100000)                                                                                  'dip 21
        .AddLabel 150, 196, 300, 20, "After hitting OK, press F3 to reset game with new settings."
        .ViewDips
    End With
End Sub
Set vpmShowDips = GetRef("editDips")
