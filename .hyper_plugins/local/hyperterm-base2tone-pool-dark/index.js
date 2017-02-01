/* Base2Tone Base2Tone-Pool Dark colorscheme by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)
 * HyperTerm template by Bram de Haan (https://github.com/atelierbram/base16-hyperterm) based on HyperTerm-DuoTone-Dark by Wilson Miner (https://github.com/wilsonminer/hyperterm-duotone-dark)
 */

const backgroundColor = '#2a2433';
const foregroundColor = '#9a90a7';
const borderColor = 'rgba(0, 0, 0, 0)';
const cursorColor = '#ed655e'; // opacity set in .termCSS: see under

const colors = [
  backgroundColor, //  black
  '#aa75f5', //  red
  '#f87972', //  green
  '#ffb6b3', //  yellow
  '#b886fd', //  blue
  '#f87972', //  magenta
  '#c7a0fe', //  cyan
  '#9a90a7', //  white
  '#635775', //  lightBlack
  '#fc8983', //  lightRed
  '#372f42', //  lightGreen
  '#574b68', //  lightYellow
  '#706383', //  lightBlue
  '#e4d2fe', //  lightMagenta
  '#f36f68', //  lightCyan
  '#f3ebff'  //  lightWhite
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
        background-color: #2a2433 !important;
        border: none !important;
      }
      .tab_tab {
        color: #706383 !important; 
        letter-spacing: .5px;
      }
      .tab_tab.tab_active {
        font-weight: 500;
        letter-spacing: 1px;
        background-color: #2a2433;
        border-color: rgba(0, 0, 0, 0) !important;
        box-shadow: inset 0 1px 1px rgba(255, 255, 255, 0.06);
      }
      .tab_tab.tab_active::before {
        border-bottom-color: #2a2433;
      }
      .tabs_title,
      .tab_icon,
      .tab_tab.tab_active {
        color: #9a90a7 !important;
      }
      .tab_tab.tab_hasActivity {
        color: #b886fd !important;
      }
      .tab_text {
        background-color: rgba(0,0,0,.175);
        border-left: 3px solid #2a2433 !important;
        box-shadow: inset 0px -1px 2px rgba(0,0,0,.075);
        transition: all .3s;
      }
      .tab_tab:hover .tab_text {
        border-left: 3px solid #2a2433 !important;
      }
      .tab_tab:hover .tab_text,
      .tab_active .tab_text {
        background-color: transparent;
        box-shadow: none;
      }
      `
  })
}

