
# System Profile and Linux Documentation

## 1. System Specifications

| Component | Specification |
|---|---|
| CPU Model | 13th Gen Intel Core i5-13420H |
| CPU Cores | 6 |
| Logical CPUs | 12 |
| Total RAM | 7.6 GiB |
| Used RAM | 517 MiB |
| Available RAM | 7.1 GiB |
| Storage | To be updated |
| Operating System | Linux (Ubuntu on WSL2) |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

## 2. Binary Number Representation

### A. Decimal 75 to Binary

Divide the decimal number by 2 and record each remainder.

| Division | Quotient | Remainder |
|---|---:|---:|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top:

**75 = (1001011)₂**

### B. Binary 110101 to Decimal

Using the positional weight method:

110101₂

= 1 × 2⁵ + 1 × 2⁴ + 0 × 2³ + 1 × 2² + 0 × 2¹ + 1 × 2⁰

= 32 + 16 + 0 + 4 + 0 + 1

**= 53₁₀**

### C. Why Computers Use Binary

Computers use binary internally because electronic circuits can easily represent two stable states, ON (1) and OFF (0), making data processing and storage reliable.
