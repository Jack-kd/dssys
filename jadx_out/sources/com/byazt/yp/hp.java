package com.byazt.yp;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.sq.e;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1798, 28})
/* loaded from: classes3.dex */
public final class hp {

    /* renamed from: com.byazt.yp.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0426hp {
        com.byazt.ir.hp hp(String str, e.hp hpVar, String str2);

        boolean hp();
    }

    public static com.byazt.ir.hp hp(WebView webView, mp mpVar, String str, InterfaceC0426hp interfaceC0426hp) {
        dy next;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e.hp hpVarHp = e.hp(str);
        boolean z2 = interfaceC0426hp != null && interfaceC0426hp.hp();
        if (hpVarHp == e.hp.IMAGE || !z2 || mpVar == null) {
            next = null;
        } else {
            Iterator<dy> it = mpVar.vi().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (!TextUtils.isEmpty(next.hp()) && !TextUtils.isEmpty(str)) {
                    String strHp = next.hp();
                    if (strHp.startsWith("https")) {
                        strHp = strHp.replaceFirst("https", "http");
                    }
                    if ((str.startsWith("https") ? str.replaceFirst("https", "http") : str).equals(strHp)) {
                        break;
                    }
                }
            }
            next = null;
        }
        if (hpVarHp == e.hp.IMAGE) {
            com.byazt.ir.hp hpVar = new com.byazt.ir.hp();
            hpVar.hp(5);
            hpVar.hp(hp(str, l.l(mpVar, str)));
            return hpVar;
        }
        if (next == null) {
            if (interfaceC0426hp == null) {
                return null;
            }
            return interfaceC0426hp.hp(str, hpVarHp, "");
        }
        com.byazt.ir.hp hpVar2 = new com.byazt.ir.hp();
        hpVar2.hp(hp(str, next.eb()));
        hpVar2.hp(5);
        return hpVar2;
    }

    private static WebResourceResponse hp(String str, String str2) {
        WebResourceResponse webResourceResponse = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream inputStreamHp = com.byazt.ws.l.hp(str, str2);
            if (inputStreamHp == null) {
                return null;
            }
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(e.hp.IMAGE.getType(), "utf-8", inputStreamHp);
            try {
                Map<String, String> responseHeaders = webResourceResponse2.getResponseHeaders();
                if (responseHeaders == null) {
                    responseHeaders = new HashMap<>();
                }
                responseHeaders.put("Access-Control-Allow-Origin", "*");
                webResourceResponse2.setResponseHeaders(responseHeaders);
                return webResourceResponse2;
            } catch (Throwable th) {
                th = th;
                webResourceResponse = webResourceResponse2;
                u.hp("CacheInterceptUtil", "get image WebResourceResponse error", th);
                return webResourceResponse;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
