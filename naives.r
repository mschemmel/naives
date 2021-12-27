reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
pattern = "AGT"

naive <- function(ref, patt, thresh){
    occ <- vector()
    for(i in 0:(nchar(ref) - nchar(patt) + 1)){
        match = TRUE
        mismatch = 0
        for(j in 1:nchar(patt)){
             if(substr(ref, i+j, i+j) != substr(patt, j, j)){
                 mismatch = mismatch + 1
                 if(mismatch > thresh){
                     match = FALSE
                     break
                 }
             }
        }
        if(match){
            occ <- c(occ, i)
        }
    }
    return(occ)
}
print(paste(naive(reference, pattern, 1),collapse = ","))

