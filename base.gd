extends Control

onready var text = $Background/Text
var result = ""

func _ready():
	OS.center_window()
	pass

func OnEncode():
	result = Marshalls.utf8_to_base64(text.text)
	text.text = text.text + "\n\n" + result
	pass

func OnDecode():
	result = Marshalls.base64_to_utf8(text.text)
	text.text = text.text + "\n\n" + result
	pass

func OnCopy():
	OS.clipboard = result
	$Background/Copied.show()
	pass
