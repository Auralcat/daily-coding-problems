// Sample test file
const chai = require('chai')
const assert = chai.assert
const problem071 = require('../problem071');

// Helper
const getNumberSpace = (size) => {
  let out = []
  for (let i = 0; i < size; i++) {
    out.push(problem071.rand5())
  }
  return out
};

describe('Problem 071', function(){
  it("should have an equal chance of picking all numbers", function() {
    numberSpace = getNumberSpace(5000)
    uniqueNums = [...new Set(numberSpace)]
    frequency = uniqueNums.map((n) => numberSpace.filter((x) => n == x).length)
    limit = 1000

    assert.isTrue(frequency.every((n) => n <= limit * 1.05 && n >= limit * 0.95))
  });
});
