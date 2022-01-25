"use strict";
/*
Write an algorithm that takes an array and moves all of the zeros to the end,
preserving the order of the other elements.

moveZeros([false,1,0,1,2,0,1,3,"a"]) // returns[false,1,1,2,1,3,"a",0,0] */

var moveZeros = function (arr) {
  const zeros = [],
    everythingElse = [];
  for (const elem of arr) {
    elem === 0 ? zeros.push(elem) : everythingElse.push(elem);
  }
  return [...everythingElse, ...zeros];
};

moveZeros([1, 2, 0, 1, 0, 1, 0, 3, 0, 1]);
moveZeros([1, 2, 1, 1, 3, 1, 0, 0, 0, 0]);
