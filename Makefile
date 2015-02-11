cpushow: PCD8544.o pcd8544_rpi.o
	gcc -o cpushow PCD8544.o pcd8544_rpi.o -L/usr/local/lib -lwiringPi

PCD8544.o: PCD8544.c PCD8544.h
	gcc -c PCD8544.c

pcd8544_rpi.o: pcd8544_rpi.c PCD8544.h
	gcc -c pcd8544_rpi.c

clean:
	rm *.o cpushow
