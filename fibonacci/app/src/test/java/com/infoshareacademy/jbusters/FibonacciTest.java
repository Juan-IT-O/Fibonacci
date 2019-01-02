package com.infoshareacademy.jbusters;

import org.junit.Assert;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;

public class FibonacciTest {

    @Test
    public void getFibonacciSequenceTest(){

        //given
        Fibonacci fibonacci = new Fibonacci();
        int i = 5;

        List<Integer> expected = new ArrayList<>(Arrays.asList(0,1,1,2,3,5));
        //then
        Assert.assertEquals(expected,fibonacci.getFibonacciSequence(i));

    }
    @Test
    public void getFibonacciSequenceZeroTest(){

        //given
        Fibonacci fibonacci = new Fibonacci();
        int i = 0;

        List<Integer> expected = new ArrayList<>(Arrays.asList(0));
        //then
        Assert.assertEquals(expected,fibonacci.getFibonacciSequence(i));

    }
    @Test
    public void getFibonacciSequenceOneTest(){

        //given
        Fibonacci fibonacci = new Fibonacci();
        int i = 1;

        List<Integer> expected = new ArrayList<>(Arrays.asList(0,1));
        //then
        Assert.assertEquals(expected,fibonacci.getFibonacciSequence(i));

    }
    @Test
    public void getFibonacciSequenceTwoTest(){

        //given
        Fibonacci fibonacci = new Fibonacci();
        int i = 2;

        List<Integer> expected = new ArrayList<>(Arrays.asList(0,1,1));
        //then
        Assert.assertEquals(expected,fibonacci.getFibonacciSequence(i));

    }
    @Test
    public void getFibonacciSequenceThreeTest(){

        //given
        Fibonacci fibonacci = new Fibonacci();
        int i = 3;

        List<Integer> expected = new ArrayList<>(Arrays.asList(0,1,1,2));
        //then
        Assert.assertEquals(expected,fibonacci.getFibonacciSequence(i));

    }

}