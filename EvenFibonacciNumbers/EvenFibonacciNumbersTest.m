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
        function testGenerateFibonacciSequenceReturnCorrectSequenceOfNumbers(testCase)
            testCase.sut = testCase.sut.generateFibonacciSequence(10);

            % we assert that there is one item in the sequence %
            testCase.verifyEqual(length(testCase.sut.sequence), 10);

            testCase.verifyEqual(testCase.sut.sequence(1), 1);
            testCase.verifyEqual(testCase.sut.sequence(2), 2);
            testCase.verifyEqual(testCase.sut.sequence(3), 3);
            testCase.verifyEqual(testCase.sut.sequence(4), 5);
            testCase.verifyEqual(testCase.sut.sequence(5), 8);
            testCase.verifyEqual(testCase.sut.sequence(6), 13);
            testCase.verifyEqual(testCase.sut.sequence(7), 21);
            testCase.verifyEqual(testCase.sut.sequence(8), 34);
            testCase.verifyEqual(testCase.sut.sequence(9), 55);
            testCase.verifyEqual(testCase.sut.sequence(10), 89);
        end
    end
end

