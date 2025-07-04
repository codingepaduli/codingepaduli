# Colori e formattazione:
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
# ANSI escape sequences are a standard for in-band signaling to control 
# cursor location, color, font styling, and other options on video text
# terminals and terminal emulators
#
# Una sequenza "Ansi escape", detta anche CSI (Control Sequence Introducer), nella 
# tabella ASCII è chiamata ESC, che ha valore \x1b[, \e, oppure \033 serve ad
# indicare al terminale di eseguire un comando per muovere il cursore, 
# applicare uno stile o utilizzare un colore
# 
# Dopo una sequenza "Ansi escape" si può invocare una funzione. 
# La sintassi 0;1;34m la si può leggere come una chiamata alla 
# funzione m(0,1,34), il nome della funzione è indicato dopo i 
# parametri, che si separano tra loro con un punto e virgola. 
# La sequenza \033A è semplicemente A().
#
# Le funzioni disponibili per spostare il cursore sono:
# A(n)  Cursor Up - Move cursor up by n
# B(n)  Cursor Down - Move cursor down by n
# C(n)  Cursor Forward - Move cursor forward by n
# D(n)  Cursor Back - Move cursor back by n
# E(n)  Cursor Next Line - Move cursor to the beginning of the line n lines down
# F(n)  Cursor Previous Line - Move cursor to the beginning of the line n lines up
# G(n)  Cursor Horizontal Absolute - Move cursor to the the column n within the current row
# H(n,m) Cursor Position - Move cursor to row n, column m, counting from the top left corner
# J(n)  Erase in Display - Clear part of the screen. 0, 1, 2, and 3 have various specific functions
# K(n)  Erase in Line - Clear part of the line. 0, 1, and 2 have various specific functions
# S(n)  Scroll Up Scroll window up by n lines
# T(n)  Scroll Down Scroll window down by n lines
# s()  Save Cursor Position - Save current cursor position for use with u
# u()  Restore Cursor Position -  Set cursor back to position last saved by s
#
# Quindi \x1b[1;3H invoca H(1,3) e sposta il cursore alla riga 1, colonna 3
#
# La funzione m() serve invece ad impostare i colori e la formattazione carattere, 
# che nel terminale è detta SGR (Select Graphics Rendition).
#
# I valori che può utilizzare sono:
#
# 0             Reset: turn off all attributes
# 1             Bold (or bright, it’s up to the terminal and the user config to some extent)
# 3             Italic
# 4             Underline
# 30–37         Set text colour from the basic colour palette of 0–7
# 38;5;n        Set text colour to index n in a 256-colour palette (e.g. \x1b[38;5;34m)
# 38;2;r;g;b    Set text colour to an RGB value (e.g. \x1b[38;2;255;255;0m)
# 40–47         Set background colour
# 48;5;n        Set background colour to index n in a 256-colour palette
# 48;2;r;g;b    Set background colour to an RGB value
# 90–97         Set text colour from the bright colour palette of 0–7
# 100–107       Set background colour from the bright colour palette of 0–7

# Il reset allo stile predefinito è la funzione m(0) che si invoca con "\033[0m"
# La formattazione carattere si può applicare in un solo colpo, concatenando gli 
# stili da applicare. Se voglio applicare 1, 3, 4, allora invoco m(1, 3, 4), 
# che diventa quindi "\033[1;3;4m"

# Scrivere un testo formattato e colorato diventa quindi:
# text_colored="\033[${background_code};${foreground_code};${formatting_code};${formatting_code}m  TEXT  ${reset_code}"

# Assegnazione dei colori e dei loro codici
ansiColors=(
    [30]="black"
    [31]="red"
    [32]="green"
    [33]="yellow"
    [34]="blue"
    [35]="magenta"
    [36]="cyan"
    [37]="white"

    [40]="background black"
    [41]="background red"
    [42]="background green"
    [43]="background yellow"
    [44]="background blue"
    [45]="background magenta"
    [46]="background cyan"
    [47]="background white"

    [90]="bright black"
    [91]="bright red"
    [92]="bright green"
    [93]="bright yellow"
    [94]="bright blue"
    [95]="bright magenta"
    [96]="bright cyan"
    [97]="bright white"

    [100]="bright background black"
    [101]="bright background red"
    [102]="bright background green"
    [103]="bright background yellow"
    [104]="bright background blue"
    [105]="bright background magenta"
    [106]="bright background cyan"
    [107]="bright background white"
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

# FIX-ME https://hexdocs.pm/color_palette/ansi_color_codes.html
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

## Run: getAnsiColorIndexByName "blue"
getAnsiColorIndexByName() {
    local color_name="$1"
    for i in "${!ansiColors[@]}"; do
        if [[ "${ansiColors[$i]}" == "$color_name" ]]; then
            echo "$i"
            return 0 # OK
        fi
    done
    echo "0"
    return 2 # error
}

## Run: getAnsiColorNameByIndex "123"
getAnsiColorNameByIndex() {
    local code=$1

    # Controlla se il valore è vuoto
    if [[ -z "${ansiColors[$code]}" ]]; then
        echo ""
        return 2 # error
    fi
    
    echo "${ansiColors[$code]}"
    return 0
}

## Run: getFormattingCodeByName "bold"
getFormattingCodeByName() {
    local formatting_name="$1"
    for i in "${!formatting[@]}"; do
        if [[ "${formatting[$i]}" == "$formatting_name" ]]; then
            echo "$i"
            return 0 # OK
        fi
    done
    echo "0"
    return 2 # error
}

# Get the formatting code by more names
## Run: getFormattingCodeByNames "bold" "dim" "blink"
getFormattingCodeByNames() {
    local formatting_names=("$@")
    local formatting_codes=""

    for paramName in "${formatting_names[@]}"; do
        local param_code=$(getFormattingCodeByName "$paramName")
        if [[ -n "${param_code}" ]]; then

            # split elements by ";"
            if [[ -n "${formatting_codes}" ]]; then
                formatting_codes+=";"
            fi

            # adds element after ";"
            formatting_codes+="${param_code}"
        fi
    done

    echo "$formatting_codes"
}

# Funzione per selezionare il tipo di colore
# getColorByName "sea green"
getColorByName() {
     # Parametri
    local colorName="$1"

    if [[ "$TERM" == *"truecolor"* || "$TERM" == *"24bit"* ]]; then
        # True Color (24 bit) - No color names
        echo ""
    elif [[ "$TERM" == *"256color"* ]]; then
        # ANSI 256 colors
        echo "$(get256ColorIndexByName "$colorName")"
    elif [[ "$TERM" == *"color"* ]]; then
        # ANSI 8 colors
        echo "$(getAnsiColorIndexByName "$colorName")"
    else
        # No color
        echo ""
    fi
}

# Apply a style by code
## Run applyStyleByCodes "255:255;255" "255:255;255" "1" 
applyStyleByCodes() {
    # If $NO_COLOR not defined or empty
    if [[ ! -v "NO_COLOR" || -z "$NO_COLOR" ]]; then
        # Parametri
        local foreground_code=$1
        local background_code=$2
        local formatting_codes=$3

        local foreground_command=""
        local background_command=""

        if [[ "$TERM" == *"truecolor"* || "$TERM" == *"24bit"* ]]; then
            # True Color (24 bit) - No color names
            foreground_command="38;2;${foreground_code}m" # 38;2;r;g;b
            background_command="48;2;${background_code}m" # 48;2;r;g;b
            echo -ne "\033[${foreground_command}\033[${background_command}\033[${formatting_codes}m"
        elif [[ "$TERM" == *"256color"* ]]; then
            # ANSI 256 colors
            if [[ $foreground_code == *";"* ]]; then
                foreground_command="38;2;${foreground_code}m" # 38;2;r;g;b
            else
                background_command="38;5;${foreground_code}m" # 38;5;n (index n in a 256-colour palette)
            fi
            if [[ $foreground_code == *";"* ]]; then
                foreground_command="38;2;${background_code}m" # 48;2;r;g;b
            else
                background_command="38;5;${background_code}m" # 48;5;n (index n in a 256-colour palette)
            fi
            echo -ne "\033[${foreground_command}\033[${background_command}\033[${formatting_codes}m"
        elif [[ "$TERM" == *"color"* ]]; then
            # ANSI 8 colors
            foreground_command="${foreground_code}m" # 30m ... 37m - 90m ... 97m
            background_command="${background_code}m" # 40m ... 47m - 100m ... 107m
            echo -ne "\033[${foreground_command}\033[${background_command}\033[${formatting_codes}m"
        else
            :  # No color ( : is no operation in Bash)
        fi
    fi
}

# Reset color styles
resetStyle() {
    # If $NO_COLOR not defined or empty
    if [[ ! -v "NO_COLOR" || -z "$NO_COLOR" ]]; then
        echo -ne "\033[0m"
    fi
}

# Apply a style by style name
## Run: applyStyleByName "sea green" "vivid light magenta" "bold" "dim" "blink"
applyStyleByName() {
    # If $NO_COLOR not defined or empty
    if [[ ! -v "NO_COLOR" || -z "$NO_COLOR" ]]; then
        
        # colors
        local foreground_name="$1"
        local background_name="$2"

        # Remove $1 and $2
        shift 2

        # formatting styles
        local formatting_names=("$@")

        local foreground_code=$(getColorByName "$foreground_name")
        local background_code=$(getColorByName "$background_name")
        local formatting_codes=$(getFormattingCodeByNames "${formatting_names[@]}")
        
        echo -ne "\033[38;5;${foreground_code}m\033[48;5;${background_code}m"
        echo -ne "\033[${formatting_codes}m"
    fi
}

applyStyleByCodes "212" "122" "1" 
echo -n " RGB "
resetStyle
echo ""

applyStyleByName "sea green" "vivid light magenta" "bold" "dim" 
echo -ne " sea green - vivid light magenta - bold dim "
resetStyle
echo ""

TERM="xterm-color"
applyStyleByCodes "30" "46" "1" "2" 
echo -n " ANSI black - background cyan - bold dim"
resetStyle
echo ""

applyStyleByName "green" "background cyan" "bold" "dim" 
echo -ne " ANSI green - background cyan - bold dim "
resetStyle
echo ""


applyStyleByName "bright green" "bright background cyan" "bold" "dim" 
echo -ne " ANSI bright green - bright background cyan - bold dim "
resetStyle
echo ""



# Funzione per stampare il testo con formattazioni multiple
print_colored_text() {
    local background_code="$1"  # Codice di sfondo (da 0 a 7 o da 0 a 255)
    local foreground_code="$2" 
    local format_codes="$3"  # Accetta più codici di formattazione
    local message="$4"
    
    # Creazione della sequenza di escape
    local color_code="\033[${background_code}m \033[${foreground_code}m \033[${format_codes}m"
    local reset_code="\033[0m"  # Reset

    # Stampa il messaggio
    # echo -e "${color_code}${message}${reset_code}"

    echo -e "\033[48;2;0;0;255m\033[38;5;116m${message}${reset_code}"
}

# Esempio di utilizzo
# print_colored_text "32" "44" "1" "grassetto e sottolineato bianco su sfondo blu"
print_colored_text "48;5;88" "38;5;176" "1;2" " sottolineato e soprascritto nero su sfondo rosso"

