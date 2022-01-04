/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

const path = require('path');

module.exports = function(context, options) {
  return {
    name: 'docusaurus-plugin-image-zoom',

    getClientModules(options) {
      return [path.resolve(__dirname, './zoom')];
    },
  };
};
