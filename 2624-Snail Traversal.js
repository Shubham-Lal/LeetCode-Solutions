/**
 * @param {number} rowsCount
 * @param {number} colsCount
 * @return {Array<Array<number>>}
 */
Array.prototype.snail = function (rowsCount, colsCount) {
    if (rowsCount * colsCount != this.length) return [];
    let res = Array(rowsCount).fill().map(() => []);
    for (let i = 0; i < colsCount; i++)
        for (let j = 0; j < rowsCount; j++) {
            let index = (i & 1) ? rowsCount - j - 1 : j,
                item = this[i * rowsCount + j];
            res[index].push(item);
        }
    return res;
}

/**
 * const arr = [1,2,3,4];
 * arr.snail(1,4); // [[1,2,3,4]]
 */