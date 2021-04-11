# Hybrid-partial-product-approximate-recursive-multipliers
Implementation of a hybrid partial product based approximate recursive multiplier , as seen in this <a href="https://www.researchgate.net/publication/343446618_Hybrid_Partial_Product-based_High-Performance_Approximate_Recursive_Multipliers">paper</a>.

Three 8x8 multiplier designs have been implemented using this concept - Ax8-1 , Ax8-2 , Ax8-3 . These multipliers make use of four 4x4 approximate multipliers , which in turn use novel half adder and full adder designs. These adders are used to simplify the classic wallace multiplier with the help of probabalistic analysis to reduce the number of partial product rows with minimum error.
