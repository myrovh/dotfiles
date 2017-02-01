/* Base16 Isotope Dark colorscheme by Jan T. Sott
 * HyperTerm template by Bram de Haan (https://github.com/atelierbram/base16-hyperterm)
 */
const backgroundColor = '#000000';
const foregroundColor = '#c0c0c0';
const borderColor = '#000000'; // same as background-color, might as well say "transparent"
const cursorColor = '#ff0099'; // yellow, opacity set in .termCSS: see under

const colors = [
  backgroundColor,
  '#ff0000', // red
  '#33ff00', // green
  '#ff0099', // yellow
  '#0066ff', // blue
  '#cc00ff', // violet
  '#00ffff', // cyan
  '#e0e0e0', // light gray
  '#606060', // medium gray
  '#ff0000', // red
  '#606060', // green
  '#808080', // yellow
  '#c0c0c0', // blue
  '#cc00ff', // violet
  '#00ffff', // cyan
  '#ffffff', // white
  foregroundColor
]

exports.decorateConfig = (config) => {
  return Object.assign({}, config, {
    backgroundColor,
    foregroundColor,
    borderColor,
    cursorColor,
    colors,
    termCSS: `
      ${config.termCSS || ''}
      .cursor-node[focus="true"] {
         opacity: .5 !important;
       }
    `,
    css: `
      ${config.css || ''}
      * {
         font-weight: 400;
       }
       .tabs_title,
       .tab_tab {
         color: #c0c0c0 !important;
         letter-spacing: .025em;
       }
       .tabs_list {
         border: 0;
       }
       .tab_tab {
         background-color: #000000 !important;
         letter-spacing: .025em;
         border-bottom: 3px solid #606060 !important;
       }
       .tab_tab:hover {
         border-bottom-color: transparent !important;
       }
       .tab_tab:before {
         border: 0;
       }
       .tab_tab.tab_active {
         border-color: transparent !important;
         color: #e0e0e0 !important;
       }
       .tab_text {
         background-color:rgba(0,0,0,.33);
         border-left: 3px solid #000000 !important;
         transition: all .3s;
       }
       .tab_tab:hover .tab_text {
         background-color:rgba(0,0,0,0);
         border-left: 3px solid #000000 !important;
       }
       .tab_active .tab_text {
         background-color: transparent;
       }
    `
  });
};

