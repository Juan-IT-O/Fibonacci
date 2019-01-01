package com.infoshareacademy.jbusters;

import java.util.ArrayList;
import java.util.List;

public class Fibonacci {

    private List<Integer> fibonacciResultList;


    public Fibonacci() {
        fibonacciResultList = new ArrayList<>();
    }

    public List<Integer> getFibonacciSequece(int n){

            if(n >= 0)
                fibonacciResultList.add(0);
            if(n >= 1)
                fibonacciResultList.add(1);
            if(n>=2) {
                int prev=0;
                int act=1;
                int next;
                for(int i=0; i<=n-2;i++){
                    next=prev+act;
                    fibonacciResultList.add(next);
                    prev=act;
                    act=next;
                }
            }
            return fibonacciResultList;
    }

    public Integer getfibonacciElement (int n){
        List<Integer> tempList = getFibonacciSequece(n);
        return tempList.get(tempList.size()-1);
    }


}
