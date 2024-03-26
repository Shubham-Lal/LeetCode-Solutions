/**
 * @param {Function} fn
 * @return {Object}
 */
Array.prototype.groupBy = function (fn) {
    const group = {};

    this.forEach(element => {
        const key = fn(element);

        if (group.hasOwnProperty(key)) group[key].push(element);
        else group[key] = [element];
    })

    return group;
};

/**
 * [1,2,3].groupBy(String) // {"1":[1],"2":[2],"3":[3]}
 */