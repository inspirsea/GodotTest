extends "Piece.gd"

func _ready():
	pass # Replace with function body.

func _canMove(board, moveTo):
	var option1 = Vector2(boardPos.x + 1, boardPos.y + 1)
	var option2 = Vector2(boardPos.x - 1, boardPos.y + 1)

	if((moveTo == option1 || moveTo == option2) && !_taken(board, moveTo)):
		return true
	else:
		return false

