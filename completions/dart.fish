complete -c dart -s h -l help            -d "Print this usage information."
complete -c dart -s v -l verbose         -d "Show additional command output."
complete -c dart -l version              -d "Print the Dart SDK version."
complete -c dart -l enable-analytics     -d "Enable analytics."
complete -c dart -l disable-analytics    -d "Disable analytics."

function __dart_entries
    dart --no-ansi | sed "1,/Available commands/d" | string match -i -r '^\s+.*?\s\b' | string trim
end

complete -f -c dart -a '(__dart_entries)'
