var DnaTranscriber = function() {

};

DnaTranscriber.prototype.toRna = function(input) {
  var dnaLetters = {
      G: 'C',
      C: 'G',
      T: 'A',
      A: 'U'
    };

  return input.split('').map(function(index) {
    return dnaLetters[index]
  }).join('');
};
module.exports = DnaTranscriber;
