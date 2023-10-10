ffmpeg -i 'Crunk(Demo).wav' -i lmoous.png -y -filter_complex " \
[0:a] volume=0.2,showwaves=s=500x500:mode=line:s=500x500:colors=#ee55e8@1:scale=sqrt:r=30,format=rgba [waveform]; \
[1:v] format=rgba [textimage]; \
[waveform][textimage] overlay=W-w:H-h:enable='between(t,0,20)'" -b:v 8000k final-inv.mp4

ffmpeg -y -i final-inv.mp4 -vf negate -b:v 8000k final.mp4