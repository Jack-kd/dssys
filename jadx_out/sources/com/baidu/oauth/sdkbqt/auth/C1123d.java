package com.baidu.oauth.sdkbqt.auth;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.baidu.oauth.sdkbqt.auth.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1123d {
    public String a(Context context) {
        return b(context, o.c.e(), "BDUSS");
    }

    public final String b(Context context, String str, String str2) {
        try {
            CookieSyncManager.createInstance(context);
            String cookie = CookieManager.getInstance().getCookie(str);
            if (!TextUtils.isEmpty(cookie)) {
                for (String str3 : cookie.split(";")) {
                    String strTrim = str3.trim();
                    if (!TextUtils.isEmpty(strTrim)) {
                        String[] strArrSplit = strTrim.split("=");
                        if (strArrSplit.length == 2 && strArrSplit[0].equals(str2)) {
                            return strArrSplit[1];
                        }
                    }
                }
            }
            return "";
        } catch (Throwable th) {
            o.d.c(th);
            return "";
        }
    }

    public final String c(String str, String str2) {
        return "cuid=" + str2 + ";domain=" + str + ";path=/;httponly";
    }

    public final void d(Context context, HashMap map) {
        o.g.g(context, "context is null");
        if (map == null || map.size() == 0) {
            return;
        }
        CookieSyncManager.createInstance(context);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty((CharSequence) map.get(str))) {
                cookieManager.setCookie(str, (String) map.get(str));
            }
        }
        cookieManager.flush();
    }

    public boolean e(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                HashMap map = new HashMap(3);
                ArrayList arrayListD = o.c.d();
                int size = arrayListD.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayListD.get(i2);
                    i2++;
                    String str2 = (String) obj;
                    map.put("https://" + str2, c(str2, str));
                }
                d(context, map);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
