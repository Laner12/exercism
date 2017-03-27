function Hamming() {

}

Hamming.prototype.compute = function ( input1, input2 ) {
  var count = 0;

  if( input1.length !== input2.length ) {
    throw new Error('DNA strands must be of equal length.');
  }

  for( var i = 0; i < input1.length; i++ ) {
    if( input1.charAt(i) !== input2.charAt(i) ) {
      count++;
    }
  }
  return count;
};

module.exports = Hamming;
