WARNINGS=                    \
   -Werror                   \
   -Wall                     \
   -Wextra                   \
   -pedantic                 \
   -Wcast-align              \
   -Wcast-qual               \
   -Wctor-dtor-privacy       \
   -Wdisabled-optimization   \
   -Wformat=2                \
   -Winit-self               \
   -Wlogical-op              \
   -Wmissing-include-dirs    \
   -Wmissing-declarations    \
   -Wnoexcept                \
   -Wold-style-cast          \
   -Woverloaded-virtual      \
   -Wredundant-decls         \
   -Wshadow                  \
   -Wsign-promo              \
   -Wstrict-null-sentinel    \
   -Wstrict-overflow=5       \
   -Wundef                   \
   -Wno-unused               \
   -Wno-variadic-macros      \
   -Wno-parentheses          \
   -fdiagnostics-show-option

base64-test-11: base64-11.o test-11.o
	g++ base64-11.o test-11.o -o $@

test-11.o: test.cpp
	g++ -std=c++11 $(WARNINGS) -c test.cpp -o test-11.o
