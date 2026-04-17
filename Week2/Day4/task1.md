<!-- Subnet the Class C IP Address 205.11.2.0 so that you have 30 subnets. What is the subnet mask for the maximum number of hosts? How many hosts can each subnet have? What is the IP address of host 3 on subnet 2?  -->

Given:
IP Address: 205.11.2.0
Network Class: Class C
Default Subnet Mask: 255.255.255.0
Requirement: 30 subnets

1) A Class C network uses a default subnet mask of 255.255.255.0, which means:
First 24 bits are network bits
Last 8 bits are host bits

2) Determine the number of bits required for subnetting
2^n ≥ Number of required subnets

so.. 2^4 = 16  (not sufficient)
2^5 = 32  (sufficient)

Therefore, 5 bits to borrow.

3) Original /24
after borrow 5 bits ===> /24 + /5 = /29

New subnet mask = 29
255.255.255.11111000 = 255.255.255.248

4) Calculate the number of hosts per subnet
Total bits = 8 
borrowed = 5

Remaining Host bits = 8 - 5 = 3bits

Host per subnet = 2^h - 2
-> 2^3 - 2 = 6 

Hence we can have 6 usable host.

5) Determine subnet increment = 256 − last octet of subnet mask
256 − 248 = 8
Hence , each subnet increases by 8 in last octet .

7) Subnets
Subnet Number	Network Address
Subnet 1	    205.11.2.0
Subnet 2	    205.11.2.8
Subnet 3	    205.11.2.16
Subnet 4	    205.11.2.24
...	            ...

8) Determine the IP address of Host 3 on Subnet 2
Subnet 2 = 205.11.2.8

Usable host addresses start immediately after the network address:

Host Number	    IP Address
Host 1	        205.11.2.9
Host 2	        205.11.2.10
Host 3	        205.11.2.11


Final Answers:
Subnet Mask: 255.255.255.248 (/29)
Number of Hosts per Subnet: 6
IP Address of Host 3 on Subnet 2: 205.11.2.11


Formulas Used 

1) Calculate required subnet bits
Formula:
2^n ≥ Required Subnets

Example:
Required subnets = 30  
2^5 = 32 ≥ 30  

Subnet bits needed = 5

2) Calculate new CIDR
Formula:
New CIDR = Original CIDR + Subnet bits

Example:
Original CIDR = /24  
Borrowed bits = 5  

New CIDR = /29

3) Calculate subnet mask
Formula:
Subnet Mask (last octet) = 256 − Subnet Increment

Example:
Subnet Increment = 2^(Host bits)  
Host bits = 8 − 5 = 3  

Increment = 2^3 = 8  
Subnet mask = 256 − 8 = 248

Final Subnet Mask = 255.255.255.248


4) Calculate number of usable hosts per subnet
Formula:
Usable Hosts = 2^h − 2

Example:
h = 3  
Usable Hosts = 2^3 − 2 = 6


5) Calculate subnet increment
Formula:
Subnet Increment = 256 − Last octet of subnet mask
Example:
256 − 248 = 8

Each subnet increases by 8 in the last octet.

6) Calculate nth host IP in a subnet
Formula:
Host IP = Subnet Network Address + Host Number

Example:
Subnet 2 Network = 205.11.2.8  
Host number = 3  

Host 3 IP = 205.11.2.8 + 3  
Host 3 IP = 205.11.2.11


