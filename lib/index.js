var xxhash = require('../build/xxhash.js');

var xxh32 = xxhash.cwrap('XXH32', 'number', [ 'string', 'number', 'number' ]);

module.exports = {
	hash: function(buffer, seed) {
		return xxh32(buffer.toString(), buffer.length, seed) >>> 0;
	}
};