function findTheKey(message, code)
{
    let arr = (message).split``.map(v=>v.charCodeAt()-96)
    for (let i=0;i<arr.length;i++){
      arr[i]=code[i%code.length]-arr[i]
    }
    
    return findSeq(arr)*1
}
function findSeq(arr){
    let sequence = arr.join``;
    let result = '';
    function isSequence(sequence, substring) {
    for (let i = 0; i < sequence.length; i += 1) {
        if (sequence[i] !== substring[i % substring.length]) {
            return false;
        }
    }
    return true;
}
    for (let i = 0; i < sequence.length; i += 1) {
        result += sequence[i];
        if (isSequence(sequence, result)) {
            return result;
        }
    }
  return result
}
