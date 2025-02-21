'Bally Kiss
'added by Inkochnito
'Added Coins chute by Mike da Spike
 Sub editDips
     Dim vpmDips:Set vpmDips = New cvpmDips
     With vpmDips
         .AddForm 700, 400, "Kiss - DIP switches"
         .AddChk 2, 10, 180, Array("Match feature", &H00100000)                                                                                                                                                                                                             'dip 21
         .AddChk 205, 10, 115, Array("Credits display", &H00080000)                                                                                                                                                                                                         'dip 20
         .AddFrame 2, 30,190,"Coin Chute 1 (Coins/Credit)",&H0000001F,Array("2/1",&H00000003,"1/1",&H00000002,"1/2",&H00000004)                                                                                                                                             'dip 1-5
         .AddFrame 2, 92,190,"Coin Chute 2 (Coins/Credit)",&H0F000000,Array("Same as Chute#1",&H00000000,"1/1",&H01000000,"1/2",&H02000000)                                                                                                                                 'dip 25-28                                                                                                                                                                                                  'dip 20
         .AddFrame 2, 152,190,"Coin Chute 3 (Coins/Credit)",&H00001F00,Array("2/1",&H00000300,"1/1",&H00000200,"1/2",&H00000400)                                                                                                                                            'dip 9-13
         .AddFrame 2, 212, 190, "Balls per game", 32768, Array("3 balls", 0, "5 balls", 32768)                                                                                                                                                                              'dip 16
         .AddFrame 2, 258, 190, "Sound features", &H80000080, Array("chime effects", &H80000000, "chime and tunes", 0, "noise", &H00000080, "noises and tunes", &H80000080)                                                                                                 'dip 8&32
         .AddFrame 207, 30, 190, "Maximum credits", &H00070000, Array("5 credits", 0, "10 credits", &H00010000, "15 credits", &H00020000, "20 credits", &H00030000, "25 credits", &H00040000, "30 credits", &H00050000, "35 credits", &H00060000, "40 credits", &H00070000) 'dip 17&18&19
         .AddFrame 207, 160, 190, "High score to date", &H00000060, Array("no award", 0, "1 credit", &H00000020, "2 credits", &H00000040, "3 credits", &H00000060)                                                                                                          'dip 6&7
         .AddFrame 207, 235, 190, "High score feature", &H00006000, Array("no award", 0, "extra ball", &H00004000, "replay", &H00006000)                                                                                                                                    'dip 14&15
         .AddFrame 412, 30, 190, "After completing KISS card 3 times", &H00200000, Array("any letter made is not held over", 0, "any letter made is held over", &H00200000)                                                                                                 'dip 22
         .AddFrame 412, 76, 190, "Light-a-line lite", &H00400000, Array("goes on and off", 0, "stays lit", &H00400000)                                                                                                                                                      'dip 23
         .AddFrame 412, 122, 190, "KISS special lites", &H00800000, Array("after 'colossal' lite", 0, "with 'colossal' lite", &H00800000)                                                                                                                                   'dip 24
         .AddFrame 412, 168, 190, "'Opens gate when lit' lite", &H10000000, Array("remains lit", 0, "lites 1 in 3", &H10000000)                                                                                                                                             'dip 29
         .AddFrame 412, 214, 190, "Light-a-line lite", &H20000000, Array("lites for next ball", 0, "comes up same as last ball", &H20000000)                                                                                                                                'dip 30
         .AddFrame 412, 260, 190, "Any A-B-C-D made is", &H40000000, Array("not held in memory", 0, "held in memory for next ball", &H40000000)                                                                                                                             'dip 31
         .AddLabel 170, 336, 300, 20, "After hitting OK, press F3 to reset game with new settings."
         .ViewDips
     End With
 End Sub
 Set vpmShowDips = GetRef("editDips")
