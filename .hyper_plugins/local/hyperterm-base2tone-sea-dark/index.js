/* Base2Tone Base2Tone-Sea Dark colorscheme by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)
 * HyperTerm template by Bram de Haan (https://github.com/atelierbram/base16-hyperterm) based on HyperTerm-DuoTone-Dark by Wilson Miner (https://github.com/wilsonminer/hyperterm-duotone-dark)
 */

const backgroundColor = '#1d262f';
const foregroundColor = '#a1aab5';
const borderColor = 'rgba(0, 0, 0, 0)';
const cursorColor = '#0aa370'; // opacity set in .termCSS: see under

const colors = [
  backgroundColor, //  black
  '#34659d', //  red
  '#0fc78a', //  green
  '#47ebb4', //  yellow
  '#57718e', //  blue
  '#0fc78a', //  magenta
  '#6e9bcf', //  cyan
  '#a1aab5', //  white
  '#4a5f78', //  lightBlack
  '#14e19d', //  lightRed
  '#27323f', //  lightGreen
  '#405368', //  lightYellow
  '#738191', //  lightBlue
  '#afd4fe', //  lightMagenta
  '#0db57d', //  lightCyan
  '#ebf4ff'  //  lightWhite
]

exports.decorateConfig = config => {
  return Object.assign({}, config, {
    backgroundColor,
    foregroundColor,
    cursorColor: cursorColor,
    borderColor: borderColor,
    colors: colors,
    termCSS: `
      ${config.termCSS || ''}
      .cursor-node[focus="true"] {
         opacity: .33 !important;
       }
    `,
    css: `
      ${config.css || ''}
      .header_header {
        top: 0;
        right: 0;
        left: 0;
      }
      .tabs_list {
        background-color: #1d262f !important;
        border: none !important;
      }
      .tab_tab {
        color: #738191 !important; 
        letter-spacing: .5px;
      }
      .tab_tab.tab_active {
        font-weight: 500;
        letter-spacing: 1px;
        background-color: #1d262f;
        border-color: rgba(0, 0, 0, 0) !important;
        box-shadow: inset 0 1px 1px rgba(255, 255, 255, 0.06);
      }
      .tab_tab.tab_active::before {
        border-bottom-color: #1d262f;
      }
      .tabs_title,
      .tab_icon,
      .tab_tab.tab_active {
        color: #a1aab5 !important;
      }
      .tab_tab.tab_hasActivity {
        color: #57718e !important;
      }
      .tab_text {
        background-color: rgba(0,0,0,.175);
        border-left: 3px solid #1d262f !important;
        box-shadow: inset 0px -1px 2px rgba(0,0,0,.075);
        transition: all .3s;
      }
      .tab_tab:hover .tab_text {
        border-left: 3px solid #1d262f !important;
      }
      .tab_tab:hover .tab_text,
      .tab_active .tab_text {
        background-color: transparent;
        box-shadow: none;
      }
      `
  })
}

