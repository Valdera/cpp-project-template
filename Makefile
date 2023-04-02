dependency:
	cd build && cmake .. --graphviz=graph.dot && dot -Tpng graph.dot -o graph_deps.png

all:
	make prepare
	make init-cmake
	make build-app

prepare:
	rm -rf build
	mkdir build
	cd build && conan install .. && cd ..

init-cmake:
	cd build && cmake .. && cd ..

build-app:
	cd build && cmake --build . && cd ..

install-conan:
	pip install --user conan==1.59.0
	conan user
