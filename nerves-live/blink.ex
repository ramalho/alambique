blink = fn led ->
  Stream.cycle([1, 0]) |> 
  Enum.each(fn state ->
    GPIO.write(led, state)
    Process.sleep(500)  # 500ms delay between state changes
  end)
end

brew uninstall elixir
brew uninstall erlang

brew update
brew install fwup squashfs coreutils xz pkg-config

brew install wxwidgets

https://elixirforum.com/t/wifi-problems-with-nerves-livebook-on-raspberry-pi-zero-2w/61957
https://elixirforum.com/t/nerves-on-raspberry-pi-zero-2-w-does-not-boot/59885
https://github.com/elixir-circuits/circuits_quickstart/blob/main/README.md