"use strict";
/*
Complete the method so that it formats the words into a single comma separated value. The last word should be separated by the word 'and' instead of a comma.
The method takes in an array of strings and returns a single formatted string.

Note:

Empty string values should be ignored.
Empty arrays or null/nil/None values being passed into the method should result in an empty string being returned.
Example: (Input --> output)

['ninja', 'samurai', 'ronin'] --> "ninja, samurai and ronin"
['ninja', '', 'ronin'] --> "ninja and ronin"
[] -->""
*/

function formatWords(words) {
  if (words === null || words.length === 0) return "";
  const wordsArr = words.filter(function (x) {
    return x !== "";
  });
  if (wordsArr.length === 0) {
    return "";
  } else if (wordsArr.length === 1) {
    return wordsArr.join();
  } else {
    const arr1 = wordsArr.slice(0, -1);
    const arr2 = wordsArr.pop();
    return `${arr1.join(", ")} and ${arr2}`;
  }
}

// formatWords(["one", "two", "three", "four"]); // 'one, two, three and four'
// formatWords(["one"]); // 'one'
// formatWords(["one", "", "three"]); // 'one and three'
// formatWords(["", "", "three"]); // 'three'
// formatWords(["one", "two", ""]); // 'one and two'
// formatWords([]); //''
formatWords(null); // ''
formatWords([""]); // ''
