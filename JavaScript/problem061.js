const altPow = (base, exponent) => {
  if (exponent === 0) {
    return 1
  } else if (exponent % 2 === 0) {
    return Math.pow(altPow(base, exponent / 2), 2)
  } else {
    return base * altPow(base, exponent - 1)
  }
};

module.exports = { altPow }
