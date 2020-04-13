static func _getBoardPos(pos):
	return Vector2(floor(pos.x/22), floor(pos.y/22))
	
static func _getRealPos(pos):
	return Vector2((pos.x * 22) + 11, (pos.y * 22) + 11)
