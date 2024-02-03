10 REM Stray Saver Application
20 DIM stations(100, 3) ' Array to hold station data: ID, Name, Location
30 DIM shelters(100, 3) ' Array to hold shelter data: ID, Name, Location
40 STATIONCOUNT = 0 ' Counter for feeding stations
50 SHELTERCOUNT = 0 ' Counter for shelters

60 PRINT "Welcome to Stray Saver!"
70 PRINT "Select an option:"
80 PRINT "1. Add Feeding Station"
90 PRINT "2. Add Shelter"
100 PRINT "3. View Feeding Stations"
110 PRINT "4. View Shelters"
120 PRINT "5. Exit"
130 INPUT "Enter your choice: ", CHOICE

140 IF CHOICE = 1 THEN GOTO 200
150 IF CHOICE = 2 THEN GOTO 300
160 IF CHOICE = 3 THEN GOTO 400
170 IF CHOICE = 4 THEN GOTO 500
180 IF CHOICE = 5 THEN GOTO 600
190 GOTO 70

200 REM Add Feeding Station
210 STATIONCOUNT = STATIONCOUNT + 1
220 PRINT "Enter Feeding Station Name: "; 
230 INPUT STATIONNAME
240 PRINT "Enter Feeding Station Location: "; 
250 INPUT STATIONLOCATION
260 stations(STATIONCOUNT, 1) = STATIONCOUNT
270 stations(STATIONCOUNT, 2) = STATIONNAME
280 stations(STATIONCOUNT, 3) = STATIONLOCATION
290 GOTO 70

300 REM Add Shelter
310 SHELTERCOUNT = SHELTERCOUNT + 1
320 PRINT "Enter Shelter Name: "; 
330 INPUT SHELTERNAME
340 PRINT "Enter Shelter Location: "; 
350 INPUT SHELTERLOCATION
360 shelters(SHELTERCOUNT, 1) = SHELTERCOUNT
370 shelters(SHELTERCOUNT, 2) = SHELTERNAME
380 shelters(SHELTERCOUNT, 3) = SHELTERLOCATION
390 GOTO 70

400 REM View Feeding Stations
410 IF STATIONCOUNT = 0 THEN PRINT "No feeding stations added yet."
420 FOR I = 1 TO STATIONCOUNT
430 PRINT "ID: "; stations(I, 1); " Name: "; stations(I, 2); " Location: "; stations(I, 3)
440 NEXT I
450 GOTO 70

500 REM View Shelters
510 IF SHELTERCOUNT = 0 THEN PRINT "No shelters added yet."
520 FOR I = 1 TO SHELTERCOUNT
530 PRINT "ID: "; shelters(I, 1); " Name: "; shelters(I, 2); " Location: "; shelters(I, 3)
540 NEXT I
550 GOTO 70

600 REM Exit
610 PRINT "Thank you for using Stray Saver!"
620 END
