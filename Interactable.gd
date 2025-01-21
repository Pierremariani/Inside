extends Area3D

class_name Interactable

signal focused(interactor : Interactor)

signal unfocused(interactor : Interactor)

signal interacted(interactor : Interactor)

var is_open: bool = false

func open() -> void:
	is_open = true
	print("ouvert")
	# Fade the light in
# Open the chest if unopened
func _on_interactable_interacted(_interactor: Interactor) -> void:
	if not is_open:
		open()


# Add white outline
func _on_interactable_focused(_interactor: Interactor) -> void:
	if not is_open:
		print("interaction possible")

# Remove white outline
func _on_interactable_unfocused(_interactor: Interactor) -> void:
	print("fin interaction")
