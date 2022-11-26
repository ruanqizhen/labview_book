import React from 'react';
import DocPaginator from '@theme-original/DocPaginator';
import Giscus from '@giscus/react';

export default function DocPaginatorWrapper(props) {
  return (
    <>
      <DocPaginator {...props} />
	  <br />
	  <Giscus
		repo='ruanqizhen/labview_book'
		repoId='R_kgDOGYjRCQ'
		category='Announcements'
		categoryId='DIC_kwDOGYjRCc4B_4dq'
		mapping='pathname'
		reactionsEnabled='1'
		emitMetadata='1'
		inputPosition='top'
		theme='light'
		lang='zh-CN'
	  />
    </>
  );
}
