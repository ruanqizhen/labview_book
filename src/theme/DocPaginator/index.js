import React from 'react';
import DocPaginator from '@theme-original/DocPaginator';
import Giscus from '@giscus/react';

export default function DocPaginatorWrapper(props) {
  let giscus_term = location.pathname.split('/').pop();
  if (giscus_term == '') giscus_term = 'index';
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
        theme='light'
        lang='en'
        loading="lazy"
      />
    </>
  );
}
