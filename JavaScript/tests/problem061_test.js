const chai = require('chai')
const assert = chai.assert
const problem061 = require('../problem061');
const canFormWord = problem061.canFormWord;

// Implement kind of a factory function
function getTestMatrix() {
    return [['F', 'A', 'C', 'I'],
            ['O', 'B', 'Q', 'P'],
            ['A', 'N', 'O', 'B'],
            ['M', 'A', 'S', 'S']]
}

describe('Problem 61', function(){
  it("calculates the correct result", function() {
    assert.isTrue(problem061.altPow(2, 10) === 1024)
    assert.isTrue(problem061.altPow(3, 4) === 81)
  });
});
