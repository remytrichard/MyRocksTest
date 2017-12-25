

CXX=g++
CXXFLAGS=-g -std=c++11
INCLUDE=-I. -I/usr/include/mysql
OBJS=run_test.o client.o

all: ${OBJS}
	${CXX} ${CXXFLAGS} ${INCLUDE} -o main main.cc ${OBJS} -lmysqlclient

run_test.o:
	${CXX} ${CXXFLAGS} ${INCLUDE} -c run_test.cc

client.o:
	${CXX} ${CXXFLAGS} ${INCLUDE} -c client.cc

clean:
	rm *.o main
