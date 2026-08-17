package com.byazt.zn;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 442, 679})
/* loaded from: classes3.dex */
public class ms {
    public static Map<String, String> hp(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        URL urlJx = jx(str);
        if (urlJx != null) {
            try {
                String query = urlJx.getQuery();
                if (query != null) {
                    if (query.contains("url=")) {
                        int iIndexOf = query.indexOf("url=");
                        linkedHashMap.put("url", URLDecoder.decode(query.substring(iIndexOf + 4), "UTF-8"));
                        query = query.substring(0, iIndexOf);
                    }
                    if (query.length() > 0) {
                        for (String str2 : query.split("&")) {
                            int iIndexOf2 = str2.indexOf("=");
                            if (iIndexOf2 > 0 && iIndexOf2 < str2.length() - 1) {
                                String strSubstring = str2.substring(0, iIndexOf2);
                                int i2 = iIndexOf2 + 1;
                                String strSubstring2 = str2.substring(i2);
                                if ("live_short_touch_params".equals(strSubstring) || "extra_pangle_scheme_params".equals(strSubstring)) {
                                    linkedHashMap.put(URLDecoder.decode(str2.substring(0, iIndexOf2), "UTF-8"), URLDecoder.decode(str2.substring(i2), "UTF-8"));
                                } else {
                                    linkedHashMap.put(strSubstring, strSubstring2);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return linkedHashMap;
    }

    private static URL jx(String str) {
        if (str != null && str.length() != 0 && str.contains("://")) {
            try {
                return new URL("http" + str.substring(str.indexOf("://")));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String l(String str) {
        return str.contains("?") ? str.substring(0, str.indexOf("?")) : str;
    }

    public static String hp(String str, Map<String, String> map) throws UnsupportedEncodingException {
        if (!TextUtils.isEmpty(str) && map != null && map.size() > 0) {
            StringBuilder sb = new StringBuilder(l(str));
            sb.append("?");
            try {
                Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, String> next = it.next();
                    String key = next.getKey();
                    String value = next.getValue();
                    if (it.hasNext()) {
                        if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                            sb.append(key + "=" + value + "&");
                        } else {
                            sb.append(URLEncoder.encode(next.getKey(), "UTF-8") + "=" + URLEncoder.encode(next.getValue(), "UTF-8") + "&");
                        }
                    } else if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                        sb.append(key + "=" + value);
                    } else {
                        sb.append(URLEncoder.encode(next.getKey(), "UTF-8") + "=" + URLEncoder.encode(next.getValue(), "UTF-8"));
                    }
                }
            } catch (Exception unused) {
            }
            return sb.toString();
        }
        return "";
    }
}
