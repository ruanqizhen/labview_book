/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import siteConfig from '@generated/docusaurus.config';
import mediumZoom from 'medium-zoom'

const { themeConfig } = siteConfig;

export default (function () {

  if ( typeof window === 'undefined' ) {
    return null;
  }

  const selector = (themeConfig&&themeConfig.zoomSelector) || '.markdown img';

  setTimeout(() => {
    mediumZoom(selector);
  }, 1000);


  return {
    onRouteUpdate({ location }) {

      if( location && location.hash && location.hash.length ) {
        return;
      }

      setTimeout(() => {
        mediumZoom(selector);
      }, 1000);

    },
  };
})();
