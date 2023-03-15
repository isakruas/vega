CC = g++
CFLAGS = -Wall -std=c++11 -I/usr/local/cuda-12.1/include `pkg-config --cflags opencv4`
LIBS = `pkg-config --libs opencv4` -lstdc++  

SOURCES = main.cpp main.cuda.cpp
OBJECTS = $(SOURCES:.cpp=.o)

PNG_SEQ_CREATOR=png-seq-creator
CUDA_PNG_SEQ_CREATOR=cuda-png-seq-creator

all: $(PNG_SEQ_CREATOR) $(CUDA_PNG_SEQ_CREATOR)

$(PNG_SEQ_CREATOR): main.o
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

$(CUDA_PNG_SEQ_CREATOR): main.cuda.o
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(PNG_SEQ_CREATOR) $(CUDA_PNG_SEQ_CREATOR) $(OBJS)
