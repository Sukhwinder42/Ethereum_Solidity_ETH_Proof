// SPDX-License-Identifier:MIT
pragma solidity >=0.8.7;

contract LoopStressTest {
    uint public simplecal;
    uint public complexcal;

    // Function to perform a simple stress test by summing up numbers from 0 to 999
    function simpleStress() external {
        uint sum = 0;
        for (uint i = 0; i < 1000; i++) {
            sum += i;
        }
        simplecal = sum;
    }

    // Function to perform a complex stress test by calculating the factorial of 100
    function complexStress() external {
        uint multi = 1;
        for (uint j = 1; j <= 100; j++) {
            multi *= j;
        }
        complexcal = multi;
    }
}
