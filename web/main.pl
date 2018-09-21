:- use_module(library(http/http_open)).
:- use_module(library(xpath)).
:- use_module(library(sgml)).
:- use_module(library(uri)).

baidu(For, Title, HREF) :-
    uri_encoded(query_value, For, Encoded),
    write(Encoded), nl,
    atom_concat("https://www.ebay.com/sch/", Encoded, URL),
    http_open(URL, In, []),
    call_cleanup(
        load_html(In, DOM, []),
        close(In)),
    xpath(DOM, //h3(@class=lvtitle), Result),
    xpath(Result, //a(@href=HREF0, text), Title),
    % Use below functions to get strings out of HREF0 from behind ? sign. Not necessarily needed. If there are not any ? sign , HREF = HREF0.
    % For some URLs like gedobu.cn/item/123456/ , below functions are useless and cause troubles like "ERROR: Arguments are not sufficiently instantiated" in function url_query_componets().
    % It work for URLs like gedobu.cn/search?wd=halo&itemid=123456 and can extract wd value by memberchk(wd=HREF, Parts) and itemid value by memberchk(itemid=HREF, Parts).
    uri_components(HREF0, Components),
    uri_data(search, Components, Query),
    uri_query_components(Query, Parts),
    write(Parts),
    memberchk(hash=HREF, Parts).
