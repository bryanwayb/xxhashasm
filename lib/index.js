var xxhash = require('../build/xxhash.js');

module.exports = {
	XXH32: function(buffer, seed) {
		return xxhash._XXH32(xxhash.allocate(xxhash.intArrayFromString(buffer.toString()), 'i8', xxhash.ALLOC_STACK), seed);
	},
	XXH64: function(buffer, seed) {
		return xxhash._XXH64(xxhash.allocate(xxhash.intArrayFromString(buffer.toString()), 'i8', xxhash.ALLOC_STACK), seed);
	}
};