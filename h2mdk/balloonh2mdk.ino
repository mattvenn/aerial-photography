/*
example program for running a fuel cell stack
for more info see the website:
http://www.arcolaenergy.com/h2mdk
*/

//_stacksize V1_5W, V3W, V12W or V30W depending on fuelcell
//_shield is the version number printed on the reverse of the shield
#define _stacksize V1_5W
#define _shield V1_2
#include <h2mdk.h>
h2mdk fuelcell;

void setup()
{
  Serial.begin(9600);

  //this blocks until caps are charged
  fuelcell.start();
  //short interval, short time, purge interval, purge time
  fuelcell.overrideTimings( 10000,50,30000,200);
}

void loop()
{
  //this takes care of short circuit, purging and updating electrical values
  fuelcell.poll();

  
}
