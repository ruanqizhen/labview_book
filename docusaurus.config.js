// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'LabVIEW 编程经验',
  tagline: 'LabVIEW, 编程, 经验, 教程, 开源, 免费, 电子书, 下载, PDF, 示例',
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
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
		sitemap: {
          changefreq: 'weekly',
          priority: 0.5,
          trailingSlash: false,
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
	  hideableSidebar: true,
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
            href: 'https://github.com/ruanqizhen/labview_book',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }
  ),


};

module.exports = config;
