module.exports = function (context, options) {
  return {
    name: "docusaurus-baidu-analytics-plugin",
    injectHtmlTags() {
      return {
        headTags: [
          {
            tagName: "script",
            innerHTML: `
              var _hmt = _hmt || [];
              (function() {
                  var hm = document.createElement("script");
                  hm.src = "https://s4.cnzz.com/z_stat.php?id=1280609189&web_id=1280609189";
                  hm.defer = true;
                  var s = document.getElementsByTagName("script")[0]; 
                  s.parentNode.insertBefore(hm, s);
              })();
            `,
          },
        ],
      };
    },
  };
};
