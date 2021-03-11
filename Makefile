elixir:
	- cd base-elixir && docker build -t ciareis/base-elixir:latest . --network=host
	- docker push ciareis/base-elixir:latest
	- cd base-elixir && docker build -t ciareis/base-elixir:1.11  . --network=host
	- docker push ciareis/base-elixir:elixir-1.11

build:
	- cd base-elixir && docker build -t ciareis/base-elixir:latest . --network=host
	- cd base-elixir && docker build -t ciareis/base-elixir:1.11 . --network=host
