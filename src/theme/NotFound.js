import React from 'react';
import NotFound from '@theme-original/NotFound';
import BrowserOnly from '@docusaurus/BrowserOnly';

export default function NotFoundWrapper(props) {
  return (
    <>
      <NotFound {...props} />
	  <BrowserOnly>
          {() => { 
            setTimeout(() => { window.location.href = '/'}, 1000)
          }}
      </BrowserOnly>
    </>
  );
}
