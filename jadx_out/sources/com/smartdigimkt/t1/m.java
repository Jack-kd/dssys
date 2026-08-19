package com.smartdigimkt.t1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.q;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: p, reason: collision with root package name */
    public static volatile m f44229p;

    /* renamed from: d, reason: collision with root package name */
    public volatile String f44233d;

    /* renamed from: e, reason: collision with root package name */
    public volatile String f44234e;

    /* renamed from: f, reason: collision with root package name */
    public volatile String f44235f;

    /* renamed from: g, reason: collision with root package name */
    public volatile String f44236g;

    /* renamed from: h, reason: collision with root package name */
    public File f44237h;

    /* renamed from: a, reason: collision with root package name */
    public final String f44230a = m.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final String f44231b = com.smartdigimkt.c5.d.a("aHR0cHM6Ly9kMnExeTd0aXIyODF4Ni5jbG91ZGZyb250Lm5ldC9vbXNkay9vbXNka192MS41LjIuanM=");

    /* renamed from: c, reason: collision with root package name */
    public final String f44232c = com.smartdigimkt.c5.d.a("aHR0cHM6Ly9kMnExeTd0aXIyODF4Ni5jbG91ZGZyb250Lm5ldC9vbXNkay9vbXNka193ZWJ2aWV3X2luamVjdGlvbl9jb250ZW50LnR4dA==");

    /* renamed from: i, reason: collision with root package name */
    public boolean f44238i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f44239j = false;

    /* renamed from: k, reason: collision with root package name */
    public final Object f44240k = new Object();

    /* renamed from: l, reason: collision with root package name */
    public String f44241l = "";

    /* renamed from: m, reason: collision with root package name */
    public String f44242m = "";

    /* renamed from: n, reason: collision with root package name */
    public String f44243n = "";

    /* renamed from: o, reason: collision with root package name */
    public String f44244o = "";

    public static void a(m mVar, Context context) {
        synchronized (mVar) {
            if (context == null) {
                try {
                    context = SDKContext.getInstance().d();
                } catch (Throwable th) {
                    throw th;
                }
            }
            mVar.f44243n = y.b(context, "sdm_adx_rp_sdk", "omsdk_webview_injection_content_url");
        }
    }

    public final boolean b() {
        String str;
        if (this.f44238i) {
            return false;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA == null || aVarA.f39371f) {
            SDKContext.getInstance().getClass();
        } else if (com.smartdigimkt.z4.d.c().a().f39356R == 1) {
            String str2 = aVarA.f39371f ? "" : aVarA.f39357S;
            if (TextUtils.isEmpty(str2)) {
                str2 = this.f44231b;
            }
            if (TextUtils.isEmpty(str2) || TextUtils.equals(this.f44242m, str2)) {
                return false;
            }
            synchronized (this) {
                str = this.f44241l;
            }
            if (TextUtils.isEmpty(str) || !TextUtils.equals(str, str2)) {
                this.f44233d = str2;
                return true;
            }
            if (TextUtils.isEmpty(this.f44234e)) {
                this.f44234e = a("omsdk_sdk_js.txt");
            }
            return false;
        }
        return false;
    }

    public final boolean c() {
        String str;
        if (this.f44239j) {
            return false;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA == null || aVarA.f39371f) {
            SDKContext.getInstance().getClass();
        } else if (com.smartdigimkt.z4.d.c().a().f39356R == 1) {
            String str2 = aVarA.f39371f ? "" : aVarA.f39358T;
            if (TextUtils.isEmpty(str2)) {
                str2 = this.f44232c;
            }
            if (TextUtils.isEmpty(str2) || TextUtils.equals(this.f44244o, str2)) {
                return false;
            }
            synchronized (this) {
                str = this.f44243n;
            }
            if (TextUtils.isEmpty(str) || !TextUtils.equals(str, str2)) {
                this.f44235f = str2;
                return true;
            }
            if (TextUtils.isEmpty(this.f44236g)) {
                this.f44236g = a("omsdk_webview_injection_content.txt");
            }
            return false;
        }
        return false;
    }

    public static m a() {
        if (f44229p == null) {
            synchronized (m.class) {
                try {
                    if (f44229p == null) {
                        f44229p = new m();
                    }
                } finally {
                }
            }
        }
        return f44229p;
    }

    public final synchronized String a(String str) {
        synchronized (this.f44240k) {
            String strC = "";
            if (this.f44237h == null) {
                return "";
            }
            try {
                File file = new File(this.f44237h, str);
                if (file.exists() && file.canRead()) {
                    strC = q.c(file);
                }
            } catch (Throwable unused) {
            }
            return strC;
        }
    }
}
