namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            mutable ans = 0;
            for (i in 0..Length(qs)-1)
            {
                let re = M(qs[i]);
                if (re == One)
                {
                    set ans = 1;
                }
            }
            return ans;
        }
    }
}