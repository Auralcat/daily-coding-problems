const chai = require('chai')
const assert = chai.assert
const problem063 = require('../problem063');
const canFormWord = problem063.canFormWord;

// Implement kind of a factory function
function getTestMatrix() {
    return [['F', 'A', 'C', 'I'],
            ['O', 'B', 'Q', 'P'],
            ['A', 'N', 'O', 'B'],
            ['M', 'A', 'S', 'S']]
}

describe('Problem 63', function(){
  it("canFormWord finds horizontal matches", function() {
    assert.isTrue(canFormWord(getTestMatrix(), "mass"))
  });

  it("canFormWord finds vertical matches", function() {
    assert.isTrue(canFormWord(getTestMatrix(), "foam"))
  });

});
