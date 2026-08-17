package com.smartdigimkt.s2;

import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f43118a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f43119b = new HashMap(3);

    public d(com.smartdigimkt.m3.c cVar) {
        JSONObject jSONObject;
        if (cVar != null) {
            try {
                jSONObject = new JSONObject(cVar.f41834y);
            } catch (Throwable unused) {
                return;
            }
        } else {
            jSONObject = null;
        }
        this.f43118a = jSONObject;
    }

    public final void a(WebView webView, String str) {
        JSONObject jSONObject = this.f43118a;
        if (jSONObject == null) {
            return;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && str != null && str.contains(next) && this.f43119b.get(next) == null) {
                    this.f43119b.put(next, Boolean.TRUE);
                    webView.loadUrl(this.f43118a.optString(next));
                }
            }
        } catch (Throwable unused) {
        }
    }
}
