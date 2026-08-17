package com.smartdigimkt.r4;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class n extends d {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.q3.d f43079a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f43080b;

    public n(com.smartdigimkt.q3.d dVar, boolean z2) {
        this.f43079a = dVar;
        this.f43080b = z2;
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        String str = this.f43079a.f42845c;
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    @Override // com.smartdigimkt.r4.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] h() {
        /*
            r5 = this;
            r0 = 0
            com.smartdigimkt.q3.d r1 = r5.f43079a     // Catch: java.lang.Throwable -> L4b
            java.lang.String r1 = r1.f42845c     // Catch: java.lang.Throwable -> L4b
            r2 = 1
            if (r1 == 0) goto L12
            java.lang.String r3 = "gzip"
            boolean r1 = r1.contains(r3)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L12
            r1 = r2
            goto L13
        L12:
            r1 = r0
        L13:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L4b
            com.smartdigimkt.q3.d r4 = r5.f43079a     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L4b
            java.lang.String r4 = r4.f42847e     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L4b
            r3.<init>(r4)     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L4b
            boolean r4 = r5.f43080b     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L4b
            if (r4 == 0) goto L2d
            java.lang.String r4 = "ofl"
            r3.put(r4, r2)     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L4b
            goto L2d
        L26:
            r2 = move-exception
            goto L2a
        L28:
            r2 = move-exception
            r3 = 0
        L2a:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L4b
        L2d:
            if (r1 == 0) goto L3d
            if (r3 == 0) goto L3a
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L4b
            byte[] r0 = com.smartdigimkt.r4.d.a(r1)     // Catch: java.lang.Throwable -> L4b
            goto L3c
        L3a:
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L4b
        L3c:
            return r0
        L3d:
            if (r3 == 0) goto L48
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L4b
            byte[] r0 = r1.getBytes()     // Catch: java.lang.Throwable -> L4b
            goto L4a
        L48:
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L4b
        L4a:
            return r0
        L4b:
            byte[] r0 = new byte[r0]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.r4.n.h():byte[]");
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return this.f43079a.f42844b;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        return this.f43079a.f42846d;
    }
}
