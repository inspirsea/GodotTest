extends "Piece.gd"

func _canMove(board, moveTo):
	var option1 = Vector2(boardPos.x + 1, boardPos.y - 1)
	var option2 = Vector2(boardPos.x, boardPos.y - 1)
	var option3 = Vector2(boardPos.x - 1, boardPos.y - 1)
	var option4 = Vector2(boardPos.x - 1, boardPos.y)
	var option5 = Vector2(boardPos.x + 1, boardPos.y)
	var option6 = Vector2(boardPos.x - 1, boardPos.y + 1)
	var option7 = Vector2(boardPos.x, boardPos.y + 1)
	var option8 = Vector2(boardPos.x + 1, boardPos.y + 1)

	if((moveTo == option1 || moveTo == option2 || moveTo == option3 || moveTo == option4 || moveTo == option5 || moveTo == option6 || moveTo == option7 || moveTo == option8) && !_taken(board, moveTo)):
		return true
	else:
		return false
