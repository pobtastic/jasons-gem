> $4000 @org=$4000
> $4000 @start=$9470
b $4000 Loading screen
D $4000 #UDGTABLE { =h Jason's Gem Loading Screen. } { #SCR$02(loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels
  $5800,$0300,$20 Attributes

b $5B00

g $5BA4 Score?
@ $5BA4 label=Score
W $5BA4,$02

g $5BA8

g $5BB8 Temporary Address
@ $5BB8 label=TemporaryAddress
W $5BB8,$02

g $5BBA Temporary Counter
@ $5BBA label=TemporaryCounter
B $5BBA,$01

b $5BBB

c $9470 Game entry point
@ $9470 label=GameEntry
  $9470,$06 #HTML(Write #N$FAF4 to <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/5C36.html">CHARS</a>.)
  $9476,$05 #HTML(Write #N$01 to <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/5C6B.html">DF_SZ</a>.)
  $947B,$05 Write #N$01 to #R$5BA8.

  $948D,$05 #HTML(Write #N$07 to <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/5C48.html">BORDCR</a>.)
  $9492,$03 Set the border colour to BLACK.
  $9495,$05 Write #N$03 to #R$5BBA.
  $949A,$03 Call #R$955A.
  $949D,$03 Call #R$95A3.
  $94A0,$08 If #R$5BA8 is #N$01, jump to #R$9673.
  $94A8,$08 If #R$5BA8 is #N$02, jump to #R$9689.
  $94B0,$08 If #R$5BA8 is #N$03, jump to #R$96A4.
  $94B8,$08 If #R$5BA8 is #N$05, jump to #R$96BF.
N $94C0 Handles selecting "1. KEYBOARD".
  $94C0,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $94C4,$02,b$01 Keep only bit 0.
  $94C6,$03 If "1" was pressed then jump to #R$9666.
N $94C9 Handles selecting "2. KEMPSTON JOYSTICK".
  $94C9,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $94CD,$02,b$01 Keep only bit 1.
  $94CF,$03 If "2" was pressed then jump to #R$9681.
N $94D2 Handles selecting "3. PROTEK JOYSTICK".
  $94D2,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $94D6,$02,b$01 Keep only bit 2.
  $94D8,$03 If "3" was pressed then jump to #R$969C.
N $94DB Handles selecting "4. INTERFACE 2".
  $94DB,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $94DF,$02,b$01 Keep only bit 3.
  $94E1,$03 If "4" was pressed then jump to #R$96B7.
  $94E4,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { $FD | A | S | D | F | G }
. TABLE#
  $94E8,$02,b$01 Keep only bits 0-1.
  $94EA,$03 If "A" and "S" was pressed then jump to #R$992A.
  $94ED,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { $FD | A | S | D | F | G }
. TABLE#
  $94F1,$02,b$01 Keep only bit 0.
  $94F3,$03 If "A" was pressed then jump to #R$9944.
N $94F6 Handles selecting "5. INSTRUCTIONS".
  $94F6,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $94FA,$02,b$01 Keep only bit 4.
  $94FC,$03 If "5" was pressed then jump to #R$96DB.
N $94FF Handles selecting "6. PLAY".
  $94FF,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $9503,$02,b$01 Keep only bit 4.
  $9505,$03 If "6" was pressed then jump to #R$97AC.

  $952F,$03 Jump to #R$9750.

c $9532
  $9532,$01 Stash #REGde on the stack.
  $9533,$03 Call #R$9538.
  $9536,$01 Restore #REGde from the stack.
  $9537,$01 Return.

c $9538
  $9541,$01 Return.
  $9550,$01 Return.

c $9551
  $9559,$01 Return.

c $955A
  $955A
  $9567,$0B Copies #N$07FF bytes of data from #R$9B78 to the screen buffer.
  $9572,$03 #REGhl=#N$40A0.
  $9575,$02 #REGb=#N$18.
  $9577,$02 Stash #REGbc and #REGhl on the stack.
  $9579,$02 #REGde=#REGhl.
  $957C,$03 #REGbc=#N$001F.
  $957F,$02 Writes #N$00 to #REGhl.
  $9583,$01 Restore #REGhl from the stack.
  $9584,$03 Call #R$9532.
  $9587,$01 Restore #REGbc from the stack.
  $9588,$02
  $958A,$0B Copies #N$00A0 bytes of data from #R$B378 to the attribute buffer.
  $9595,$0D Writes #N$07.
  $95A2,$01 Return.

c $95A3 Title Screen Print
@ $95A3 label=TitleScreenPrint
N $95A3 Open the upper screen channel.
  $95A3,$02 #REGa=#N$02.
  $95A5,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1601.html">CHAN_OPEN</a>.)
N $95A8 #HTML(Uses <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a> to print to the screen.) 
  $95A8,$03 #REGde=#R$95B2 (text).
  $95AB,$03 #REGbc=#N$00B4 (counter).
  $95AE,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a>.)
  $95B1,$01 Return.

b $95B2 Title Screen Copy
@ $95B2 label=TitleScreenCopy
N $95B2 Handles printing the "#STR$95B9,$00,$0B" text.
  $95B2,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $95B5,$02 INK #PEEK(#PC + $01).
  $95B7,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
T $95B9,$0B "#STR$95B9,$00,$0B".
N $95C4 Handles printing the "#STR$95C7,$00,$14" text.
  $95C4,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $95C7,$14 "#STR$95C7,$00,$14".
N $95DB Handles printing the "#STR$95DE,$00,$12" text.
  $95DB,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $95DE,$12 "#STR$95DE,$00,$12".
N $95F0 Handles printing the "#STR$95F3,$00,$0E" text.
  $95F0,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $95F3,$0E "#STR$95F3,$00,$0E".
N $9601 Handles printing the "#STR$9606,$00,$0F" text.
  $9601,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $9604,$02 INK #PEEK(#PC + $01).
T $9606,$0F "#STR$9606,$00,$0F".
N $9615 Handles printing the "#STR$961A,$00,$07" text.
  $9615,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $9618,$02 INK #PEEK(#PC + $01).
T $961A,$07 "#STR$961A,$00,$07".
N $9621 Handles printing the "#STR$9626,$00,$1B" text.
  $9621,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $9624,$02 INK #PEEK(#PC + $01).
T $9626,$1B "#STR$9626,$00,$1B".
N $9641 Handles printing the "#STR$9648,$00,$1E" text.
  $9641,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $9644,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $9646,$02 INK #PEEK(#PC + $01).
T $9648,$1E "#STR$9648,$00,$1E".

c $9666
  $9666,$03 #REGa=#R$5BA8.
  $9669,$05 If this is #N$01 then jump to #R$94C0.
  $966E,$05 Write #N$01 to #R$5BA8.
  $9673,$03 Call #R$95A3.
  $9676,$03 #REGhl=#N$58E7.
  $9679,$02 #REGa=#N$0B.
  $967B,$03 Call #R$96D2.
  $967E,$03 Jump to #R$94C0.

c $9681
  $9681,$03 #REGa=#R$5BA8.
  $9684,$05 If this is #N$02 then jump to #R$94C0.
  $9689,$05 Write #N$02 to #R$5BA8.
  $968E,$03 Call #R$95A3.
  $9691,$03 #REGhl=#N$5927.
  $9694,$02 #REGa=#N$14.
  $9696,$03 Call #R$96D2.
  $9699,$03 Jump to #R$94C0.

c $969C
  $969C,$03 #REGa=#R$5BA8.
  $969F,$05 If this is #N$03 then jump to #R$94C0.
  $96A4,$05 Write #N$03 to #R$5BA8.
  $96A9,$03 Call #R$95A3.
  $96AC,$03 #REGhl=#N$5967.
  $96AF,$02 #REGa=#N$12.
  $96B1,$03 Call #R$96D2.
  $96B4,$03 Jump to #R$94C0.

c $96B7
  $96B7,$03 #REGa=#R$5BA8.
  $96BA,$05 If this is #N$05 then jump to #R$94C0.
  $96BF,$05 Write #N$05 to #R$5BA8.
  $96C4,$03 Call #R$95A3.
  $96C7,$03 #REGhl=#N$59A7.
  $96CA,$02 #REGa=#N$0E.
  $96CC,$03 Call #R$96D2.
  $96CF,$03 Jump to #R$94C0.

c $96D2
  $96DA,$01 Return.

c $96DB Instructions Print
@ $96DB label=InstructionsPrint
  $96DB,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $96DF,$02,b$01 Keep only bit 4.
  $96E1,$03 Jump back to #R$96DB.
  $96E4,$0B Copies #N$1B00 bytes of data from #R$9B78 to the screen buffer.
@ $96F0 label=InstructionsPrint_Loop
  $96F2,$02,b$01 Keep only bits 0-4.
  $96F4,$02,b$01
  $96F9,$03 Call #R$9480.

c $96FC Best Scores Table Print
@ $96FC label=BestScoresTablePrint
  $96FC,$03 Call #R$9910.
  $96FF,$02 #REGb=#N$05 (counter).
  $9701,$03 #REGde=#R$B86F.
  $9704,$02 #REGa=#N$0B.
@ $9706 label=BestScoresTablePrint_Loop
  $9706,$03 Stash #REGbc, #REGde and #REGaf on the stack.
  $9709,$03 PRINT AT ().
  $970C,$01 Restore #REGaf from the stack.
  $970D,$01 But keep a copy of it on the stack.
  $970E,$01
  $970F,$03 #REGa=#N$07.

  $9716,$03 #REGbc=#N$000C (all names are #N$000C characters in length).
  $9719,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a>.)

  $971C,$09 Print three spaces.
  $9725,$02 Restore #REGaf and #REGde from the stack.
  $9727,$02 But keep a copy of both of them on the stack.
  $9729,$03 #REGhl=#N$000C.
  $972C,$01 

  $974F,$01 Return.

c $9750 Best Scores Print
@ $9750 label=BestScoresPrint
  $9750,$0D
  $975D,$03 Call #R$955A.
  $9760,$03 Call #R$96FC.
  $9763,$03 #REGde=#R$9798 (text).
  $9766,$03 #REGbc=#N$0014 (counter).
  $9769,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a>.)
N $976C Loop through and print out the stored five best scores.
  $976C,$05 Write #N$05 to #R$5BBA.

@ $9771 label=BestScoresPrint_Loop
  $977B,$07 Increment #R$5BB8 by one.
  $9782,$01 #REGa=#N$00.
  $978B,$07 Decrease #R$5BBA by one.
  $9792,$03 Jump back to #R$9771 if this is not yet zero.
  $9795,$03 Jump to #R$9480.

b $9798 Best Scores Copy
@ $9798 label=BestScoresCopy
N $9798 Handles printing the "#STR$97A1,$00,$0B" text.
  $9798,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $979B,$02 INK #PEEK(#PC + $01).
  $979D,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $979F,$02 FLASH "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
T $97A1,$0B "#STR$97A1,$00,$0B".

c $97AC Start Game
@ $97AC label=StartGame
  $97AC,$0D Writes #N$00 to all #N$1800 screen buffer address locations (clears the screen).
  $97B9,$0D Writes #N$07 to all #N$0300 attribute buffer address locations.
  $97C6,$06 Writes #R$B87B to #R$5BA4.
  $97CC,$04 Write #N$00 to #R$5BA0.
  $97D0,$03 Call #R$BC48.
  $97D3,$05

c $9910

c $9944
  $9944,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FE | SHIFT | Z | X | C | V }
. TABLE#
  $9948,$02,b$01 Keep only bit 2.
  $994A,$03 If "X" hasn't been pressed, jump back to #R$94C0.
  $994D,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FB | Q | W | E | R | T }
. TABLE#
  $9951,$02,b$01 Keep only bit 2.
  $9953,$03 If "E" hasn't been pressed, jump back to #R$94C0.
  $9956,$05 Write #N$04 to #N$BC4D.
  $995B,$03 #REGhl=#N$01F4.
  $995E,$03 #REGde=#N$004B.
  $9961,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $9964,$03 Jump to #R$94C0.

b $9967

b $9B78 Instructions Data
@ $9B78 label=InstructionsData
D $9B78 #UDGTABLE
.   { =h Jason's Gem Instructions Screen }
.   { #SCR$02,0,0,$20,$18,$9B78,$B378(instructions) }
. TABLE#
  $9B78,$1800,$20 Pixels

N $B378 Instructions Attribute Data
@ $B378 label=InstructionsAttributeData
  $B378,$0300,$20 Attributes

b $B678

c $B6D0
  $B6D0,$03 Call #R$B775.
  $B6D3,$01 Disable interrupts.

N $B6DC Open the upper screen channel.
  $B6DC,$02 #REGa=#N$02.
  $B6DE,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1601.html">CHAN_OPEN</a>.)
  $B6E1,$03 #REGhl=#R$B860.
  $B6E4,$02 #REGb=#N$0C.
  $B6E6,$02 Stash #REGbc and #REGhl on the stack.

N $B6E8 g
  $B6E8,$03 Call #R$B717.

  $B6FB,$02 Stash #REGaf on the stack twice.

N $B6FB f
  $B6FD,$02 #REGa=#N$10.
  $B6FF,$01 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0010.html">PRINT_A_1</a>.)
  $B700,$02 #REGa=#N$07.
  $B702,$01 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0010.html">PRINT_A_1</a>.)
  $B703,$02 #REGa=#N$11.
  $B705,$01 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0010.html">PRINT_A_1</a>.)
  $B706,$02 #REGa=#N$02.
  $B708,$01 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0010.html">PRINT_A_1</a>.)
  $B709,$01 Restore #REGaf from the stack.
  $B70A,$01 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0010.html">PRINT_A_1</a>.)
  $B70B,$02 Restore #REGaf and #REGhl from the stack.


  $B70F,$03 Call #R$B729.
  $B712,$01 Restore #REGbc from the stack.
  $B713,$02 #R$B6E6.
  $B715,$01 Enable interrupts.
  $B716,$01 Return.

c $B717
  $B717,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/028E.html">KEY_SCAN</a>.)
  $B71E,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/031E.html">K_TEST</a>.)
  $B725,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/0333.html">K_DECODE</a>.)
  $B728,$01 Return.

c $B729
  $B729,$04 Stash #REGhl, #REGde, #REGbc and #REGaf on the stack.
  $B733,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B73C,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B745,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B74E,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B757,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B760,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $B763,$04 Restore #REGaf, #REGbc, #REGde and #REGhl from the stack.
  $B767,$01 Return.

c $B768
  $B768,$03 Call #R$B729.
  $B76B,$02 Restore #REGhl and #REGbc from the stack.
  $B76D,$02 #REGa=#N$20.
  $B76F,$01 
  $B770,$01 Increment #REGhl by one.
  $B771,$02 #R$B76F.
  $B773,$01 Enable interrupts.
  $B774,$01 Return.

c $B775 High Score Print
@ $B775 label=HighScorePrint
  $B775,$0D Writes #N$00 to all #N$1800 screen buffer address locations (clears the screen).
  $B782,$0D Writes #N$07 to all #N$0300 attribute buffer address locations.
N $B78F Open the upper screen channel.
  $B78F,$02 #REGa=#N$02.
  $B791,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1601.html">CHAN_OPEN</a>.)
N $B794 #HTML(Uses <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a> to print to the screen.) 
  $B794,$03 #REGde=#R$B79E (text).
  $B797,$03 #REGbc=#N$007B (counter).
  $B79A,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a>.)
  $B79D,$01 Return.

b $B79E High Score Copy
@ $B79E label=HighScoreCopy
N $B79E Handles printing the "#STR$B7A1,$02,$15" text.
  $B79E,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $B7A1,$15 "#STR$B7A1,$02,$15".
N $B7B6 Handles printing the "#STR$B7C1,$00,$0A" text.
  $B7B6,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B7B9,$02 FLASH "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B7BB,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B7BD,$02 INK #PEEK(#PC + $01).
  $B7BF,$02 PAPER #PEEK(#PC + $01).
T $B7C1,$0A "#STR$B7C1,$00,$0A".
N $B7CB Handles printing the "#STR$B7D6,$00,$17" text.
  $B7CB,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B7CE,$02 FLASH "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B7D0,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B7D2,$02 INK #PEEK(#PC + $01).
  $B7D4,$02 PAPER #PEEK(#PC + $01).
T $B7D6,$17 "#STR$B7D6,$00,$17".
N $B7ED Handles printing the "#STR$B7F0,$00,$11" text.
  $B7ED,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $B7F0,$11 "#STR$B7F0,$00,$11".
N $B801 Handles printing the "#STR$B80A,$04,$0C" text.
  $B801,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B804,$02 PAPER #PEEK(#PC + $01).
  $B806,$02 INK #PEEK(#PC + $01).
  $B808,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
T $B80A,$0C "#STR$B80A,$04,$0C".
N $B816 Moves the cursor for the subsequent text printing.
  $B816,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).

b $B819

b $B860

b $B86F Scoreboard Copy
@ $B86F label=ScoreboardCopy
L $B86F,$0E,$05
T $B86F,$0C "#STR#(#PC),$04,$0C".
  $B87B,$02 Score.

b $B8B5

c $B8F6 Congratulations Print
@ $B8F6 label=CongratulationsPrint
  $B8F6,$0D  Writes #N$00 to all #N$1800 screen buffer address locations (clears the screen).
  $B903,$0D Writes #N$07 to all #N$0300 attribute buffer address locations.
  $B910,$03 Set the border colour to BLACK.
N $B913 Open the upper screen channel.
  $B913,$02 #REGa=#N$02.
  $B915,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1601.html">CHAN_OPEN</a>.)
  $B918,$03 #REGde=#R$B92B (text).
  $B91B,$03 #REGbc=#N$00BF (counter).
  $B91E,$03 #HTML(Call <a href="https://skoolkit.ca/disassemblies/rom/hex/asm/1FFC.html#203C">PR_STRING</a>.)
@ $B921 label=CongratulationsPrint_Loop
  $B921,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { $7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
  $B925,$05 Loop back round to #R$B921 until the "SPACE" button is pressed.
  $B92A,$01 Return.

b $B92B Congratulations Copy
@ $B92B label=CongratulationsCopy
N $B92B Handles printing the "#STR$B932,$00,$19" text.
  $B92B,$02 PAPER #PEEK(#PC + $01).
  $B92D,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B930,$02 INK #PEEK(#PC + $01).
T $B932,$19 "#STR$B932,$00,$19".
N $B94B Handles printing the "#STR$B94E,$00,$0D" text.
  $B94B,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $B94E,$0D "#STR$B94E,$00,$0D".
N $B95B Handles printing the "#STR$B960,$00,$1C" text.
  $B95B,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B95E,$02 INK #PEEK(#PC + $01).
T $B960,$1C "#STR$B960,$00,$1C".
N $B97C Handles printing the "#STR$B97F,$00,$06" text.
  $B97C,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $B97F,$06 "#STR$B97F,$00,$06".
N $B985 Handles printing the "#STR$B98A,$00,$1E" text.
  $B985,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B988,$02 INK #PEEK(#PC + $01).
T $B98A,$1E "#STR$B98A,$00,$1E".
N $B9A8 Handles printing the "#STR$B9AB,$00,$0A" text.
  $B9A8,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
T $B9AB,$0A "#STR$B9AB,$00,$0A".
N $B9B5 Handles printing the "#STR$B9BA,$00,$0D" text.
  $B9B5,$03 PRINT AT (#PEEK(#PC + $01), #PEEK(#PC + $02)).
  $B9B8,$02 INK #PEEK(#PC + $01).
T $B9BA,$0D "#STR$B9BA,$00,$0D".
N $B9C7 Handles printing the "#STR$B9CF,$00,$05" text.
  $B9C7,$02 INK #PEEK(#PC + $01).
  $B9C9,$02 PAPER #PEEK(#PC + $01).
  $B9CB,$02 FLASH "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B9CD,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
T $B9CF,$05 "#STR$B9CF,$00,$05".
N $B9D4 Handles printing the "#STR$B9DC,$00,$0E" text.
  $B9D4,$02 INK #PEEK(#PC + $01).
  $B9D6,$02 PAPER #PEEK(#PC + $01).
  $B9D8,$02 FLASH "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
  $B9DA,$02 BRIGHT "#MAP(#PEEK(#PC + $01))(?,0:OFF,1:ON)".
T $B9DC,$0E "#STR$B9DC,$00,$0E".

b $B9EA

c $BC48

c $C33E

c $C3FB

c $CA6F

b $FBF4 Font
@ $FBF4 label=Font
N $FBF4 #LET(id=#EVAL($20 + (#PC - $FBF4) / 8))CHARACTER: "#MAP({id})(#CHR({id}),$20:SPACE,$60:£,$7F:©)".
  $FBF4,b,$01 #UDG(#PC)
L $FBF4,$08,$60

b $FEF4
