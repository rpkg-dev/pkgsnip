# TODOs

-   release on CRAN:

    1.  first release pkg pal

    2.  apply outstanding changes:

        -   check lbls in `roxy_lbls()` for naming improvements and apply them
            -   `"data"` -\> `"tibble"`
            -   `"data_cols"` -\> `"tibble_cols"`
            -   `"response"` -\> `"resp_obj"`
            -   `"symbol"` -\> `"sym"`
            -   `"tabular_data"` -\> `"tbl_data"`
            -   `"version_nr"` -\> `"num_vrsn"`
        -   add logical param `as_sentence` to lbls which defaults to `TRUE`; if `FALSE`, result begins lower-case and omits final punctuation
        -   remove long-form fn aliases (`*_label*()`, `abbreviations()`)
        -   rename param / colname `name` to `id` in all relevant places

        ensure all pkgs using pkgsnip are adapted to these changes!

    3.  submit to CRAN!
