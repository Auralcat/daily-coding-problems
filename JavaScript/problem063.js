const canFormWord = (matrix, word) => {
  let horizontalWords = matrix.map( (row) => row.reduce((x, y) => x + y))
  let verticalWords = []

  for (let i = 0; i < matrix.length; i++) {
    let currentWord = matrix.map((row) => row[i]).reduce((x, y) => x + y)
    verticalWords.push(currentWord)
  }

  return [...horizontalWords, ...verticalWords].some((item) => item == word.toUpperCase())
}
console.log(canFormWord(testMatrix, "foam"));

module.exports = {
  canFormWord
};
