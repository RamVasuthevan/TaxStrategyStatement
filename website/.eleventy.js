import { parse } from "csv-parse/sync";

export default function (eleventyConfig) {
  // Add CSV data format support
  eleventyConfig.addDataExtension("csv", (contents) => {
    const records = parse(contents, {
      columns: true, // Treat the first row as column headers
      skip_empty_lines: true, // Ignore empty lines
    });
    return records;
  });

  return {
    dir: {
      input: ".", // Source folder
      includes: "layouts",
      data: "_data",
      output: "_site", // Output folder
    },
  };
}
