extends Sprite2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var CodeContener = Vector2(0,0)
	var codes = []
	for n in get_children():
		codes.append(n)
	var i = 1
#	self.scale.y
	print(codes)
	for n in range(codes.size()-1):
		var j = i
#		print(codes[j-1])
		print(codes)
		print(j)
		while j > 0 and get_children()[j-1].position.y > get_children()[j].position.y:
#			var temp = get_children()[j-1]
			move_child(get_children()[j], j-1)
#			print(get_children())
#			move_child(temp, j)
#			codes[j-1] = codes[j]
#			codes[j] = temp
			j = j-1
			print ("lol")
		i=i+1
		print("lol1")
	print(codes)
	for code in codes:
		print(code.position)
		code.position = CodeContener
		CodeContener.y = CodeContener.y + ((code.texture.get_height() * code.scale.y)+5)
		print(code.position)
	print(get_children())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
