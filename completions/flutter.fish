complete -c flutter -s h -l help            -d "Print this usage information."
complete -c flutter -s v -l verbose         -d "Noisy logging, including all shell commands executed. If used with \"--help\", shows hidden options. If used with \"flutter doctor\", shows additional diagnostic information. (Use \"-vv\" to force verbose logging in those cases.)"
complete -c flutter -s d -l device-id       -d "Target device id or name (prefixes allowed)."
complete -c flutter -l version              -d "Reports the version of this tool."
complete -c flutter -l suppress-analytics   -d "Suppress analytics reporting when this command runs."

function __flutter_entries
    flutter | sed "1,/Available commands/d" | string match -i -r '^\s+.*?\s\b' | string trim
end

complete -f -c flutter -a '(__flutter_entries)'
