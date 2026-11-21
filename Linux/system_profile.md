# Linux System Profile

## System Specifications

| Component | Specification |
|---|---|
| Processor | AMD Ryzen 7 7445HS w/ Radeon 740M Graphics |
| Physical CPU Cores | 6 |
| Logical CPUs | 12 |
| RAM (Total) | 5.4 GiB |
| RAM (Available) | 4.9 GiB |
| Primary Storage | 1 TB virtual disk |
| Storage Type | Virtual Disk (physical SSD/HDD type not exposed by WSL) |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |
| Architecture | x86_64 |
| Environment | Windows Subsystem for Linux 2 (WSL2) |

## Binary Number Representation

### 1. Decimal 75 to Binary

Repeatedly divide the decimal number by 2 and record each remainder.

| Division | Quotient | Remainder |
|---|---:|---:|
| 75 / 2 | 37 | 1 |
| 37 / 2 | 18 | 1 |
| 18 / 2 | 9 | 0 |
| 9 / 2 | 4 | 1 |
| 4 / 2 | 2 | 0 |
| 2 / 2 | 1 | 0 |
| 1 / 2 | 0 | 1 |

Reading the remainders from bottom to top:

**75 (decimal) = 1001011 (binary)**

### 2. Binary 110101 to Decimal

Using positional weights:

(1 × 2^5) + (1 × 2^4) + (0 × 2^3) + (1 × 2^2) + (0 × 2^1) + (1 × 2^0)

= 32 + 16 + 0 + 4 + 0 + 1

**110101 (binary) = 53 (decimal)**

### 3. Why Computers Use Binary

Computers use binary because electronic circuits can reliably represent two distinct states, ON (1) and OFF (0), making data storage and processing simpler and more dependable.
