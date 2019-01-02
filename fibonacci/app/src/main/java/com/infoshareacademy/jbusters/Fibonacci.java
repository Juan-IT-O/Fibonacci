package com.infoshareacademy.jbusters;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Fibonacci {

    private List<BigInteger> fibonacciResultList;


    public Fibonacci() {
        fibonacciResultList = new ArrayList<>();
    }

    public List<BigInteger> getFibonacciSequence(int n){

            if(n >= 0)
                fibonacciResultList.add(BigInteger.ZERO);
            if(n >= 1)
                fibonacciResultList.add(BigInteger.ONE);
            if(n>=2) {
                BigInteger prev=BigInteger.ZERO;
                BigInteger act=BigInteger.ONE;
                BigInteger next;
                for(int i=0; i<=n-2;i++){
                    next=prev.add(act);
                    fibonacciResultList.add(next);
                    prev=act;
                    act=next;
                }
            }
            return fibonacciResultList;
    }

    public BigInteger getfibonacciElement (int n){
        List<BigInteger> tempList = getFibonacciSequence(n);
        return tempList.get(tempList.size()-1);
    }


}
