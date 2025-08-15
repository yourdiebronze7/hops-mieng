// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoffeeSupplyChain {
    struct Coffee {
        string origin;
        string farmer;
        uint256 harvestDate;
    }

    mapping(uint256 => Coffee) public coffees;
    uint256 public coffeeCount;

    function addCoffee(string memory _origin, string memory _farmer, uint256 _harvestDate) public {
        coffeeCount++;
        coffees[coffeeCount] = Coffee(_origin, _farmer, _harvestDate);
    }

    function getCoffee(uint256 _coffeeId) public view returns (string memory, string memory, uint256) {
        Coffee memory coffee = coffees[_coffeeId];
        return (coffee.origin, coffee.farmer, coffee.harvestDate);
    }
}