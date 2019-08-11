CXX = g++
CXXFLAGS = -g -std=c++14 -Wall -MMD -Werror=vla -lX11
EXEC = chess
OBJECTS = Bishop.o board.o Cell.o CheckMove.o Chess.o computer.o graphicsdisplay.o human.o Info.o King.o Knight.o l321_comp.o main.o Pawn.o player.o Queen.o Recorder.o Rook.o Validate.o window.o
DEPENDS = ${OBJECTS:.o=.d}

${EXEC}: ${OBJECTS}
				${CXX} ${OBJECTS} -o ${EXEC} ${CXXFLAGS}

-include ${DEPENDS}

.PHONY: clean

clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS}
