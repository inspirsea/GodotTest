extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var board=[]
var blackPawn = load("res://BlackPawn.tscn");
var blackKing = load("res://BlackKing.tscn");
var blackQueen = load("res://BlackQueen.tscn");
var blackRook = load("res://BlackRook.tscn");
var blackBishop = load("res://BlackBishop.tscn");
var blackKnight = load("res://BlackKnight.tscn");
var active = null

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 8:
		board.append([])
		for j in 8:
			board[i].append([])
			board[i][j] = null
			
	_loadPieces()
			
func _instantiateBlackPawn(pos):
		var pawn = blackPawn.instance()
		get_node("Pieces").add_child(pawn)
		_movePiece(pawn, pos)

func _instantiateBlackKing():
		var king = blackKing.instance()
		get_node("Pieces").add_child(king)
		_movePiece(king, Vector2(3, 0))

func _instantiateBlackQueen():
		var queen = blackQueen.instance()
		get_node("Pieces").add_child(queen)
		_movePiece(queen, Vector2(4, 0))
		
func _instantiateBlackRook():
		var rook1 = blackRook.instance()
		get_node("Pieces").add_child(rook1)
		_movePiece(rook1, Vector2(0, 0))
		
		var rook2 = blackRook.instance()
		get_node("Pieces").add_child(rook2)
		_movePiece(rook2, Vector2(7, 0))

func _instantiateBlackBishop():
		var bis1 = blackBishop.instance()
		get_node("Pieces").add_child(bis1)
		_movePiece(bis1, Vector2(2, 0))
		
		var bis2 = blackBishop.instance()
		get_node("Pieces").add_child(bis2)
		_movePiece(bis2, Vector2(5, 0))

func _instantiateBlackKnight():
		var knight1 = blackKnight.instance()
		get_node("Pieces").add_child(knight1)
		_movePiece(knight1, Vector2(6, 0))
		
		var knight2 = blackKnight.instance()
		get_node("Pieces").add_child(knight2)
		_movePiece(knight2, Vector2(1, 0))


func _loadPieces():
	_instantiateBlackPawn(Vector2(0, 1))
	_instantiateBlackPawn(Vector2(1, 1))
	_instantiateBlackPawn(Vector2(2, 1))
	_instantiateBlackPawn(Vector2(3, 1))
	_instantiateBlackPawn(Vector2(4, 1))
	_instantiateBlackPawn(Vector2(5, 1))
	_instantiateBlackPawn(Vector2(6, 1))
	_instantiateBlackPawn(Vector2(7, 1))
	
	_instantiateBlackKing()
	_instantiateBlackQueen()
	_instantiateBlackKnight()
	_instantiateBlackBishop()
	_instantiateBlackRook()
		
func _setActive(pos):
	if(active != null):
		if(active._canMove(board, pos)):
			_movePiece(active, pos)
		active = null
	else:
		active = board[pos.x][pos.y]
		
func _movePiece(piece, pos):
	board[piece.boardPos.x][piece.boardPos.y] = null
	piece._move(pos)	
	board[pos.x][pos.y] = piece
		
	
	
	
