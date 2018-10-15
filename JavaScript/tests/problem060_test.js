// Sample test file
const chai = require('chai')
const problem060 = require('../problem060')

const assert = chai.assert
const canPartition = problem060.canPartition;

describe('canPartition function', function(){
  it("should return true for [1, 2, 3, 2, 3, 4, 7]", function() {
    assert.isTrue(canPartition([1, 2, 3, 2, 3, 4, 7]))
  });

  // Arithmetic progression
  it("should return true for [1, 2, 3, 4, 5, 6, 7, 8]", function() {
    assert.isTrue(canPartition([1, 2, 3, 4, 5, 6, 7, 8]))
  })

  // The number of combinations in Pascal's Triangle
  it("should return true for [1, 5, 10, 10, 5, 1]", function() {
    assert.isTrue(canPartition([1, 5, 10, 10, 5, 1]))
  })

  it("should return false for [15, 5, 10, 20, 35]", function() {
    assert.isFalse(canPartition([15, 5, 10, 20, 35]))
  })
});
