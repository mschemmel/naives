#!/usr/bin/env python3

def naive(ref, pattern, threshold):
  occ = []
  for i in range(len(ref) - len(pattern) + 1):
    mismatch = 0
    match = True
    for j in range(len(pattern)):
      if ref[i+j] != pattern[j]:
        mismatch += 1
        if mismatch > threshold:
          match = False
          break
    if match:
      occ.append(i)
  return occ


reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
pattern = "AGT"
print(naive(reference, pattern, 1))





