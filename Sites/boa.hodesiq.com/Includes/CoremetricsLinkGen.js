
jQuery(document).ready(function () {
    $('a').each(function (index) {
        var a_name = strReplace(strReplace(this.name.trim(), "  ", " "), "  ", " "), maybe_name = "";

        if (a_name.indexOf('_leftnav') == -1 && a_name.indexOf('_header') == -1 && a_name.indexOf('_footer') == -1) {


            if (a_name == "" || a_name == "undefined") {
                maybe_name = CMName(this.title);
                if (maybe_name == "") {
                    var a_html = null, matches = null;
                    a_html = $(this).html();
                    var img = $('a:eq(' + index + ') img');
                    if (img.get(0)) {
                        var img_to_name = $('a:eq(' + index + ') img').attr("alt");
                        if (img_to_name) maybe_name = CMName(img_to_name);
                        if (maybe_name == "") {
                            img_to_name = $('a:eq(' + index + ') img').attr("title");
                            if (img_to_name) maybe_name = CMName(img_to_name);
                        }
                    }
                    if (maybe_name == "") {
                        if (a_html.match(img_alt_regexp)) {
                            matches = img_alt_regexp.exec(a_html);
                            if (matches.length > 1) maybe_name = CMName(matches[1]);
                        }
                    }
                    if (maybe_name == "") {
                        if (a_html.match(img_title_regexp)) {
                            matches = img_title_regexp.exec(a_html);
                            if (matches.length > 1) maybe_name = CMName(matches[1]);
                        }
                    }
                    if (maybe_name == "") {
                        var html_to_name = a_html;
                        if (this.href.indexOf('mailto') != -1) html_to_name = "mailto_" + strReplace
(strReplace(a_html, "@", "_"), ".", "_");
                        maybe_name = CMName(html_to_name);
                    }
                }
                a_name = maybe_name;
            }

            if (a_name != "") {
                a_name = UniqueName(a_name);
                this.name = a_name;
                a_names[a_names.length] = a_name;
            }
        }
    });
});

function CMName(maybe_name) {
    if (maybe_name) {
        maybe_name = strReplace(strReplace(strReplace(maybe_name.trim(), "undefined", ""), "  ", " "), "  ", " ");
        // decode html entities and strip tags //maybe_name = maybe_name.replace(/<\/?\w(?:[^"'>]|"[^"]*"|'[^']*')*>/g, "");
        maybe_name = $("<div/>").html(maybe_name).text().trim();
        if (maybe_name != "") {
            //clear the name
            maybe_name = maybe_name.replace(name_regexp, "");
            //even nicer //Link opens a new window
            maybe_name = maybe_name.replace(/\s+Link\s+opens\s+a\s+new\s+window[\.]*/gi, "").trim();
            maybe_name = strReplace(strReplace(strReplace(strReplace(strReplace(strReplace(maybe_name, "  ", " "), "  ",
" "), "- ", "-"), " -", "-"), "_  ", "_"), " _ ", "_");
            //replace space with _
            maybe_name = strReplace(strReplace(strReplace(strReplace(strReplace(maybe_name, "_-", "_"), "-_", "_"), "--",
"_"), "__", "_"), " ", "_");
        }
    }
    else maybe_name = "";
    return maybe_name;
}
function UniqueName(a_name) {
    var unique_name = a_name, name_count = 0;
    while (a_names.inArray(unique_name) && name_count < 10) {
        name_count++;
        unique_name = a_name + "_" + name_count;
    }

    return unique_name;
}

var a_names = new Array();
var name_regexp = /[^a-zA-Z 0-9_\-]+/g;
var img_alt_regexp = /<img[^>]*\s*alt=\s*[\"']{1,}([^\"']*)[\"']{1,}\s*[^>]*>/gi;
var img_title_regexp = /<img[^>]*\s*title=\s*[\"']{1,}([^\"']*)[\"']{1,}\s*[^>]*>/gi;

Array.prototype.inArray = function (value) {
    var i;
    for (i = 0; i < this.length; i++) {
        if (this[i] === value) return true;
    }
    return false;
};
