var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it should add numbers correctly', function(){
    calculator.previousTotal = 1
    calculator.add(4)
    assert.equal(calculator.runningTotal, 5)
  })

  it('it should subtract numbers correctly', function() {
    calculator.previousTotal = 7
    calculator.subtract(4)
    assert.equal(calculator.runningTotal, 3)
  })

  it('it should multiply numbers correctly', function() {
    calculator.previousTotal = 3
    calculator.multiply(5)
    assert.equal(calculator.runningTotal, 15)
  })

  it('it should divide numbers correctly', function() {
    calculator.previousTotal = 21
    calculator.divide(7)
    assert.equal(calculator.runningTotal, 3)
  })

  it('it concatenate multiple number button clicks', function() {
    calculator.runningTotal = 5
    calculator.newTotal = false
    calculator.numberClick(5)
    assert.equal(calculator.runningTotal, 55)
  })

  it('it should be able to chain multiple operations together', function() {
    calculator.previousTotal = 5
    calculator.add(3)
    calculator.operatorClick('=')
    calculator.add(1)
    assert.equal(calculator.runningTotal, 9)

  })

  it('it should clear the running total without affecting the calculation', function() {
    calculator.previousTotal = 5
    calculator.numberClick(5)
    calculator.clearClick()
    assert.equal(calculator.previousTotal, 5)
  })

});
