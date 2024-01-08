# https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html
extends Resource
class_name Character

@export_group("Display")
@export var name : String
@export var texture : Texture

@export_group("Stats")
@export var health : int = 0
@export var attack : int = 0
@export var defense : int = 0

@export_group("Attacks")
@export var basic : Attack
@export var skill : Attack
@export var ultimate : Attack
