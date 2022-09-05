# Specifiy the target
all: executable.exe

# Specify the object files that the target depends on
# Also specify the object files needed to create the executable
executable: main.o Instructor.o 
	g++ main.o Instructor.o -o executable.exe

# Specify how the object files should be created from source files
main.o: main.cpp
	g++ -c main.cpp

Instructor.o: Instructor.h
	g++ -c Instructor.h

Student.o: Student.cpp
	g++ -c Student.cpp

# Specify the object files and executables that are generated
# and need to be removed to re-compile the whole thing
clean:
	rm -f *.o executable.exe