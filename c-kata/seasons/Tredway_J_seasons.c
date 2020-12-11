/*
 * author: Jaeren Tredway
 */

#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main(void) {
   //member variables:
   char inputMonth[50];
   int inputDay;
   bool invalidInput = 1; //starts out true
   int index = -1;
   char season[10] = "";
   
   char* months[12] = {
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December" }; 
        
   int numDays[12] = {
        31,
        28,
        31,
        30,
        31,
        30,
        31,
        31,
        30,
        31,
        30,
        31 }; 
        
   //scan in input:
   scanf("%s", inputMonth); 
   scanf("%d", &inputDay); 
      
   //test to see if inputMonth matches any real month:     
   for (int i = 0; i < 12; i++) {
      if (strcmp(inputMonth, months[i]) == 0) {
         invalidInput = 0;
         index = i + 1; // make index match normal month number
         break;
      }  
   }
   
   //if inputMonth is valid, check to see if inputDay is valid:
   if (!invalidInput) {
      if (inputDay > numDays[index - 1] || inputDay < 1) {
         invalidInput = 1;
      }
   }
   
   /* 
    * The dates for each season are:
    * Spring: March 20 - June 20
    * Summer: June 21 - September 21
    * Autumn: September 22 - December 20
    * Winter: December 21 - March 19
    *
    * Find the season:
    */
   if (
      (index == 3 && inputDay >= 20) ||
      index == 4 ||
      index == 5 ||
      (index == 6 && inputDay <= 20) ) strcpy(season, "Spring");
   if (
      (index == 6 && inputDay >= 21) ||
      index == 7 ||
      index == 8 ||
      (index == 9 && inputDay <= 21) ) strcpy(season, "Summer");
   if (
      (index == 9 && inputDay >= 22) ||
      index == 10 ||
      index == 11 ||
      (index == 12 && inputDay <= 20) ) strcpy(season, "Autumn");
   if (
      (index == 12 && inputDay >= 21) ||
      index == 1 ||
      index == 2 ||
      (index == 3 && inputDay <= 19) ) strcpy(season, "Winter");
   
   //output season or report bad input:
   if (invalidInput) {
      printf("Invalid\n"); 
   } else {
      printf("%s\n", season);
   }
        
   return 0;
}