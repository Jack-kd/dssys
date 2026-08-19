package com.smartdigimkt.q1;

import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;
import java.net.URLEncoder;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public MraidBaseWebView f42697a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.d1.b f42698b;

    public final void a() {
        MraidBaseWebView mraidBaseWebView = this.f42697a;
        String strEncode = "close";
        try {
            strEncode = URLEncoder.encode("close", "UTF-8");
        } catch (Throwable unused) {
        }
        String str = "javascript:window.mraidbridge.nativeCallComplete('" + strEncode + "');";
        if (mraidBaseWebView != null) {
            try {
                mraidBaseWebView.loadUrl(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            com.smartdigimkt.d1.b bVar = this.f42698b;
            if (bVar != null) {
                bVar.close();
            }
        } catch (Throwable unused2) {
        }
    }

    public final void b(String str) {
        MraidBaseWebView mraidBaseWebView = this.f42697a;
        String strEncode = "open";
        try {
            strEncode = URLEncoder.encode("open", "UTF-8");
        } catch (Throwable unused) {
        }
        String str2 = "javascript:window.mraidbridge.nativeCallComplete('" + strEncode + "');";
        if (mraidBaseWebView != null) {
            try {
                mraidBaseWebView.loadUrl(str2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            String strOptString = new JSONObject(str).optString("url");
            if (this.f42698b == null || TextUtils.isEmpty(strOptString)) {
                return;
            }
            this.f42698b.a(strOptString);
        } catch (Throwable unused2) {
        }
    }

    public final void c(String str) {
        MraidBaseWebView mraidBaseWebView = this.f42697a;
        String strEncode = "useCustomClose";
        try {
            strEncode = URLEncoder.encode("useCustomClose", "UTF-8");
        } catch (Throwable unused) {
        }
        String str2 = "javascript:window.mraidbridge.nativeCallComplete('" + strEncode + "');";
        if (mraidBaseWebView != null) {
            try {
                mraidBaseWebView.loadUrl(str2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            String strOptString = new JSONObject(str).optString("shouldUseCustomClose");
            if (TextUtils.isEmpty(strOptString) || this.f42698b == null) {
                return;
            }
            this.f42698b.a(strOptString.toLowerCase().equals("true"));
        } catch (Throwable unused2) {
        }
    }

    public final void a(String str) {
        MraidBaseWebView mraidBaseWebView = this.f42697a;
        String strEncode = "expand";
        try {
            strEncode = URLEncoder.encode("expand", "UTF-8");
        } catch (Throwable unused) {
        }
        String str2 = "javascript:window.mraidbridge.nativeCallComplete('" + strEncode + "');";
        if (mraidBaseWebView != null) {
            try {
                mraidBaseWebView.loadUrl(str2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            String strOptString2 = jSONObject.optString("shouldUseCustomClose");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.f42698b == null) {
                return;
            }
            this.f42698b.a(strOptString, strOptString2.toLowerCase().equals("true"));
        } catch (Throwable unused2) {
        }
    }

    public final void b() {
        MraidBaseWebView mraidBaseWebView = this.f42697a;
        String strEncode = "unload";
        try {
            strEncode = URLEncoder.encode("unload", "UTF-8");
        } catch (Throwable unused) {
        }
        String str = "javascript:window.mraidbridge.nativeCallComplete('" + strEncode + "');";
        if (mraidBaseWebView != null) {
            try {
                mraidBaseWebView.loadUrl(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            com.smartdigimkt.d1.b bVar = this.f42698b;
            if (bVar != null) {
                bVar.a();
            }
        } catch (Throwable unused2) {
        }
    }
}
