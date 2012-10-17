rem Countdown Intervalometer v1.1
rem An intervalometer script that will take a specific number of photos.
rem 
rem If the Number of Shots is set to zero the intervalometer switches from
rem a countdown intervalometer mode over to a perpetual intervalometer mode
rem that will continue to take photos until your memory card is full or your
rem camera's battery runs out of power.
rem 
rem Version 1.1 updated Sept 19, 2010.
rem Added the perpetual intervalometer mode.
rem 
rem Version 1.0 Created by Andrew Hazelden on Sept 16, 2010.
rem 
rem E-mail: andrewhazelden@gmail.com   Blog: www.andrewhazelden.com
rem 
rem To download the latest version check out this blog post:
rem http://www.andrewhazelden.com/blog/2010/09/ubasic-countdown-intervalometer-script-for-canon-powershots-running-chdk/

@title Countdown Intervalometer

rem i is the interval between photos in seconds.
@param i Interval in Sec
@default i 10

rem n is the number of shots to take.
@param n Number of Shots
@default n 99

rem e is elapsed photos taken.
e=0

rem r is the number of shots remaining.
r=n

rem get timelapse start time in ms
z=get_tick_count

rem q is photo time elapsed temp counter in ms
rem v is actual time per photo in ms

rem check for perpetual photo mode if Number of Shots equals zero.
if n=0 then gosub "perpetual"
if n>0 then gosub "countdown"


rem get end time using
x=get_tick_count


rem calculate total timelapse duration
p = (x-z)/1000


rem print total timelapse duration

rem s is seconds elapsed
s=(p)%60

rem m is minutes elapsed
m=((p)/60)%60

rem h is hours elapsed
h=(p)/3600

cls
print "Sequence Complete."
print e, "Shots Taken in:"
print h;":";m;":";s, "HH:MM:SS"
end





:remaining
rem time remaining subroutine

rem s is seconds remaining
s=((v/1000)*r)%60

rem m is minutes remaining
m=(((v/1000)*r)/60)%60

rem h is hours remaining
h=((v/1000)*r)/3600

print "Est. Time Remaining:"
print h;":";m;":";s, "HH:MM:SS"

return



:perpetual
rem perpertual intervalometer mode

rem run the while loop forever.
while 1
	
	shoot
	rem increase elapsed photo counter
	e=e+1
	
	cls
	print "Shot:", e
	
	rem interval between photos delay
	sleep i*1000
	
wend

return




:countdown
rem countdown intervalometer mode

rem run the while loop until there are no shots remaining.
while r
	rem get the start time for this shot
    q = get_tick_count
	shoot
	
	rem increase elapsed photo counter
	e=e+1
	
	rem decrease shots remaining counter
	r=r-1
	
	cls
	print "Shot:", e, " of ", n 
	
	rem If we are beyond the 1st shot call the "remaining" subroutine
	rem to display the time remaining.
	if e>1 then gosub "remaining"
	
	rem interval between photos delay
	if r>0 then sleep i*1000
	
	rem calculate time between photos in ms
	v=get_tick_count-q
	
wend

return
