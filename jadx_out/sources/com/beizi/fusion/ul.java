package com.beizi.fusion;

import android.text.TextUtils;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class ul {
    public static String a(String str, Map map) {
        if (map != null && !map.isEmpty()) {
            Pattern patternCompile = Pattern.compile("__[A-Z_^\\d]+__");
            Matcher matcher = patternCompile.matcher(str);
            while (matcher.find()) {
                String strGroup = matcher.group();
                if (!map.containsKey(strGroup) || TextUtils.isEmpty((CharSequence) map.get(strGroup))) {
                    str = matcher.replaceFirst(strGroup.replace("_", "~"));
                } else {
                    String strReplaceAll = (String) map.get(strGroup);
                    if (strReplaceAll != null && strReplaceAll.contains("\"")) {
                        strReplaceAll = strReplaceAll.replaceAll("\"", "\\\\\"");
                    }
                    String strQuoteReplacement = Matcher.quoteReplacement(strReplaceAll);
                    if (strQuoteReplacement.contains("\\\"")) {
                        strQuoteReplacement = strQuoteReplacement.replaceAll("\\\"", "\\\\\"");
                    }
                    str = matcher.replaceFirst(strQuoteReplacement);
                }
                matcher = patternCompile.matcher(str);
            }
        }
        return str.replace("~", "_");
    }

    public static boolean a(String str, String str2) {
        return Pattern.compile(str2).matcher(str).matches();
    }
}
