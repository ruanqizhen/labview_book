import React from 'react';
import DocPaginator from '@theme-original/DocPaginator';
import Giscus from '@giscus/react';
import { useLocation } from 'react-router-dom';
import {useColorMode} from '@docusaurus/theme-common';

export default function DocPaginatorWrapper(props) {
  let location = useLocation();
  const segments = location.pathname.split('/').filter(Boolean);
  let giscus_term = segments[segments.length - 1];
  if (!giscus_term || giscus_term === 'en') {
    giscus_term = 'index';
  }
  const {colorMode} = useColorMode();
  
  return (
    <>
      <DocPaginator {...props} />
      <br />
      <Giscus
        repo='ruanqizhen/labview_book'
        repoId='R_kgDOGYjRCQ'
        category='Announcements'
        categoryId='DIC_kwDOGYjRCc4B_4dq'
        mapping='specific'
        term={giscus_term}
        reactionsEnabled='1'
        emitMetadata='1'
        inputPosition='top'
        theme={colorMode}
        lang='en'
        loading="lazy"
      />
    </>
  );
}