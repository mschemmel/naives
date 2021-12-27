# naives
A collection of scripts of different programming languages addressing the naive matching problem inspired by [this](https://github.com/geohot/mergesorts).

<p align="center">
<img src="principle.png">
</p>

Background:
---
Probably the most fundamental task in bioinformatics analyses consists in the challenge of solving the problem of string matching.
Various approaches have been [developed](https://en.wikipedia.org/wiki/String-searching_algorithm) and are widely used in modern bioinformatic tools.
Since the amount of genomic data is continuously increasing, the demand for more and more efficient and powerful algorithms is growing. 
<br>
One of the most basic string matching algorithm is the naive matching algorithm, where a sliding window of length k is compared to the pattern of interest.

Goal:
---
Implementation of the naive matching problem in as many languages as possibly (primary) to compare them by efficiency and speed (secondary).

Input:
---
| | Value |
| ---- | ----------- |
|Sequence: | AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT |
|Pattern: | AGT |
|Allowed mismatches: | 1 |

Output:
---
Comma separated values of all occurences of pattern 'AGT' with one mismatch.
```
0,23,25,39
```
