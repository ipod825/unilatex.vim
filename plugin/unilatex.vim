" Vim file plugin for editing LaTeX files a unicode view.


if exists("s:loaded_unilatex")
	finish
endif
let s:loaded_unilatex = 1

let s:mapping={
\ '\alpha':'α', 
\ '\beta':'β',
\ '\gamma':'γ',
\ '\delta':'δ',
\ '\epsilon':'∊',
\ '\varepsilon':'ε',
\ '\zeta':'ζ',
\ '\eta':'η',
\ '\theta':'θ',
\ '\vartheta':'ϑ',
\ '\iota':'ι',
\ '\kappa':'κ',
\ '\lambda':'λ',
\ '\mu':'μ',
\ '\nu':'ν',
\ '\xi':'ξ',
\ '\pi':'π',
\ '\varpi':'ϖ',
\ '\rho':'ρ',
\ '\varrho':'ϱ',
\ '\sigma':'σ',
\ '\varsigma':'ς',
\ '\tau':'τ',
\ '\upsilon':'υ',
\ '\phi':'φ',
\ '\varphi':'ϕ',
\ '\chi':'χ',
\ '\psi':'ψ',
\ '\omega':'ω',
\ '\Gamma':'Γ',
\ '\Delta':'Δ',
\ '\Theta':'Θ',
\ '\Lambda':'Λ',
\ '\Xi':'Ξ',
\ '\Pi':'Π',
\ '\Upsilon':'Υ',
\ '\Phi':'Φ',
\ '\Psi':'Ψ',
\ '\Omega':'Ω',
\ '\leq':'≤',
\ '\ll':'≪',
\ '\prec':'≺',
\ '\preceq':'≼',
\ '\subset':'⊂',
\ '\subseteq':'⊆',
\ '\sqsubset':'⊏',
\ '\sqsubseteq':'⊑',
\ '\in':'∈',
\ '\vdash':'⊢',
\ '\mid':'∣',
\ '\smile':'⌣',
\ '\geq':'≥',
\ '\gg':'≫',
\ '\succ':'≻',
\ '\succeq':'≽',
\ '\supset':'⊃',
\ '\supseteq':'⊇',
\ '\sqsupset':'⊐',
\ '\sqsupseteq':'⊒',
\ '\ni':'∋',
\ '\dashv':'⊣',
\ '\parallel':'∥',
\ '\frown':'⌢',
\ '\notin':'∉',
\ '\equiv':'≡',
\ '\doteq':'≐',
\ '\sim':'∼',
\ '\simeq':'≃',
\ '\approx':'≈',
\ '\cong':'≅',
\ '\Join':'⋈',
\ '\bowtie':'⋈',
\ '\propto':'∝',
\ '\models':'⊨',
\ '\perp':'⊥',
\ '\asymp':'≍',
\ '\neq':'≠',
\ '\pm':'±',
\ '\cdot':'⋅',
\ '\times':'×',
\ '\cup':'∪',
\ '\sqcup':'⊔',
\ '\vee':'∨',
\ '\oplus':'⊕',
\ '\odot':'⊙',
\ '\otimes':'⊗',
\ '\bigtriangleup':'△',
\ '\lhd':'⊲',
\ '\unlhd':'⊴',
\ '\mp':'∓',
\ '\div':'÷',
\ '\setminus':'∖',
\ '\cap':'∩',
\ '\sqcap':'⊓',
\ '\wedge':'∧',
\ '\ominus':'⊖',
\ '\oslash':'⊘',
\ '\bigcirc':'○',
\ '\bigtriangledown':'▽',
\ '\rhd':'⊳',
\ '\unrhd':'⊵',
\ '\triangleleft':'◁',
\ '\triangleright':'▷',
\ '\star':'⋆',
\ '\ast':'∗',
\ '\circ':'∘',
\ '\bullet':'∙',
\ '\diamond':'⋄',
\ '\uplus':'⊎',
\ '\dagger':'†',
\ '\ddagger':'‡',
\ '\wr':'≀',
\ '\sum':'∑',
\ '\prod':'∏',
\ '\coprod':'∐',
\ '\int':'∫',
\ '\bigcup':'⋃',
\ '\bigcap':'⋂',
\ '\bigsqcup':'⊔',
\ '\oint':'∮',
\ '\bigvee':'⋁',
\ '\bigwedge':'⋀',
\ '\bigoplus':'⊕',
\ '\bigotimes':'⊗',
\ '\bigodot':'⊙',
\ '\biguplus':'⊎',
\ '\leftarrow':'←',
\ '\rightarrow':'→',
\ '\leftrightarrow':'↔',
\ '\Leftarrow':'⇐',
\ '\Rightarrow':'⇒',
\ '\Leftrightarrow':'⇔',
\ '\mapsto':'↦',
\ '\hookleftarrow':'↩',
\ '\leftharpoonup':'↼',
\ '\leftharpoondown':'↽',
\ '\hookrightarrow':'↪',
\ '\rightharpoonup':'⇀',
\ '\rightharpoondown':'⇁',
\ '\longleftarrow':'←',
\ '\longrightarrow':'→',
\ '\longleftrightarrow':'↔',
\ '\Longleftarrow':'⇐',
\ '\Longrightarrow':'⇒',
\ '\Longleftrightarrow':'⇔',
\ '\longmapsto':'⇖',
\ '\uparrow':'↑',
\ '\downarrow':'↓',
\ '\updownarrow':'↕',
\ '\Uparrow':'⇑',
\ '\Downarrow':'⇓',
\ '\Updownarrow':'⇕',
\ '\nearrow':'↗',
\ '\searrow':'↘',
\ '\swarrow':'↙',
\ '\nwarrow':'↖',
\ '\leadsto':'↝',
\ '\dots':'…',
\ '\cdots':'⋯',
\ '\vdots':'⋮',
\ '\ddots':'⋱',
\ '\ell':'ℓ',
\ '\Re':'ℜ',
\ '\Im':'ℑ',
\ '\aleph':'א',
\ '\wp':'℘',
\ '\forall':'∀',
\ '\exists':'∃',
\ '\mho':'℧',
\ '\partial':'∂',
\ '\prime':'′',
\ '\emptyset':'∅',
\ '\infty':'∞',
\ '\nabla':'∇',
\ '\triangle':'△',
\ '\Box':'□',
\ '\Diamond':'◇',
\ '\bot':'⊥',
\ '\top':'⊤',
\ '\angle':'∠',
\ '\surd':'√',
\ '\diamondsuit':'♢',
\ '\heartsuit':'♡',
\ '\clubsuit':'♣',
\ '\spadesuit':'♠',
\ '\neg':'¬',
\ '\flat':'♭',
\ '\natural':'♮',
\ '\sharp':'♯',
\ '\digamma':'Ϝ',
\ '\varkappa':'ϰ',
\ '\beth':'ב',
\ '\daleth':'ד',
\ '\gimel':'ג',
\ '\lessdot':'⋖',
\ '\leqslant':'≤',
\ '\leqq':'≦',
\ '\lll':'⋘',
\ '\lesssim':'≲',
\ '\lessgtr':'≶',
\ '\lesseqgtr':'⋚',
\ '\preccurlyeq':'≼',
\ '\curlyeqprec':'⋞',
\ '\precsim':'≾',
\ '\Subset':'⋐',
\ '\Sigma':'Σ',
\ '\therefore':'∴',
\ '\smallsmile':'⌣',
\ '\vartriangleleft':'⊲',
\ '\trianglelefteq':'⊴',
\ '\gtrdot':'⋗',
\ '\geqq':'≧',
\ '\ggg':'⋙',
\ '\gtrsim':'≳',
\ '\gtrless':'≷',
\ '\gtreqless':'⋛',
\ '\succcurlyeq':'≽',
\ '\curlyeqsucc':'⋟',
\ '\succsim':'≿',
\ '\Supset':'⋑',
\ '\because':'∵',
\ '\shortparallel':'∥',
\ '\smallfrown':'⌢',
\ '\vartriangleright':'⊳',
\ '\trianglerighteq':'⊵',
\ '\doteqdot':'≑',
\ '\risingdotseq':'≓',
\ '\fallingdotseq':'≒',
\ '\eqcirc':'≖',
\ '\circeq':'≗',
\ '\triangleq':'≜',
\ '\bumpeq':'≏',
\ '\Bumpeq':'≎',
\ '\thicksim':'∼',
\ '\thickapprox':'≈',
\ '\approxeq':'≊',
\ '\backsim':'∽',
\ '\vDash':'⊨',
\ '\Vdash':'⊩',
\ '\Vvdash':'⊪',
\ '\backepsilon':'∍',
\ '\varpropto':'∝',
\ '\between':'≬',
\ '\pitchfork':'⋔',
\ '\blacktriangleleft':'◀',
\ '\blacktriangleright':'▷',
\ '\dashleftarrow':'⇠',
\ '\leftleftarrows':'⇇',
\ '\leftrightarrows':'⇆',
\ '\Lleftarrow':'⇚',
\ '\twoheadleftarrow':'↞',
\ '\leftarrowtail':'↢',
\ '\leftrightharpoons':'⇋',
\ '\Lsh':'↰',
\ '\looparrowleft':'↫',
\ '\curvearrowleft':'↶',
\ '\circlearrowleft':'↺',
\ '\dashrightarrow':'⇢',
\ '\rightrightarrows':'⇉',
\ '\rightleftarrows':'⇄',
\ '\Rrightarrow':'⇛',
\ '\twoheadrightarrow':'↠',
\ '\rightarrowtail':'↣',
\ '\rightleftharpoons':'⇌',
\ '\Rsh':'↱',
\ '\looparrowright':'↬',
\ '\curvearrowright':'↷',
\ '\circlearrowright':'↻',
\ '\multimap':'⊸',
\ '\upuparrows':'⇈',
\ '\downdownarrows':'⇊',
\ '\upharpoonleft':'↿',
\ '\upharpoonright':'↾',
\ '\downharpoonleft':'⇃',
\ '\downharpoonright':'⇂',
\ '\rightsquigarrow':'⇝',
\ '\leftrightsquigarrow':'↭',
\ '\dotplus':'∔',
\ '\ltimes':'⋉',
\ '\Cup':'⋓',
\ '\veebar':'⊻',
\ '\boxplus':'⊞',
\ '\boxtimes':'⊠',
\ '\leftthreetimes':'⋋',
\ '\curlyvee':'⋎',
\ '\centerdot':'⋅',
\ '\rtimes':'⋈',
\ '\Cap':'⋒',
\ '\barwedge':'⊼',
\ '\boxminus':'⊟',
\ '\boxdot':'⊡',
\ '\rightthreetimes':'⋌',
\ '\curlywedge':'⋏',
\ '\intercal':'⊺',
\ '\divideontimes':'⋇',
\ '\smallsetminus':'∖',
\ '\circleddash':'⊝',
\ '\circledcirc':'⊚',
\ '\circledast':'⊛',
\ '\hbar':'ℏ',
\ '\hslash':'ℏ',
\ '\square':'□',
\ '\blacksquare':'■',
\ '\circledS':'Ⓢ',
\ '\vartriangle':'△',
\ '\blacktriangle':'▲',
\ '\complement':'∁',
\ '\triangledown':'▽',
\ '\blacktriangledown':'▼',
\ '\lozenge':'◊',
\ '\blacklozenge':'◆',
\ '\bigstar':'★',
\ '\measuredangle':'∡',
\ '\sphericalangle':'∢',
\ '\backprime':'‵',
\ '\nexists':'∄',
\ '\Finv':'Ⅎ',
\ '\varnothing':'∅',
\ '\eth':'ð',
\}

augroup UNILATEX
	autocmd BufReadPost *.tex cal s:LaTeXtoUTF8()
	autocmd BufWritePre *.tex cal s:UTF8toLaTeX()
	autocmd BufWritePost *.tex cal s:LaTeXtoUTF8()
augroup END

for key in keys(s:mapping)
    let s:k = strpart(key, 1)
    execute 'inoreab '.s:k.' <c-r>=<sid>CheckSlash("'.s:k.'")<CR>'.s:mapping[key]
endfor

" http://stackoverflow.com/questions/1677575/using-backslashes-in-vim-abbreviations
function! s:CheckSlash(origin)
    if getline('.')[col('.')-2]=='\'
        return "\<bs>"
    else
        return a:origin
    endif
endfunction

" function to convert utf8 symbols to latex symbols
function s:UTF8toLaTeX()
	" store cursor position
	let s:line = line(".")
	let s:column = col(".")
	" convert unicode to latex commands
    for key in keys(s:mapping)
        execute '%s/'.s:mapping[key].'/{\'.key.'}/eg'
    endfor
	" restore old encoding before writing
	let &l:fileencoding = s:oldencoding
	" restore cursor position
	call cursor(s:line,s:column)
endfunction

" function to convert latex symbols to utf-8
function s:LaTeXtoUTF8()
	" store cursor position
	let s:line = line(".")
	let s:column = col(".")

	" store the fileencoding
	let s:oldencoding = &l:fileencoding
	" set the encoding to utf-8
	set fileencoding=utf-8

	" convert latex commands to unicode
    for key in keys(s:mapping)
        execute '%s/{\'.key.'}/'.s:mapping[key].'/eg'
    endfor

	call cursor(s:line,s:column)
endfunction

do UNILATEX BufRead
