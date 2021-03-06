context("test-groupby")

test_that("groupby works", {
  variantsToRepeats.bed <- read.table(text=
"chr21  9719758 9729320 variant1   chr21  9719768 9721892 ALR/Alpha   1004  +
chr21  9719758 9729320 variant1   chr21  9721905 9725582 ALR/Alpha   1010  +
chr21  9719758 9729320 variant1   chr21  9725582 9725977 L1PA3       3288  +
chr21  9719758 9729320 variant1   chr21  9726021 9729309 ALR/Alpha   1051  +
chr21  9729310 9757478 variant2   chr21  9729320 9729809 L1PA3       3897  -
chr21  9729310 9757478 variant2   chr21  9729809 9730866 L1P1        8367  +
chr21  9729310 9757478 variant2   chr21  9730866 9734026 ALR/Alpha   1036  -
chr21  9729310 9757478 variant2   chr21  9734037 9757471 ALR/Alpha   1182  -
chr21  9795588 9796685 variant3   chr21  9795589 9795713 (GAATG)n    308   +
chr21  9795588 9796685 variant3   chr21  9795736 9795894 (GAATG)n    683   +
chr21  9795588 9796685 variant3   chr21  9795911 9796007 (GAATG)n    345   +
chr21  9795588 9796685 variant3   chr21  9796028 9796187 (GAATG)n    756   +
chr21  9795588 9796685 variant3   chr21  9796202 9796615 (GAATG)n    891   +
chr21  9795588 9796685 variant3   chr21  9796637 9796824 (GAATG)n    621   +")
  results <- read.table(text=
"chr21 9719758 9729320 6353
chr21 9729310 9757478 14482
chr21 9795588 9796685 3604")
  expect_equal(bedtoolsr::bt.groupby(variantsToRepeats.bed, g="1,2,3", c=9), results)
})
