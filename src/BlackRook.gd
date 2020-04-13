extends "Piece.gd"

func _canMove(board, moveTo):
	
	var posiblePositions = [];
	
	for i in 8:
		posiblePositions.append(Vector2(boardPos.x, i));
		posiblePositions.append(Vector2(i, boardPos.y));
	
	if(posiblePositions.has(moveTo) && !_taken(board, moveTo)):
		return true
	else:
		return false
	
