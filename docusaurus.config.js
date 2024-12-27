// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

import {themes as prismThemes} from 'prism-react-renderer';
const math = require('remark-math');
const katex = require('rehype-katex');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'The LabVIEW Journey',
  tagline: 'LabVIEW, 编程, 经验, 教程, 开源, 免费, 电子书, 下载, PDF, 示例, Tutorial',
  url: 'https://lv.qizhen.xyz',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  projectName: 'labview_book', // Usually your repo name.
  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
		  sidebarCollapsed: false,
          // Please change this to your repo.
          editUrl: 'https://github.com/ruanqizhen/labview_book/edit/main/',
		  routeBasePath: '/',
		  path: './docs',
		  remarkPlugins: [math],
		  rehypePlugins: [katex],
          editLocalizedFiles: true,
        },
		blog: false,
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
		sitemap: {
          changefreq: 'weekly',
          priority: 0.5,
        },
        gtag: {
          trackingID: 'G-9EFRGQK2N0',
        },
      }),
    ],
  ],

  themeConfig: (
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    {
	  docs: {
        sidebar: {
          hideable: true,
        },
      },
      colorMode: {
        defaultMode: 'light',
        disableSwitch: false,
        respectPrefersColorScheme: true,
      },
      navbar: {
		hideOnScroll: true,
        title: 'LabVIEW 编程经验',
        logo: {
          alt: 'LabVIEW',
          src: 'img/logo.png',
		  href: '/'
        },
        items: [
          {
            type: 'localeDropdown',
            position: 'right',
          },
        ],
      },
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
	  zoomSelector: '.markdown img',
	  metadata: [
		{name: 'keywords', content: 'LabVIEW, 编程, 经验, 教程, 开源, 免费, 电子书, 下载, PDF, 示例, Tutorial'},
		{name: 'description', content: '《我和LabVIEW:一个NI工程师的十年编程经验》，是一本广受好评的的畅销书。介绍了各种控件，节点，结构的使用方法和编程模式，调试优化等高级功能。'},
		{name: 'author', content: 'Qizhen Ruan 阮奇桢'},
	  ],
    }
  ),
  plugins: [
    function baiduPlugin(context, options) {
      return {
        name: 'baidu-plugin',
        injectHtmlTags({content}) {
		  return {
			postBodyTags: [`
               <script type="text/javascript" src="https://hm.baidu.com/hm.js?b3f6e7ec9302021671173e3fad14f4cd"></script>
               <script type="text/javascript">
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
    },
    function googleSiteName(context, options) {
      return {
        name: 'googleSiteName-plugin',
        injectHtmlTags({content}) {
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
    },
	[
      require.resolve("@easyops-cn/docusaurus-search-local"),
      {
        hashed: true,
        language: ["en", "zh"],
		docsRouteBasePath: "/",
		highlightSearchTermsOnTargetPage: true,
      },
    ],
    "./src/plugin/plugin-image-zoom",
  ],
  stylesheets: [
    {
      href: 'https://cdn.jsdelivr.net/npm/katex@0.13.24/dist/katex.min.css',
      type: 'text/css',
      integrity:
        'sha384-odtC+0UGzzFL/6PNoE8rX/SPcQDXBJ+uRepguP4QkPCm2LBxH3FA3y+fKSiJ+AmM',
      crossorigin: 'anonymous',
    },
  ],
  i18n: {
    defaultLocale: 'zh-cn',
    locales: ['zh-cn', 'en'],
    localeConfigs: {
      en: {
        label: 'English',
        direction: 'ltr',
      },
      'zh-cn':{
        label: '中文',
        direction: 'ltr',
      },
    },
  },
};

module.exports = config;
