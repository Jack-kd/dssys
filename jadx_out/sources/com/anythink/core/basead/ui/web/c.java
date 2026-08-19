package com.anythink.core.basead.ui.web;

import android.webkit.WebView;
import com.anythink.core.common.h.w;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    w f1715a;

    /* renamed from: b, reason: collision with root package name */
    JSONObject f1716b;

    /* renamed from: c, reason: collision with root package name */
    HashMap<String, Boolean> f1717c = new HashMap<>(3);

    public c(w wVar) {
        JSONObject jSONObject;
        this.f1715a = wVar;
        if (wVar != null) {
            try {
                jSONObject = new JSONObject(wVar.F());
            } catch (Throwable unused) {
                return;
            }
        } else {
            jSONObject = null;
        }
        this.f1716b = jSONObject;
    }

    public final void a(WebView webView, String str) {
        JSONObject jSONObject = this.f1716b;
        if (jSONObject == null) {
            return;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && str != null && str.contains(next) && this.f1717c.get(next) == null) {
                    this.f1717c.put(next, Boolean.TRUE);
                    webView.loadUrl(this.f1716b.optString(next));
                }
            }
        } catch (Throwable unused) {
        }
    }
}
