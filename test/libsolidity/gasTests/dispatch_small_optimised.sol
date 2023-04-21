contract Small {
    uint public a;
    uint[] public b;
    function f1(uint x) public returns (uint) { a = x; b[uint8(msg.data[0])] = x; }
    fallback () external payable {}
}
// ====
// optimize: true
// optimize-runs: 2
// ----
// creation:
//   codeDepositCost: 69000
//   executionCost: 117
//   totalCost: 69117
// external:
//   fallback: 118
//   a(): 2305
//   b(uint256): infinite
//   f1(uint256): infinite
