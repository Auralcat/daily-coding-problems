const rand7 = () => Math.floor(Math.random() * 7) + 1
const rand5 = (acc = rand7()) => {
  if (acc > 5) {
    return rand5()
  }
  return acc
}

module.exports = {rand5}
