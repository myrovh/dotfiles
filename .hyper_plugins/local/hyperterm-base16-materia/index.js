/* Base16 Materia Dark colorscheme by Defman21
 * HyperTerm template by Bram de Haan (https://github.com/atelierbram/base16-hyperterm)
 */
const backgroundColor = '#263238';
const foregroundColor = '#C9CCD3';
const borderColor = '#263238'; // same as background-color, might as well say "transparent"
const cursorColor = '#FFCC00'; // yellow, opacity set in .termCSS: see under

const colors = [
  backgroundColor,
  '#EC5F67', // red
  '#8BD649', // green
  '#FFCC00', // yellow
  '#89DDFF', // blue
  '#82AAFF', // violet
  '#80CBC4', // cyan
  '#D5DBE5', // light gray
  '#37474F', // medium gray
  '#EC5F67', // red
  '#37474F', // green
  '#707880', // yellow
  '#C9CCD3', // blue
  '#82AAFF', // violet
  '#80CBC4', // cyan
  '#FFFFFF', // white
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
         color: #C9CCD3 !important;
         letter-spacing: .025em;
       }
       .tabs_list {
         border: 0;
       }
       .tab_tab {
         background-color: #263238 !important;
         letter-spacing: .025em;
         border-bottom: 3px solid #37474F !important;
       }
       .tab_tab:hover {
         border-bottom-color: transparent !important;
       }
       .tab_tab:before {
         border: 0;
       }
       .tab_tab.tab_active {
         border-color: transparent !important;
         color: #D5DBE5 !important;
       }
       .tab_text {
         background-color:rgba(0,0,0,.33);
         border-left: 3px solid #263238 !important;
         transition: all .3s;
       }
       .tab_tab:hover .tab_text {
         background-color:rgba(0,0,0,0);
         border-left: 3px solid #263238 !important;
       }
       .tab_active .tab_text {
         background-color: transparent;
       }
    `
  });
};

