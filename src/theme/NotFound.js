import React, { useEffect } from 'react';
import NotFound from '@theme-original/NotFound';
import { useHistory, useLocation } from '@docusaurus/router';

export default function NotFoundWrapper(props) {
  const history = useHistory();
  const location = useLocation();

  useEffect(() => {
    const isEnglish = location.pathname.startsWith('/en');
    const targetPath = isEnglish ? '/en/' : '/';

    const timer = setTimeout(() => {
      history.push(targetPath);
    }, 1000);

    return () => clearTimeout(timer);
  }, [history, location.pathname]);

  return <NotFound {...props} />;
}

