# Joystick 2 Test

This is a simple test program using joystick 2 on a Commodore 64; it is written in Commodore Basic.

_For convenience, the code can be cut and pasted into Vice. For this to work, the code must be written in lower case. It will automatically appear upper case in Vice._

The first line clears the screen
```
10 ?chr$(147)
```

The next few lines just define the character addresses where the joystick labels are joystick values will be displayed.
```
20 fl=1024:rl=1027:ll=1030
25 dl=1033:ul=1036
30 fv=1064:rv=1067:lv=1070
35 dv=1073:uv=1076
```

The next section displays the joystick labels in the upper left of the screen. The numbers to the right of the `POKE` commands are the screen codes for the letters: F, R, L, D, U.
```
40 rem print labels
45 poke fl,6
50 poke rl,18
55 poke ll,12
60 poke dl,4
65 poke ul,21
```

The next section grabs the joystick 2 register value then calculates the logic values.
```
70 rem grab joystick 2
75 j2=peek(56320)
80 rem calc values
85 f=(j2 and 16)=16
90 r=(j2 and 8)=8
95 l=(j2 and 4)=4
100 d=(j2 and 2)=2
105 u=(j2 and 1)=1
```

The last section displays the logic values then repeats.
```
110 rem print values
120 poke fv,49+f
125 poke rv,49+r
130 poke lv,49+l
135 poke dv,49+d
140 poke uv,49+u
150 goto 75
```