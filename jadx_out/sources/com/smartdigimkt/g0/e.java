package com.smartdigimkt.g0;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: g, reason: collision with root package name */
    public static final String f40304g = com.smartdigimkt.c5.d.a("eyJkc3BfY2xpY2tfbWFjcm9fY29uZmlnIjp7IjQ5Ijp7Im1hcHBpbmdzIjpbeyJtYWNybyI6Il9fUkVfQ19ET1dOX1hfXyIsImFjdGlvbiI6IjMiLCJ2YWx1ZSI6IiRkeCQifSx7Im1hY3JvIjoiX19SRV9DX0RPV05fWV9fIiwiYWN0aW9uIjoiMyIsInZhbHVlIjoiJGR5JCJ9LHsibWFjcm8iOiJfX1JFX0NfVVBfWF9fIiwiYWN0aW9uIjoiMyIsInZhbHVlIjoiJHV4JCJ9LHsibWFjcm8iOiJfX1JFX0NfVVBfWV9fIiwiYWN0aW9uIjoiMyIsInZhbHVlIjoiJHV5JCJ9LHsibWFjcm8iOiJfX01fWF9BQ0NfXyIsImFjdGlvbiI6IjMiLCJ2YWx1ZSI6IiR6bWEkIn0seyJtYWNybyI6Il9fTV9ZX0FDQ19fIiwiYWN0aW9uIjoiMyIsInZhbHVlIjoiJHltYSQifSx7Im1hY3JvIjoiX19NX1pfQUNDX18iLCJhY3Rpb24iOiIzIiwidmFsdWUiOiIkem1hJCJ9XX19fQ==");

    /* renamed from: b, reason: collision with root package name */
    public volatile String f40306b;

    /* renamed from: c, reason: collision with root package name */
    public final File f40307c;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f40309e;

    /* renamed from: a, reason: collision with root package name */
    public final String f40305a = e.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    public final Object f40308d = new Object();

    /* renamed from: f, reason: collision with root package name */
    public boolean f40310f = false;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e() {
        /*
            r4 = this;
            r4.<init>()
            java.lang.Class<com.smartdigimkt.g0.e> r0 = com.smartdigimkt.g0.e.class
            java.lang.String r0 = r0.getSimpleName()
            r4.f40305a = r0
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r4.f40308d = r0
            r0 = 0
            r4.f40310f = r0
            java.lang.String r0 = "/sdm_tracker_mapping/"
            com.smartdigimkt.sdk.core.SDKContext r1 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L46
            android.content.Context r1 = r1.d()     // Catch: java.lang.Throwable -> L46
            if (r1 != 0) goto L22
            goto L46
        L22:
            java.io.File r1 = r1.getFilesDir()     // Catch: java.lang.Throwable -> L46
            if (r1 != 0) goto L29
            goto L46
        L29:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L46
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L46
            r3.<init>()     // Catch: java.lang.Throwable -> L46
            java.io.File r1 = r1.getAbsoluteFile()     // Catch: java.lang.Throwable -> L46
            java.lang.String r1 = r1.getAbsolutePath()     // Catch: java.lang.Throwable -> L46
            r3.append(r1)     // Catch: java.lang.Throwable -> L46
            r3.append(r0)     // Catch: java.lang.Throwable -> L46
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L46
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L46
            goto L47
        L46:
            r2 = 0
        L47:
            r4.f40307c = r2
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r4.f40309e = r0
            if (r2 == 0) goto L5e
            com.smartdigimkt.b4.e r0 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.g0.a r1 = new com.smartdigimkt.g0.a
            r1.<init>(r4)
            r0.c(r1)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.g0.e.<init>():void");
    }

    public final synchronized void a(Context context, String str) {
        if (this.f40310f) {
            return;
        }
        if (context == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        String strB = y.b(applicationContext, "sdm_adx_rp_sdk", "tracker_mapping");
        if (TextUtils.isEmpty(strB) || !TextUtils.equals(strB, str)) {
            this.f40310f = true;
            try {
                new com.smartdigimkt.q4.g(str).a(1, (com.smartdigimkt.l4.b) new b(this, str, applicationContext));
            } catch (Throwable unused) {
                this.f40310f = false;
            }
        }
    }

    public final void a(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            HashMap map = this.f40309e;
            if (map == null) {
                return;
            }
            map.clear();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("dsp_click_macro_config");
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(next);
                    if (jSONObjectOptJSONObject2 != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("mappings")) != null) {
                        g gVar = new g();
                        gVar.a(jSONArrayOptJSONArray);
                        this.f40309e.put(next, gVar);
                    }
                }
            }
            Objects.toString(jSONObjectOptJSONObject);
        } catch (Throwable unused) {
        }
    }
}
