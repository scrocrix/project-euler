classdef LargestPalindromeProductTest < matlab.unittest.TestCase
    properties
        sut
    end
    methods (TestClassSetup)
        function import(testCase)
            testCase.sut = LargestPalindromeProduct;
        end
    end
    methods(Test)
        function testCalculateReturnLargestPalindrome(testCase)
            testCase.verifyEqual(testCase.sut.calculate(), 906609);
        end
    end
end

