" setting tmuxline

let g:tmuxline_theme = 'iceberg'
let g:tmuxline_preset = {
        \'a'       : '#S',
        \'b'       : ['#I:#P','#F'],
        \'c'       : ['#(whoami)', '#h'],
        \'win'     : ['#I','#W'],
        \'cwin'    : ['#I','#W'],
        \'y'       : '%H:%M %d-%b-%y',
        \'options' : {'status-justify' : 'right'}}

