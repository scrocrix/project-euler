classdef LargestPrimeFactorTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = LargestPrimeFactor;
        end
    end
    methods(Test)
        function testCalculateReturnTheLargestPrimeNumber(testCase)
            testCase.verifyEqual(testCase.sut.calculate(13195), 29);
            testCase.verifyEqual(testCase.sut.calculate(600851475143), 6857);
        end
    end
end