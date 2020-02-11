import Cocoa

func minimumBribes(q: [Int]) -> Void {

    var A = q
    var n:Int = q.count
    var cnt:Int = 0
    //    for (int i = n - 1; i >= 0; i--)
    for i in (0...(n-1)).reversed()
    {
        if(A[i] != (i + 1))
        {
            if(((i - 1) >= 0) && A[i - 1] == (i + 1))
            {
                cnt+=1;
                A.swapAt(i, i-1);
            }
            else if(((i - 2) >= 0) && A[i - 2] == (i + 1))
            {
                cnt += 2;
                A[i - 2] = A[i - 1];
                A[i - 1] = A[i];
                A[i] = i + 1;
            }
            else
            {
                print("Too chaotic");
                return;
            }
        }
    }
    print("\(cnt)");
    return;

}
