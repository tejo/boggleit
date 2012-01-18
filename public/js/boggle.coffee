Array::randomize = -> @sort -> 0.5 - Math.random()

class Boggle
  constructor: ->
    @dices = [
      ['A', 'Z', 'F', 'S', 'Qu', 'B'],
      ['G', 'C', 'S', 'V', 'P', 'A'],
      ['H', 'I', 'S', 'E', 'R', 'N'],
      ['A', 'I', 'O', 'B', 'M', 'C'],
      ['T', 'I', 'V', 'E', 'N', 'G'],
      ['M', 'O', 'V', 'D', 'I', 'T'],
      ['V', 'N', 'D', 'Z', 'A', 'E'],
      ['O', 'A', 'A', 'I', 'E', 'T'],
      ['F', 'R', 'I', 'P', 'A', 'G'],
      ['M', 'L', 'R', 'C', 'O', 'I'],
      ['O', 'N', 'F', 'E', 'B', 'L'],
      ['L', 'O', 'C', 'I', 'D', 'M'],
      ['T', 'B', 'R', 'L', 'I', 'A'],
      ['C', 'F', 'A', 'R', 'O', 'I'],
      ['N', 'U', 'E', 'O', 'C', 'T'],
      ['L', 'E', 'P', 'U', 'S', 'T'],
      ['N', 'O', 'D', 'E', 'S', 'T'],
      ['A', 'I', 'O', 'S', 'M', 'R'],
      ['T', 'G', 'C', 'A', 'P', 'I'],
      ['L', 'A', 'R', 'E', 'S', 'C'],
      ['A', 'B', 'O', 'O', 'Qu', 'M'],
      ['G', 'U', 'E', 'O', 'N', 'L'],
      ['C', 'D', 'P', 'M', 'A', 'E'],
      ['R', 'O', 'E', 'L', 'U', 'I'],
      ['H', 'I', 'F', 'E', 'I', 'E'],
    ]
    @result  = []

  roll: ->
    res =[]
    for roll in @dices.randomize()
      dice = roll.randomize()
      res.push dice[0]
    for i in [0..4]
      @result.push res[(i*5)..((5*(i+1))-1)]
    @result


window.draw =  ()->
  b = new Boggle
  c = document.getElementById "container"
  c.innerHTML = ''
  for row in b.roll()
    d = document.createElement 'div'
    for i in row
      dd = document.createElement 'div'
      dd.innerHTML = i
      d.appendChild dd
    c.appendChild d


window.draw()

document.getElementById('button').firstChild.onclick = ()-> window.draw()





phantom.exit() if phantom?
