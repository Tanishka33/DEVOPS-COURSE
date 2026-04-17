<!-- Write the IP address 135.1.1.25 mask 255.255. 248.0 in CIDR notation --> 

Given:
IP Address: 135.1.1.25
Subnet Mask: 255.255.248.0

Formulas Used 

1) CIDR notation format
Formula:
CIDR = IP Address / Number of network bits

Example:
135.1.1.25 / ?

2) Convert subnet mask to binary
Formula:
Each octet of subnet mask → 8-bit binary

Example:
Subnet Mask = 255.255.248.0

Binary:
255 → 11111111  
255 → 11111111  
248 → 11111000  
0   → 00000000  

Binary subnet mask:
11111111.11111111.11111000.00000000

3) Count network bits (1s)
Formula:
Number of network bits = Count of all `1`s in subnet mask

Example:
- First octet (255) = 8 bits
- Second octet (255) = 8 bits
- Third octet (248) = 5 bits
- Fourth octet (0) = 0 bits

Total network bits:
8 + 8 + 5 = 21

4) Write CIDR notation
Formula:
CIDR = IP Address / Network bits

Example:
135.1.1.25 / 21