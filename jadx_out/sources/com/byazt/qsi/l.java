package com.byazt.qsi;

import java.net.URLDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 667, 34})
/* loaded from: classes3.dex */
public class l {
    public static JSONObject hp(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            String strDecode = URLDecoder.decode(str, "UTF-8");
            int iIndexOf = strDecode.indexOf(63);
            if (iIndexOf != -1) {
                Matcher matcher = Pattern.compile("([^&=]+)=((?:\\$\\{[^}]+\\})|[^&]+)").matcher(strDecode.substring(iIndexOf + 1));
                while (matcher.find()) {
                    jSONObject.put(matcher.group(1), matcher.group(2));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
