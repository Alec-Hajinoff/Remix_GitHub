// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating our version

contract SimpleStorage {
    int256 public favoriteNumber;
    function store(int256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    //0xd9145CCE52D386f254917e481eB44e9943F39138
}
