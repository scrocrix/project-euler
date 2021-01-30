classdef MultiplesOfThreeAndFiveTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = MultiplesOfThreeAndFive;
        end
    end
    methods(Test)
        function testCalculateSimulatesExampleBehavior(testCase)
            testCase.verifyEqual(testCase.sut.calculate(10), 23);
        end
        function testCalculateReturnTheSumForAThousand(testCase)
            testCase.verifyEqual(testCase.sut.calculate(1000), 233168);
        end
    end
end