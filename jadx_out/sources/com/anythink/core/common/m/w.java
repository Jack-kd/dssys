package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.ar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class w extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    ar f5891a;

    /* renamed from: b, reason: collision with root package name */
    boolean f5892b = true;

    private w(ar arVar) {
        this.f5891a = arVar;
    }

    private ar t() {
        return this.f5891a;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        return this.f5891a.f3805d;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        String str = this.f5891a.f3804c;
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
        } catch (Exception unused) {
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    @Override // com.anythink.core.common.m.AbstractC1114b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] d() throws org.json.JSONException {
        /*
            r6 = this;
            com.anythink.core.common.h.ar r0 = r6.f5891a
            java.lang.String r0 = r0.f3804c
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L12
            java.lang.String r3 = "gzip"
            boolean r0 = r0.contains(r3)
            if (r0 == 0) goto L12
            r0 = r1
            goto L13
        L12:
            r0 = r2
        L13:
            r3 = 0
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Exception -> L2a
            com.anythink.core.common.h.ar r5 = r6.f5891a     // Catch: java.lang.Exception -> L2a
            java.lang.String r5 = r5.f3806e     // Catch: java.lang.Exception -> L2a
            r4.<init>(r5)     // Catch: java.lang.Exception -> L2a
            boolean r3 = r6.f5892b     // Catch: java.lang.Exception -> L27
            if (r3 == 0) goto L2f
            java.lang.String r3 = "ofl"
            r4.put(r3, r1)     // Catch: java.lang.Exception -> L27
            goto L2f
        L27:
            r1 = move-exception
            r3 = r4
            goto L2b
        L2a:
            r1 = move-exception
        L2b:
            r1.printStackTrace()
            r4 = r3
        L2f:
            if (r0 == 0) goto L3f
            if (r4 == 0) goto L3c
            java.lang.String r0 = r4.toString()
            byte[] r0 = com.anythink.core.common.m.AbstractC1114b.a(r0)
            return r0
        L3c:
            byte[] r0 = new byte[r2]
            return r0
        L3f:
            if (r4 == 0) goto L4a
            java.lang.String r0 = r4.toString()
            byte[] r0 = r0.getBytes()
            return r0
        L4a:
            byte[] r0 = new byte[r2]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.m.w.d():byte[]");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean p() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    private void a(boolean z2) {
        this.f5892b = z2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return this.f5891a.f3803b;
    }
}
