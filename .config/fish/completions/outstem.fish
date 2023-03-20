
function _outstem_yargs_completion
  set cmd (commandline -b)
  for arg in (string split " " $cmd)
      set -a args "'$arg'"
  end
  set completions (eval outstem --get-yargs-completions $args)
  for completion in $completions
    echo -e $completion
  end
end
complete -f -c outstem -a '(_outstem_yargs_completion)'
