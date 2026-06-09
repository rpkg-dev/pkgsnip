# Commonly used abbreviations in R code

Returns a
[tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html)
listing an opinionated set of abbreviations commonly used when writing R
code. It can be used as a reference, for example, to check
availability/consistency when considering using some abbreviation in a
function or argument name.

## Usage

``` r
abbrs(unnest = FALSE)
```

## Arguments

- unnest:

  Whether to unnest the `full_expression` column and return the data in
  long format. If `FALSE`, a "nested" list column `full_expressions`
  will be returned, meaning the values in column `abbreviation` will be
  unique.

## Value

A [tibble](https://tibble.tidyverse.org/reference/tbl_df-class.html).

## Details

To avoid the list getting excessively long and redundant, **the main
focus is on verbs and nouns**. Adjectives and adverbs are only listed in
column `full_expression` when there's not already a verb or noun with
the same root word listed for a particular `abbreviation`. That means
that e.g. the abbreviation "seq" could also stand for the full
expressions "sequential" or "sequentially", despite the fact that it is
not explicitly listed but merely the verb/noun "sequence" is.

## Motivation

To quote [Leon
Bambrick](https://twitter.com/secretGeek/status/7269997868):

*"There are 2 hard problems in computer science: cache invalidation,
**naming things**, and off-by-1 errors."*

## Examples

``` r
pkgsnip::abbrs(unnest = TRUE) |> print(n = Inf)
#> # A tibble: 275 × 2
#>     full_expression     abbreviation
#>     <chr>               <chr>       
#>   1 abbreviate          abbr        
#>   2 abbreviation        abbr        
#>   3 abbreviations       abbrs       
#>   4 absolute            abs         
#>   5 argument            arg         
#>   6 arguments           args        
#>   7 attribute           attr        
#>   8 attributes          attrs       
#>   9 authenticate        auth        
#>  10 authentication      auth        
#>  11 authentications     auths       
#>  12 auxiliary           aux         
#>  13 background          bg          
#>  14 back up             kbp         
#>  15 backup              bkp         
#>  16 bibliography        bib         
#>  17 bibliographies      bibs        
#>  18 certify             cert        
#>  19 certificate         cert        
#>  20 certification       cert        
#>  21 certificates        certs       
#>  22 certifications      certs       
#>  23 chapter             chpt        
#>  24 chapters            chpts       
#>  25 character           chr         
#>  26 characters          chrs        
#>  27 column              col         
#>  28 columns             cols        
#>  29 command             cmd         
#>  30 commands            cmds        
#>  31 combination         combo       
#>  32 combinations        combos      
#>  33 condition           cnd         
#>  34 conditions          cnds        
#>  35 configure           config      
#>  36 configuration       config      
#>  37 configurations      configs     
#>  38 connection          conn        
#>  39 connections         conns       
#>  40 current             cur         
#>  41 database            db          
#>  42 dataframe           df          
#>  43 dataframes          dfs         
#>  44 dataframe column    dfc         
#>  45 dataframe row       dfr         
#>  46 define              def         
#>  47 definition          def         
#>  48 definitions         defs        
#>  49 delete              del         
#>  50 deletion            del         
#>  51 deletions           dels        
#>  52 depend              dep         
#>  53 dependency          dep         
#>  54 dependencies        deps        
#>  55 develop             dev         
#>  56 development         dev         
#>  57 developer           dev         
#>  58 developments        devs        
#>  59 developers          devs        
#>  60 dictionary          dict        
#>  61 dictionaries        dicts       
#>  62 differentiate       diff        
#>  63 difference          diff        
#>  64 differences         diffs       
#>  65 directory           dir         
#>  66 directories         dirs        
#>  67 distribution        distro      
#>  68 distributions       distros     
#>  69 document            doc         
#>  70 documentation       doc         
#>  71 documents           docs        
#>  72 documentations      docs        
#>  73 double              dbl         
#>  74 doubles             dbls        
#>  75 duplicate           dupl        
#>  76 duplication         dupl        
#>  77 duplicates          dupls       
#>  78 duplications        dupls       
#>  79 dynamic             dyn         
#>  80 element             el          
#>  81 elements            els         
#>  82 endpoint            ep          
#>  83 endpoints           eps         
#>  84 enumerate           enum        
#>  85 enumeration         enum        
#>  86 enumerations        enums       
#>  87 environment         env         
#>  88 environments        envs        
#>  89 evaluate            eval        
#>  90 evaluation          eval        
#>  91 evaluations         evals       
#>  92 execute             exec        
#>  93 execution           exec        
#>  94 executions          execs       
#>  95 exclude             excl        
#>  96 exclusion           excl        
#>  97 expression          expr        
#>  98 expressions         exprs       
#>  99 extend              ext         
#> 100 extension           ext         
#> 101 extensions          exts        
#> 102 factor              fct         
#> 103 factors             fcts        
#> 104 figure              fig         
#> 105 figures             figs        
#> 106 filesystem          fs          
#> 107 foreign key         fk          
#> 108 foreign keys        fks         
#> 109 formula             fm          
#> 110 formulas            fms         
#> 111 formulae            fms         
#> 112 frequent            freq        
#> 113 frequency           freq        
#> 114 frequencies         freqs       
#> 115 function            fn          
#> 116 functions           fns         
#> 117 generate            gen         
#> 118 generation          gen         
#> 119 generations         gens        
#> 120 identify            id          
#> 121 identifier          id          
#> 122 identifiers         ids         
#> 123 image               img         
#> 124 images              imgs        
#> 125 include             incl        
#> 126 inclusion           incl        
#> 127 index               i           
#> 128 indexes             ix          
#> 129 indices             ix          
#> 130 information         info        
#> 131 initialize          init        
#> 132 initialization      init        
#> 133 install             instl       
#> 134 installation        instl       
#> 135 integer             int         
#> 136 integers            ints        
#> 137 iterate             itr         
#> 138 iteration           itr         
#> 139 iterator            itr         
#> 140 iterations          itrs        
#> 141 iterators           itrs        
#> 142 label               lbl         
#> 143 labels              lbls        
#> 144 language            lang        
#> 145 languages           langs       
#> 146 left-hand side      lhs         
#> 147 level               lvl         
#> 148 levels              lvls        
#> 149 library             lib         
#> 150 libraries           libs        
#> 151 limit               lim         
#> 152 limits              lims        
#> 153 list                ls          
#> 154 logical             lgl         
#> 155 logicals            lgls        
#> 156 management          mgmt        
#> 157 Markdown            md          
#> 158 matrix              mat         
#> 159 matrices            mats        
#> 160 message             msg         
#> 161 messages            msgs        
#> 162 modify              mod         
#> 163 modification        mod         
#> 164 modifications       mods        
#> 165 not available       na          
#> 166 not a number        nan         
#> 167 number              nr          
#> 168 numbers             nrs         
#> 169 number of           n           
#> 170 numeric             num         
#> 171 numerics            nums        
#> 172 object              obj         
#> 173 objects             objs        
#> 174 operate             op          
#> 175 operation           op          
#> 176 operator            op          
#> 177 operations          ops         
#> 178 operators           ops         
#> 179 option              opt         
#> 180 options             opts        
#> 181 organize            org         
#> 182 organization        org         
#> 183 organizations       orgs        
#> 184 package             pkg         
#> 185 packages            pkgs        
#> 186 parameterize        param       
#> 187 parameter           param       
#> 188 parameters          params      
#> 189 position            pos         
#> 190 PostgreSQL          pg          
#> 191 predicate           pred        
#> 192 predicates          preds       
#> 193 prepare             prep        
#> 194 preparation         prep        
#> 195 preparations        preps       
#> 196 primary key         pk          
#> 197 primary keys        pks         
#> 198 proceed             prcd        
#> 199 procedure           prcd        
#> 200 procedures          prcds       
#> 201 projection          proj        
#> 202 project             proj        
#> 203 projections         projs       
#> 204 projects            projs       
#> 205 property            prop        
#> 206 properties          props       
#> 207 prototype           ptype       
#> 208 prototypes          ptypes      
#> 209 Quarto Markdown     qmd         
#> 210 question            qstn        
#> 211 questions           qstns       
#> 212 questionnaire       qstnr       
#> 213 questionnaires      qstnrs      
#> 214 R Markdown          rmd         
#> 215 refer               ref         
#> 216 reference           ref         
#> 217 references          refs        
#> 218 referendum          rfrnd       
#> 219 referendums         rfrnds      
#> 220 referenda           rfrnds      
#> 221 regular expression  regex       
#> 222 regular expressions regex       
#> 223 relative            rel         
#> 224 remove              rm          
#> 225 removal             rm          
#> 226 repository          repo        
#> 227 repositories        repos       
#> 228 request             req         
#> 229 requests            reqs        
#> 230 respond             resp        
#> 231 response            resp        
#> 232 responses           resps       
#> 233 right-hand side     rhs         
#> 234 roxygen2            roxy        
#> 235 separate            sep         
#> 236 separator           sep         
#> 237 separators          seps        
#> 238 sequence            seq         
#> 239 sequences           seqs        
#> 240 snippet             snip        
#> 241 snippets            snips       
#> 242 source              src         
#> 243 sources             srcs        
#> 244 specify             spec        
#> 245 specification       spec        
#> 246 specifications      specs       
#> 247 string              str         
#> 248 strings             strs        
#> 249 structure           struct      
#> 250 structures          structs     
#> 251 supplement          suppl       
#> 252 supplemental        suppl       
#> 253 supplementary       suppl       
#> 254 symbolize           sym         
#> 255 symbol              sym         
#> 256 symbols             syms        
#> 257 tabulate            tbl         
#> 258 table               tbl         
#> 259 tables              tbls        
#> 260 template            tpl         
#> 261 templates           tpls        
#> 262 temporary           tmp         
#> 263 user interface      ui          
#> 264 user experience     ux          
#> 265 value               val         
#> 266 values              vals        
#> 267 variable            var         
#> 268 variables           vars        
#> 269 vectorize           vctr        
#> 270 vector              vctr        
#> 271 vectors             vctrs       
#> 272 verbatim            verb        
#> 273 version             vrsn        
#> 274 versions            vrsns       
#> 275 working directory   wd          
```
