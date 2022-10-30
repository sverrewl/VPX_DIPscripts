So, what is this collection ? It is scripts for Visual Pinball, where the aim is to set/program pinball machine's dip switches.
Almost all the scripts here are provided by Peter aka Inkochnito.
The infomation below, comes from a forum post that Destruk made about the subject.

I was confused by this for the longest time, always asking Inkochnito to make the menus for me. Anyway, I spent some time tonight looking over the core.vbs file and I understand how it works now.

Originally, dips were set with this code in the script
Controller.Dip(0) = (1*1 + 1*2 + 0*4 + 0*8 + 0*16 + 0*32 + 0*64 + 0*128) '01-08
Controller.Dip(1) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '09-16
Controller.Dip(3) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '17-24
Controller.Dip(4) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '25-32

and Core.vbs would multiply the values, add them together, and send the final total to visual pinmame to set all the dips to the desired values for you.

WPCMame came up with the dipswitch menu options using WSHDlg (windows scripting host dialog) control. This control comes standard with windows and is loaded as needed when the core.vbs calls for it.
The WSHDlg control allows us to easily create menus at runtime.

Using the above information, this chart will be handy for setting up menu systems -

'''
        Dip#  Hex       Decimal
        ---------------------------
        1     1         1
        2     2         2
        3     4         4
        4     8         8
        5     10        16
        6     20        32
        7     40        64
        8     80        128
        9     100       256
        10    200       512
        11    400       1024
        12    800       2048
        13    1000      4096
        14    2000      8192
        15    4000      16384
        16    8000      32768
        17    10000     65536
        18    20000     131072
        19    40000     262144
        20    80000     524288
        21    100000    1048576
        22    200000    2097152
        23    400000    4194304
        24    800000    8388608
        25    1000000   16777216
        26    2000000   33554432
        27    4000000   67108864
        28    8000000   134217728
        29    10000000  268435456
        30    20000000  536870912
        31    40000000  1073741824
        32    80000000  2147483648
'''

Hex values are easier to deal with in this regard, so that's why they are preferred in the dip menu scripts. But you can use either.

So, for example,

'Bally Dolly Parton
'added by Inkochnito
Set vpmShowDips=GetRef("EditDips") ' This sets the F6 routine for vpmShowDips to run the subroutine "EditDips" rather than the standard dip menu in the VBS file

Sub EditDips
Dim vpmDips:Set vpmDips=New cvpmDips 'initializes vpmDips to the cvpmDips class to allow creation of a window option menu
With vpmDips
  .AddForm 700,400,"Dolly Parton - DIP switches"
  .AddFrame 2,2,190,"Hitting 4 drop targets",&H00800000,Array("lites extra ball",0,"lites extra ball and special",&H00800000)'dip 24
  .AddFrame 2,48,190,"Hitting drop targets",&H00002000,Array("does not spot a letter",0,"spots lit saucer letter",&H00002000)'dip 14
  .AddFrame 2,94,190,"Saucer 5000 && return lanes both on",&H00000080,Array("after making DOLLY PARTON",0,"at the start of the game",&H00000080)'dip 8
  .AddFrame 2,140,190,"Making DOLLY PARTON lites",32768,Array("left special",0,"both specials",32768)'dip 16
  .AddFrame 2,186,190,"2X, 3X or 5X lit bonus will",&H00400000,Array ("not be recalled for next ball",0,"be recalled for next ball",&H00400000)'dip 23
  .AddFrame 2,232,190,"Sound features",&H30000000,Array("chime effects",0,"noises",&H10000000,"chime effects and some noises",&H20000000,"chime effects and noises",&H30000000)'dip 29&30
  .AddFrame 2,306,190,"High score feature",&H00000060,Array("no award",0,"extra Ball",&H00000040,"replay",&H00000060)'dip 6&7
  .AddFrame 205,2,190,"High score to date",&H00300000,Array("no award",0,"1 credit",&H00100000,"2 credits",&H00200000,"3 credits",&H00300000)'dip 21&22
  .AddFrame 205,94,190,"Balls per game",&H40000000,Array("3 balls",0,"5 balls",&H40000000)'dip 31
  .AddFrame 205,140,190,"Outlane special",&H00004000,Array("not in memory",0,"in memory",&H00004000)'dip 15
  .AddFrame 205,186,190,"Outlane special adjustment",&H80000000,Array("making 44000 lites right special",0,"making 22000 lites left special",&H80000000)'dip 32
  .AddFrame 205,232,190,"Maximum credits",&H03000000,Array("10 credits",0,"15 credits",&H01000000,"25 credits",&H02000000,"40 credits",&H03000000)'dip 25&26
  .AddChk 205,320,180,Array("Match feature",&H08000000)'dip 28
  .AddChk 205,340,115,Array("Credits displayed",&H04000000)'dip 27
  .AddLabel 50,370,340,20,"After hitting OK, press F3 to reset game with new settings."
  .ViewDips
End With
End Sub

So, in the above example, checking the Credits Displayed box will enable dipswitch 27 (&H04000000) - Dips are automatically saved on table exit by VPM, and they are automatically loaded when VP executes controller.run
The dips are not changed unless you tell them to change.
The dip switches are saved as a total value of each bank of 8 dip switches -

Controller.Dip(0) = (1*1 + 1*2 + 0*4 + 0*8 + 0*16 + 0*32 + 0*64 + 0*128) '01-08 -- 1/2/4/8/16/32/64/128
Controller.Dip(1) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '09-16 -- 256/512/1024/2048/4096/8192/16384/32768

Controller.Dip(3) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '17-24 -- 65536/131072/262144/524288/1048576/2097152/4194304/8388608
Controller.Dip(4) = (0*1 + 0*2 + 0*4 + 1*8 + 0*16 + 0*32 + 1*64 + 0*128) '25-32 -- 16777216/33554432/67108864/134217728/268435456/536870912/1073741824/2147483648


So, if you were to set Dolly Parton to a maximum credits of 40, with match displayed, and credits displayed, and high score to date awarding 1 credit, the value saved for the dips for that game would be
&H03000000+&H08000000+&H04000000+&H00100000=&HF100000 or 252706816.


possible options for a form are:
  .AddForm - create a form (AKA dialogue) - Width, Height, Window Name for the form
  .AddChk - add a chckbox - X Location, Y Location, Width, Array of text and value when checked
  .AddChkExtra - - "" - for non-dip settings
  .AddFrame - add a frame with checkboxes or option buttons - X Location, Y location, width, text,highest value mask, option names array and value of each
  .AddFrameExtra - - "" - for non-dip settings
  .AddLabel - add a label (text string) - X Location, Y Location, Width, Height, Text (simply displays a line of text)
  .ViewDips - Show form - this is already in the vbs file for the system, ie - WPC.VBS

Case keyShowDips If IsObject(vpmShowDips) Then .Pause = True : vpmShowDips : .Pause = False

.ViewDipsExtra - - "" - with non-dip settings

If you use ViewDipsExtra and AddChkExtra and AddFrameExtra, the dip value for those will be saved in vpreg.stg in the user folder of VP, and it will be kept separate from the controller.dip value in the nvram file for the romset.
