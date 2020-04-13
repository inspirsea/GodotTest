extends Node2D

const Util = preload("Util.gd")
var boardPos = Vector2(-1, -1)

func _ready():
	pass # Replace with function body.

func _move(pos):
	boardPos = pos
	position = Util._getRealPos(pos);

func _taken(board, pos):
	if(board[pos.x][pos.y] != null):
		return true
	return false
