classdef EvenFibonacciNumbersTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = EvenFibonacciNumbers;
        end
    end
    methods(Test)
        function testSumReturnAnIntegerCorrespondingTheSumOfAllEvenNumbers(testCase)
            testCase.verifyEqual(testCase.sut.sum(10), 10);
        end
        
        function testSumWithFourMillionLimitTerm(testCase)
            testCase.verifyEqual(testCase.sut.sum(4000000), 4613732);
        end
    end
end

