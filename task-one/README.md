#### Creating Static Library
```gcc -c calculator.c```  
```ar rcs libcalculator.a calculator.o```

#### Creating Dynamic Shared Library
```gcc -shared -fPIC -o libcalculator.so calculator.c```

#### Link *test.c* With Static Library & Generate *testOne*
```gcc -o testOne test.c -L. -lcalculator -static```

#### Link *test.c* With Dynamic Shared Library & Generate *testTwo*
```gcc -o testTwo test.c -L. -lcalculator```

#### Test For ELF Files
```file calculator.c test.c libcalculator.a libcalculator.so testOne testTwo```

#### Using *readelf* Command - Displaying Header Info
```readelf -h libcalculator.so``` 
```readelf -h testOne``` 
```readelf -h testTwo```

#### Make *testOne* Readable
```objdump -d testOne > testOne_disassembly.txt```