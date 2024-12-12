#! bin/bash

function makeTmuxSession {
	local session_name="$1"
	local working_directory="${2:-$PWD}"
	local first_window="${3:-editor}"
	local second_window="${3:-process}"

	if [ -z "$session_name" ]; then
		echo "Error: Session name is required."
		return 1  # Exit the function with a non-zero status
	fi

	if tmux has-session -t "$session_name" 2>/dev/null;then
		if [ -n "$TMUX" ]; then
			tmux switch-client -t "$session_name"
		else
			tmux attach-session -t "$session_name"
		fi
	else 
		tmux new-session -d -c "$working_directory" -s "$session_name" -n "$first_window" 
		tmux new-window -Sd -t "$session_name" -n "$second_window" -c "$working_directory" 
		if [ -n "$TMUX" ]; then
			tmux switch-client -t "$session_name"
		else
			tmux attach-session -t "$session_name"
		fi
	fi
}
