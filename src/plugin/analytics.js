/**
 * Analytics and SEO plugins for Docusaurus
 */

export function baiduPlugin(context, options) {
    return {
        name: 'baidu-plugin',
        injectHtmlTags({ content }) {
            return {
                postBodyTags: [`
          <script async type="text/javascript" src="https://hm.baidu.com/hm.js?b3f6e7ec9302021671173e3fad14f4cd"></script>
          <script async type="text/javascript">
            (function(c,l,a,r,i,t,y){
               c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
               t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
               y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
            })(window, document, "clarity", "script", "jxmn1qjx88");
          </script>
        `],
            };
        },
    };
}

export function googleSiteName(context, options) {
    return {
        name: 'googleSiteName-plugin',
        injectHtmlTags({ content }) {
            return {
                headTags: [`
          <script type="application/ld+json">
          {
            "@context" : "https://schema.org",
            "@type" : "WebSite",
            "name" : "LabVIEW Tutorial",
            "url" : "https://lv.qizhen.xyz"
          }
          </script>
        `],
            };
        },
    };
}
