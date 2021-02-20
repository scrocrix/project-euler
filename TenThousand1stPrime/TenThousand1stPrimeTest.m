classdef TenThousand1stPrimeTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = TenThousand1stPrime;
        end
    end
    methods(Test)
        function testCalculateSimulatesExampleBehavior(testCase)
            testCase.verifyEqual(testCase.sut.calculate(10001), 11);
        end
    end
end

