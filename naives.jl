#!/usr/bin/env julia

function naive(ref, pattern, threshold)
  occ = []
  for i in 0:(length(ref) - length(pattern) + 1)
    mismatch = 0
    match = true
    for j in 1:length(pattern)      
      if ref[i+j] != pattern[j]
        mismatch += 1
        if mismatch > threshold
          match = false
          break
        end
      end
    end
    if match
      append!(occ,i)
    end
  end 
  return occ
end

reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
pattern = "AGT"
println(join(naive(reference, pattern, 1), ","))
