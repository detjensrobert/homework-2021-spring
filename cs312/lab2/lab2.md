# CS 312 Lab 2

## Robert Detjens

---

### 1. What are three things you find interesting or odd about this computer?

The power supply is not ATX standard. The motherboard power connector is not the ATX 20/24pin. The CPU power connector
does appear to be standard 4-pin EPS12V.

The drive cage assembly swings up for ease of access. That's pretty cool! The other enterprise SFF systems I've worked
with (mostly from Dell) have fixed drive cages.

The optional multi-card reader is cool, although I imagine only the SD card slot would get much use.

### 2. What are the possible make and model of video card configurations that this computer came pre-installed with?

Nvidia NVS 310/315/510, Quadro 410/K600; AMD FirePro V9300; Intel HD iGPU.

### 3. What is the wattage of the PSU?

240W.

### 4. What can you tell us about the possible RAM configuration for this computer?

Up to 4 sticks of 32G DDR3-1600, ECC or non-ECC.

### 5. How many and what kind of front and rear I/O ports are available, excluding USB (I’ll ask about that in a minute)?

Front: mic & headphone jacks.

Rear: 3 DP (for IGP), PS/2 mouse & keyboard, audio line in & line out, RJ45 Ethernet, RS232 serial.

### 6. How many actual USB jacks does this system have?

10 total (4 front, 6 rear). There are 4 additional unused USB headers.

### 7. How many 3.5” drives could easily be installed in this computer, explain?

3 drives, according to the datasheet. 2 dedicated 3.5in bays, with a 3rd drive in the 5.25in bay.

### 8. Only CPUs of a certain type will fit into the socket on the MOBO. What kind of socket is on this MOBO? Hint: you may have to look this one up based on the processors that could ship with the computer.

This motherboard accepts Intel 4th-gen Haswell CPUs with the LGA1150 socket.

### 9. How many SATA ports are there and what levels of RAID is supported with the integrated SATA controller?

5 SATA ports. RAID0/1 is supported with up to 2 HDDs and 1 SSD.

### 10. What kind of video jacks are built into the motherboard?

3 DisplayPort 1.2 ports from the IGP.

### 11. There is a temperature probe in an air intake or exhaust, does this bother you? Why or why not? There aren’t right or wrong answers to this, but we do want to see some logical, coherent thought on this.

Not at all, although it may or may not be useful. On-die thermal measurements on the CPU/GPU/etc will produce more
representative measurements of how hot the system is running than measuring the exhaust temperature.
