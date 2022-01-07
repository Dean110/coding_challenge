module.exports = function(eleventyConfig) {
    let markdownIt = require("markdown-it");
    let markdownItAttrs = require("markdown-it-attrs");

    let options = {
      html: true,
      breaks: true,
      linkify: true
    };
    let markdownLib = markdownIt(options).use(markdownItAttrs);
    eleventyConfig.setLibrary("md", markdownLib);
  };