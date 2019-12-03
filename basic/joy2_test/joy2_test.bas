10 ?chr$(147)
20 fl=1024:rl=1027:ll=1030
25 dl=1033:ul=1036
30 fv=1064:rv=1067:lv=1070
35 dv=1073:uv=1076
40 rem print labels
45 poke fl,6
50 poke rl,18
55 poke ll,12
60 poke dl,4
65 poke ul,21
70 rem grab joystick 2
75 j2=peek(56320)
80 rem calc values
85 f=(j2 and 16)=16
90 r=(j2 and 8)=8
95 l=(j2 and 4)=4
100 d=(j2 and 2)=2
105 u=(j2 and 1)=1
110 rem print values
120 poke fv,49+f
125 poke rv,49+r
130 poke lv,49+l
135 poke dv,49+d
140 poke uv,49+u
150 goto 75