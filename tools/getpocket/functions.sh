#!/usr/bin/env zsh

function go_pocket_get_tags() {
  # Format - Tag # Why?
  tags=("capture_contact # Toy project to build contact" \
    "capture_read # Leisure read" \
    "capture_code # Build/Use in Toy project " \
    "capture_tool # Use in Toy project" \
    "capture_review # Next item for writing " \
    "capture_watch # Next Leisure video to watch" \
    "capture_write # Next item for writing" \
    "capture_idea # Next idea" \
    "capture_new_learn # Next/Leisure new learning" \
    "capture_next # Leisure review Not decided yet, but add tags")
  for tag in "${tags[@]}"
  do
	  echo `date +"%U_%y_"`${tag}
  done
}
