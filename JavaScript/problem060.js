const canPartition = (arr) => {
  if (arr.reduce((x, y) => x + y) % 2 === 0) {
    let partitionSum = arr.reduce((x, y) => x + y) / 2
    let out = []

    let buf = partitionSum
    let numberSpace = [...new Set(arr)]

    while (buf > 0) {
      // Get the max element of the unique array.
      let current = Math.max(...numberSpace)
      out.push(current)
      numberSpace.splice(numberSpace.indexOf(current), 1)

      if (arr.includes(buf - current)) {
        return [...out, buf - current].reduce((x, y) => x + y) == partitionSum
      }

      buf -= current
    }

    return false
  }

  return false
}

module.exports = {
  canPartition
};
