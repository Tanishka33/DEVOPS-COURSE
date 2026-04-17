<!-- Address Block: 192.168.0.0/16
Subnetting need to be implemented for assigning network to 5 different projects -->

Given:
Address Block: 192.168.0.0/16

1) The network 192.168.0.0/16 is a CIDR-based private IP block.
-> /16 means 16 bits are used for the network portion
-> Remaining 16 bits are available for hosts

Subnetmask = 255.255.0.0

2) Number of required subnets = 5 
-> 2^n ≥ Number of required subnets
-> 3 bits must be borrowed.

3) Determine the new CIDR
-> Original network prefix: /16
-> borrowed +3
-> New network prefix: /19

Subnet mask for /19 : 255.255.224.0

4) To calculate number of hosts per subnet:
Total bits = 32
host bit remaining : 32-19 = 13 bits

Hosts formula : 2^h - 2 

2^13 - 2 = 8192 - 2 = 8190.

Each subnet can have 8190 hosts.

6) Subnet increment: 
256 - 224 = 32
Therefore increment will be of 32.

7) Assign subnet to project 
Project	    Assigned Subnet
Project 1	192.168.0.0/19
Project 2	192.168.32.0/19
Project 3	192.168.64.0/19
Project 4	192.168.96.0/19
Project 5	192.168.128.0/19


Formula Used 

1) CIDR
Formula:
CIDR /n → n bits for network, (32 − n) bits for hosts

Example:
192.168.0.0/16  
Network bits = 16  
Host bits = 32 − 16 = 16  

2) Calculate required subnet bits
Formula:
2^n ≥ Number of required subnets

Example:
Required subnets = 5  

2^2 = 4 (not sufficient)  
2^3 = 8 (sufficient)  

Subnet bits borrowed = 3

3) Calculate new CIDR
Formula:
New CIDR = Original CIDR + Borrowed subnet bits

Example:
Original CIDR = /16  
Borrowed bits = 3  
New CIDR = /19

4) Calculate number of hosts per subnet
Formula:
Usable Hosts = 2^h − 2
Where:
h = Remaining host bits

Example:
Host bits = 32 − 19 = 13  
Usable hosts = 2^13 − 2  
Usable hosts = 8190

5) Calculate subnet increment
Formula:
Subnet Increment = 256 − Last octet of subnet mask

Example:
256 − 224 = 32
Each subnet increases by 32 in the third octet.
