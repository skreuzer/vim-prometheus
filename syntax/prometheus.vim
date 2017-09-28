if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "prometheus"

syntax keyword prometheusKeyword ALERT IF FOR LABELS ANNOTATIONS AND WITH

syntax keyword prometheusFunction abs absent ceil changes clamp_max clamp_min
syntax keyword prometheusFunction count_scalar day_of_month day_of_week
syntax keyword prometheusFunction days_in_month delta deriv drop_common_labels
syntax keyword prometheusFunction exp floor historgram_quantile holt_winters
syntax keyword prometheusFunction hour isdelta increase irate label_replace
syntax keyword prometheusFunction ln log2 log10 minute month predict_linear
syntax keyword prometheusFunction rate resets round scalar sort sort sort_desc
syntax keyword prometheusFunction sqrt time vector year avg_over_time
syntax keyword prometheusFunction min_over_time max_over_time sum_over_time
syntax keyword prometheusFunction count_over_time quantile_over_time
syntax keyword prometheusFunction stddev_over_time stdvar_over_time

syntax match prometheusComment '#.*'

syntax match prometheusOperator "\v[\+\-\*\/\%\^\=]"
syntax match prometheusOperator "\v\=\="
syntax match prometheusOperator "\v\!\="
syntax match prometheusOperator "\v\>"
syntax match prometheusOperator "\v\>\="
syntax match prometheusOperator "\v\<"
syntax match prometheusOperator "\v\<\="
syntax match prometheusOperator "\v\=\~"
syntax match prometheusOperator "\v\!\~"

syntax keyword prometheusAggrOperator sum min max avg stddev stdvar count
syntax keyword prometheusAggrOperator count_values bottomk topk quantile

syntax match prometheusRangeSelector "\d\+[smhdwy]"

highlight link prometheusKeyword Keyword
highlight link prometheusRangeSelector Keyword
highlight link prometheusComment Comment
highlight link prometheusOperator Operator
highlight link prometheusAggrOperator Operator
highlight link prometheusFunction Function

highlight Function ctermfg=DarkGreen
highlight Operator ctermfg=DarkCyan
