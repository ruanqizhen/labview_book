// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

import { themes as prismThemes } from 'prism-react-renderer';
import math from 'remark-math';
import katex from 'rehype-katex';
import { baiduPlugin, googleSiteName } from './src/plugin/analytics.js';

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'The LabVIEW Journey',
  tagline: 'LabVIEW, 编程, 经验, 教程, 开源, 免费, 电子书, 下载, PDF, 示例, Tutorial',
  url: 'https://lv.qizhen.xyz',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  markdown: {
    hooks: {
      onBrokenMarkdownLinks: 'warn',
    },
  },
  favicon: 'img/favicon.ico',
  projectName: 'labview_book', // Usually your repo name.
  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
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
          customCss: './src/css/custom.css',
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
      image: 'img/logo.png', // Social card
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
        { name: 'keywords', content: 'LabVIEW, 编程, 经验, 教程, 开源, 免费, 电子书, 下载, PDF, 示例, Tutorial' },
        { name: 'description', content: '《我和LabVIEW:一个NI工程师的十年编程经验》，是一本广受好评的的畅销书。介绍了各种控件，节点，结构的使用方法和编程模式，调试优化等高级功能。' },
        { name: 'author', content: 'Qizhen Ruan 阮奇桢' },
      ],
    }
  ),
  plugins: [
    baiduPlugin,
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
      href: 'https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/katex.min.css',
      type: 'text/css',
      integrity: 'sha384-nBc9qEs9vNVL9srPRMFp8iTruzB+W9EKPc9mS4tTlb0IWW2mP2zT1h7H6mXl/G/D',
      crossorigin: 'anonymous',
    },
  ],
  i18n: {
    defaultLocale: 'zh-cn',
    locales: ['zh-cn', 'en'],
  },
};

export default config;
