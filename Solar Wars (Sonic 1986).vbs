'Sonic Solar Wars
'by Inkochnito fixed by Mike da Spike
Sub editDips
    Dim vpmDips:Set vpmDips = New cvpmDips
    With vpmDips
        .AddForm 700, 600, "Solar Wars - DIP switches"
        .AddFrame 0, 0, 190, "Coin - credits", &H00000018, Array("Chute: Left 1/2 - Right 1/5", &H00000018, "Chute: Left 1/1 - Right 1/3", 0, "Chute: Left 1/2 - Right 1/5", &H00000008, "Chute: Left 1/4 - Right 1/8", &H00000010)               'vpm dip 4 and 5		
        .AddFrame 0, 80, 190, "Score threshold", &H000000c0, Array("1,900,000 && 2,500,000 points", &H00000040, "2,200,000 && 2,800,000 points", &H000000C0, "2,500,000 && 3.100,000 points", &H00000080, "2,800,000 && 3,400,000 points", 0)     'vpm dip 1 and 2	
        .AddFrame 0, 156, 150, "Match Feature", &H00000002, Array("ON", &H00000002, "OFF", 0)                                                                                                                                                     'vpm dip 7				
        .AddFrame 0, 202, 190, "Balls per game", &H00000020, Array("3 balls", &H00000020 , "5 balls", 0 )                                                                                                                                         'vpm dip 3				
        .AddFrame 0, 248, 190, "Background Music", &H00000800, Array("constant music", &H00000800, "switches interrupt music", 0)                                                                                                                 'vpm dip 13				
        .AddFrame 0, 294, 190, "Extra Ball Lane", &H00000200, Array("retains highest value (EASY)", 0, "reset to 10,000 (HARD)", &H00000200)                                                                                                      'vpm dip 15				
        .AddFrame 0, 340, 190, "Extra Ball Lane Award", &H00000100, Array("Randomized Extra Ball Award", 0, "Always Award Extra Ball When lit", &H00000100)                                                                                       'vpm dip 16				
        .AddFrame 0, 386, 190, "Special Ramp Award", 128, Array("Randomized Special Award", 0, "Always Award Special When lit", 128)                                                                                                              'vpm dip 8				
        .AddFrame 0, 432, 190, "Bookkeeping", &H000F000, Array("bookkeeping off", 0, "coin audits", &H00005000, "play audits", &H00009000, "replay/extra ball audits", &H00003000)                                                                'vpm dips 9/10/11/12
        .AddChk 0, 507, 150, Array("Keep memory",  &H00000400)                                                                                                                                                                                    'vpm dip 14					
        .AddChk 0, 522, 150, Array("not used",  &H00000001 )                                                                                                                                                                                      'vpm dip 6					
        .AddLabel 30, 537, 280, 20, "After hitting OK, press F3 to reset game with new settings."
        .ViewDips
    End With
End Sub
Set vpmShowDips = GetRef("editDips")
