classdef SmallestMultipleTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = SmallestMultiple;
        end
    end
    methods(Test)
        function testCalculateSimulatesExampleBehavior(testCase)
            testCase.verifyEqual(testCase.sut.calculate(), 232792560);
        end
    end
end

