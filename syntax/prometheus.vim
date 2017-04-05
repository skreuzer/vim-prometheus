if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "prometheus"

syntax keyword prometheusKeyword ALERT IF FOR LABELS ANNOTATIONS
syntax match prometheusComment '#.*'
syntax match prometheusOperator "\v\=\="
syntax match prometheusOperator "\v\>"
syntax match prometheusOperator "\v\<"

highlight link prometheusKeyword Keyword
highlight link prometheusComment Comment
highlight link prometheusOperator Operator
