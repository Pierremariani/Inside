extends Panel

var time: float = 0.0
var minutes : int = 0
var seconds : int = 0
var msec : int = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time+= delta
	msec = fmod(time,1)*100
	seconds = fmod(time,60)
	minutes = fmod(time,3600) /60
	$min.text = "%02d:" % minutes
	$sec.text = "%02d." % seconds
	$msecs.text = "%03d" %msec
	
