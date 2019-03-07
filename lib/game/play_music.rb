def intro_tune
  cmd = TTY::Command.new(pty: true)
  cmd.run('afplay lib/art/sound/pac.mp3', only_output_on_error: true)
end