# AddSubOps
coded in x86 assembly language <br>
This program implements specific addition and subtraction operations for different bit sizes on all registers <br>

The following directions where given:
1) add three predefined numbers together and store in bSum
2) Subtract the first number from the sum of the second and third number. Store the results in bDiff.
3) add bSum and bDiff. Store the results in bResult. <br>
Repeat this process for similarly-named WORD and DWORD operands <br>
Use only the MOV, ADD, and SUB commands in the appropriate registers to manipulate data. <br>
Finally move all results to the 32 bit register in order to add them all together. Store the results in dwTotal. <br>

In order to run this code you will need to modify and upload to vsCode or download the following zip files: <br>
<b> masm615.zip</b> <br>
<b> Irvine.zip</b> <br>
<b> Satterley_ASM.zip</b> <br>
and store them in the C drive of your device. <br> 

Then go to the search bar at the bottom of your screen and type the letters CMD to open your command prompt. <br>
Next type or copy and paste the following lines to create an executable file and execute the program. <br> 
<b> cd C:\Satterley_ASM </b> <br>
<b> make32 Meghan-Satterley_AddSubOps </b> <br> <br>
You should see the following files appear in your folder directory <br> 
![make32_AddSubOps](https://user-images.githubusercontent.com/114275745/233751881-a647e883-cfd8-4712-8357-9e915ef2c3da.png)
<br> <br> Lastly type the following line to execute the program <br>
<b> Meghan-Satterley_AddSubOps </b> <br> <br>
The following will result if executed correctly <br>
![AddSubOps_Exe](https://user-images.githubusercontent.com/114275745/233752020-96aab76d-3310-4103-8e22-6ecf04d93695.png)
<br> <br> The complete assembly program has 19 variables (6 in each set of 3 different data sizes and one overall total), 
<br> three separate memory dumps of sum, diff, and result 
<br> plus one memory dump of the total
<br> the purpose of this program is to show an understanding of basic data manipulation and proper register use.
