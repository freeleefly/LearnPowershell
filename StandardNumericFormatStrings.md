{index[,alignment][:format string]}

"{0,9:N2}" -f 123.456
-->
   123.46


format:
```powershell
#"C" or "c"  Currency
"{0,9:C2}" -f 123.456  -->
   ¥123.46

#"D" or "d"  Decimal
"{0,9:D2}" -f 0x123 -->
    291

#"E" or "e"  Exponential (scientific)    
"{0,9:E2}" -f 123.456  -->
1.23E+002

#"N" or "n"  Number  
"{0,9:N2}" -f 123.456  -->
   123.46
 
#"P" or "p"  Percent
"{0,9:P2}" -f 123.456  -->
12,345.60%

#"R" or "r"  Round-trip  Note: Recommended for the BigInteger type only. For Double types, use "G17"; for Single types, use "G9".
"{0,9:N2}" -f 123.456  -->
   123.46
  
#"X" or "x"  Hexadecimal 
"{0,9:X2}" -f 123  -->
       7B
 ```
