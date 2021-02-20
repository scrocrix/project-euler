classdef SumSquareDifferenceTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = SumSquareDifference;
        end
    end
    methods(Test)
        function testCalculateSimulatesExampleBehavior(testCase)
            testCase.verifyEqual(testCase.sut.calculate(100), 25164150);
        end
    end
end

