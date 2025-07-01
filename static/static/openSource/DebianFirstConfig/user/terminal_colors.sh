# Colori:
# Il terminale può supportare differenti palette di colore
# - ANSI 8 bit (solo 7 colori di testo e 7 di sfondo, piu formattazione grassetto, corsivo, ...)
# - 256 colori
# - 16 milioni di colori (truecolor)
#
# Verifica il tuo terminale stampando la variabile $TERM, echo $TERM restituisce 
# solo uno dei seguenti valori (che identifica il numero di colori):
# - xterm
# - xterm-256color
# - xterm-truecolor
#
# Il reset allo stile predefinito è reset_code="\033[0m"; Per applicare uno stile dei colori si usa:
# text_colored="\033[${background_code};${foreground_code};${formatting_code};${formatting_code}m  TEXT  ${reset_code}"

# Assegnazione dei colori e dei loro codici
foregroundAnsiColors=(
    [30]="black"
    [31]="red"
    [32]="green"
    [33]="yellow"
    [34]="blue"
    [35]="magenta"
    [36]="cyan"
    [37]="white"
)

backgroundAnsiColors=(
    [40]="black"
    [41]="red"
    [42]="green"
    [43]="yellow"
    [44]="blue"
    [45]="magenta"
    [46]="cyan"
    [47]="white"
)

formatting=(
    [0]="reset"             # Reset
    [1]="bold"              # Grassetto
    [2]="dim"               # Attenuato (dimmed)
    [3]="italic"            # Corsivo
    [4]="underline"         # Sottolineato
    [5]="blink"             # Lampeggiante (non si applica)
    [6]="hidden"            # Nascosto, ma si applica Inverse
    [7]="inverse"           # Inverso
    [8]="hidden"            # Nascosto
    [9]="strikethrough"     # Soprascritto
)

colors256=(
    [0]="black"
    [1]="red"
    [2]="green"
    [3]="yellow"
    [4]="blue"
    [5]="magenta"
    [6]="cyan"
    [7]="white"
    [8]="dark gray"
    [9]="light red"
    [10]="light green"
    [11]="light yellow"
    [12]="light blue"
    [13]="light magenta"
    [14]="light cyan"
    [15]="bright white"
    [16]="dark black"
    [17]="dark red"
    [18]="dark green"
    [19]="dark yellow"
    [20]="dark blue"
    [21]="dark magenta"
    [22]="dark cyan"
    [23]="dark white"
    [24]="gray"
    [25]="brick red"
    [26]="olive green"
    [27]="mustard yellow"
    [28]="navy blue"
    [29]="dark magenta"
    [30]="dark cyan"
    [31]="dirty white"
    [32]="lime green"
    [33]="lemon yellow"
    [34]="mint green"
    [35]="light magenta"
    [36]="light cyan"
    [37]="pure white"
    [38]="light gray"
    [39]="coral red"
    [40]="forest green"
    [41]="gold yellow"
    [42]="meadow green"
    [43]="light mustard yellow"
    [44]="sky blue"
    [45]="vivid magenta"
    [46]="vivid cyan"
    [47]="pearl white"
    [48]="slate gray"
    [49]="bordeaux red"
    [50]="moss green"
    [51]="saffron yellow"
    [52]="turquoise blue"
    [53]="vivid light magenta"
    [54]="vivid light cyan"
    [55]="antique white"
    [56]="smoke gray"
    [57]="rust red"
    [58]="light olive green"
    [59]="light lemon yellow"
    [60]="night blue"
    [61]="vivid light magenta"
    [62]="vivid light cyan"
    [63]="ice white"
    [64]="dark brick red"
    [65]="dark forest green"
    [66]="dark mustard yellow"
    [67]="dark sky blue"
    [68]="dark vivid magenta"
    [69]="dark vivid cyan"
    [70]="cream white"
    [71]="dark light gray"
    [72]="light rust red"
    [73]="light mint green"
    [74]="light gold yellow"
    [75]="light turquoise blue"
    [76]="light vivid magenta"
    [77]="light vivid cyan"
    [78]="ivory white"
    [79]="light smoke gray"
    [80]="light bordeaux red"
    [81]="light moss green"
    [82]="dark light lemon yellow"
    [83]="light night blue"
    [84]="dark light magenta"
    [85]="dark light cyan"
    [86]="light ice white"
    [87]="light slate gray"
    [88]="light coral red"
    [89]="light lime green"
    [90]="vivid lemon yellow"
    [91]="vivid sky blue"
    [92]="dark vivid magenta"
    [93]="dark vivid cyan"
    [94]="light pearl white"
    [95]="vivid light gray"
    [96]="dark salmon"
    [97]="light salmon"
    [98]="peach"
    [99]="light peach"
    [100]="light coral"
    [101]="light sea green"
    [102]="medium sea green"
    [103]="sea green"
    [104]="dark sea green"
    [105]="light slate blue"
    [106]="slate blue"
    [107]="medium slate blue"
    [108]="dark slate blue"
    [109]="light steel blue"
    [110]="steel blue"
    [111]="royal blue"
    [112]="medium blue"
    [113]="dark blue"
    [114]="light purple"
    [115]="medium purple"
    [116]="dark purple"
    [117]="indigo"
    [118]="violet"
    [119]="plum"
    [120]="orchid"
    [121]="medium orchid"
    [122]="dark orchid"
    [123]="pale violet red"
    [124]="light pink"
    [125]="hot pink"
    [126]="deep pink"
    [127]="light goldenrod yellow"
    [128]="goldenrod"
    [129]="dark goldenrod"
    [130]="light khaki"
    [131]="khaki"
    [132]="olive drab"
    [133]="yellow green"
    [134]="dark olive green"
    [135]="medium aquamarine"
    [136]="dark cyan"
    [137]="light cyan"
    [138]="light turquoise"
    [139]="medium turquoise"
    [140]="dark turquoise"
    [141]="light sea green"
    [142]="medium sea green"
    [143]="sea green"
    [144]="dark sea green"
    [145]="light slate gray"
    [146]="slate gray"
    [147]="dark slate gray"
    [148]="light steel blue"
    [149]="steel blue"
    [150]="royal blue"
    [151]="medium blue"
    [152]="dark blue"
    [153]="light purple"
    [154]="medium purple"
    [155]="dark purple"
    [156]="indigo"
    [157]="violet"
    [158]="plum"
    [159]="orchid"
    [160]="medium orchid"
    [161]="dark orchid"
    [162]="pale violet red"
    [163]="light pink"
    [164]="hot pink"
    [165]="deep pink"
    [166]="light goldenrod yellow"
    [167]="goldenrod"
    [168]="dark goldenrod"
    [169]="light khaki"
    [170]="khaki"
    [171]="olive drab"
    [172]="yellow green"
    [173]="dark olive green"
    [174]="medium aquamarine"
    [175]="dark cyan"
    [176]="light cyan"
    [177]="light turquoise"
    [178]="medium turquoise"
    [179]="dark turquoise"
    [180]="light sea green"
    [181]="medium sea green"
    [182]="sea green"
    [183]="dark sea green"
    [184]="light slate gray"
    [185]="slate gray"
    [186]="dark slate gray"
    [187]="light steel blue"
    [188]="steel blue"
    [189]="royal blue"
    [190]="medium blue"
    [191]="dark blue"
    [192]="light purple"
    [193]="medium purple"
    [194]="dark purple"
    [195]="indigo"
    [196]="violet"
    [197]="plum"
    [198]="orchid"
    [199]="medium orchid"
    [200]="dark orchid"
    [201]="pale violet red"
    [202]="light pink"
    [203]="hot pink"
    [204]="deep pink"
    [205]="light goldenrod yellow"
    [206]="goldenrod"
    [207]="dark goldenrod"
    [208]="light khaki"
    [209]="khaki"
    [210]="olive drab"
    [211]="yellow green"
    [212]="dark olive green"
    [213]="medium aquamarine"
    [214]="dark cyan"
    [215]="light cyan"
    [216]="light turquoise"
    [217]="medium turquoise"
    [218]="dark turquoise"
    [219]="light sea green"
    [220]="medium sea green"
    [221]="sea green"
    [222]="dark sea green"
    [223]="light slate gray"
    [224]="slate gray"
    [225]="dark slate gray"
    [226]="light steel blue"
    [227]="steel blue"
    [228]="royal blue"
    [229]="medium blue"
    [230]="dark blue"
    [231]="light purple"
    [232]="medium purple"
    [233]="dark purple"
    [234]="indigo"
    [235]="violet"
    [236]="plum"
    [237]="orchid"
    [238]="medium orchid"
    [239]="dark orchid"
    [240]="pale violet red"
    [241]="light pink"
    [242]="hot pink"
    [243]="deep pink"
    [244]="light goldenrod yellow"
    [245]="goldenrod"
    [246]="dark goldenrod"
    [247]="light khaki"
    [248]="khaki"
    [249]="olive drab"
    [250]="yellow green"
    [251]="dark olive green"
    [252]="medium aquamarine"
    [253]="dark cyan"
    [254]="light cyan"
    [255]="light turquoise"
)

## Run: get256ColorIndexByName "blue"
get256ColorIndexByName() {
    local color_name="$1"
    for i in "${!colors256[@]}"; do
        if [[ "${colors256[$i]}" == "$color_name" ]]; then
            echo "$i"
            return 0 # OK
        fi
    done
    echo "0"
    return 2 # error
}

## Run: get256ColorNameByIndex "123"
get256ColorNameByIndex() {
    local code=$1

    # Controlla se il valore è vuoto
    if [[ -z "${colors256[$code]}" ]]; then
        echo ""
        return 2 # error
    fi
    
    echo "${colors256[$code]}"
    return 0
}

## Run: getAnsiForegroundColorIndexByName "blue"
getAnsiForegroundColorIndexByName() {
    local color_name="$1"
    for i in "${!foregroundAnsiColors[@]}"; do
        if [[ "${foregroundAnsiColors[$i]}" == "$color_name" ]]; then
            echo "$i"
            return 0 # OK
        fi
    done
    echo "0"
    return 2 # error
}

## Run: getAnsiForegroundColorNameByIndex "123"
getAnsiForegroundColorNameByIndex() {
    local code=$1

    # Controlla se il valore è vuoto
    if [[ -z "${foregroundAnsiColors[$code]}" ]]; then
        echo ""
        return 2 # error
    fi
    
    echo "${foregroundAnsiColors[$code]}"
    return 0
}


## Run: getAnsiBackgroundColorIndexByName "blue"
getAnsiBackgroundColorIndexByName() {
    local color_name="$1"
    for i in "${!backgroundAnsiColors[@]}"; do
        if [[ "${backgroundAnsiColors[$i]}" == "$color_name" ]]; then
            echo "$i"
            return 0 # OK
        fi
    done
    echo "0"
    return 2 # error
}

## Run: getAnsiBackgroundColorNameByIndex "123"
getAnsiBackgroundColorNameByIndex() {
    local code=$1

    # Controlla se il valore è vuoto
    if [[ -z "${backgroundAnsiColors[$code]}" ]]; then
        echo ""
        return 2 # error
    fi
    
    echo "${backgroundAnsiColors[$code]}"
    return 0
}