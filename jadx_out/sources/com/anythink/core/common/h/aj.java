package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class aj extends ai {

    /* renamed from: a, reason: collision with root package name */
    private int f3745a;

    /* renamed from: b, reason: collision with root package name */
    private long f3746b;

    /* renamed from: c, reason: collision with root package name */
    private int f3747c;

    /* renamed from: d, reason: collision with root package name */
    private String f3748d;

    /* renamed from: e, reason: collision with root package name */
    private Map<Integer, al> f3749e;

    /* renamed from: f, reason: collision with root package name */
    private List<ak> f3750f;

    /* renamed from: g, reason: collision with root package name */
    private List<ak> f3751g;

    private aj() {
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.anythink.core.common.h.aj a(org.json.JSONObject r17) {
        /*
            com.anythink.core.common.h.aj r0 = new com.anythink.core.common.h.aj
            r0.<init>()
            java.lang.String r1 = "e_cwf"
            r2 = r17
            org.json.JSONObject r1 = r2.optJSONObject(r1)     // Catch: java.lang.Throwable -> L101
            if (r1 == 0) goto L101
            java.lang.String r2 = "oe_ids"
            java.lang.String r2 = r1.optString(r2)     // Catch: java.lang.Throwable -> L101
            r0.f3748d = r2     // Catch: java.lang.Throwable -> L101
            java.lang.String r2 = "ss_sw"
            int r2 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L101
            r0.f3745a = r2     // Catch: java.lang.Throwable -> L101
            java.lang.String r2 = "sd_sw"
            int r2 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L101
            r0.f3747c = r2     // Catch: java.lang.Throwable -> L101
            java.lang.String r2 = "dt"
            long r2 = r1.optLong(r2)     // Catch: java.lang.Throwable -> L101
            r0.f3746b = r2     // Catch: java.lang.Throwable -> L101
            java.util.concurrent.ConcurrentHashMap r2 = new java.util.concurrent.ConcurrentHashMap     // Catch: java.lang.Throwable -> L101
            r2.<init>()     // Catch: java.lang.Throwable -> L101
            java.lang.String r3 = "oe"
            org.json.JSONObject r1 = r1.optJSONObject(r3)     // Catch: java.lang.Throwable -> L101
            if (r1 == 0) goto Lff
            java.util.Iterator r3 = r1.keys()     // Catch: java.lang.Throwable -> L101
        L40:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L101
            if (r4 == 0) goto Lff
            com.anythink.core.common.h.al r4 = new com.anythink.core.common.h.al     // Catch: java.lang.Throwable -> L101
            r4.<init>()     // Catch: java.lang.Throwable -> L101
            java.lang.Object r5 = r3.next()     // Catch: java.lang.Throwable -> L101
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L101
            org.json.JSONObject r6 = r1.optJSONObject(r5)     // Catch: java.lang.Throwable -> L101
            if (r6 == 0) goto Leb
            java.lang.String r7 = "t"
            long r7 = r6.optLong(r7)     // Catch: java.lang.Throwable -> L101
            r4.a(r7)     // Catch: java.lang.Throwable -> L101
            java.lang.String r7 = "c"
            org.json.JSONArray r7 = r6.optJSONArray(r7)     // Catch: java.lang.Throwable -> L101
            java.lang.String r8 = "c_m"
            org.json.JSONObject r6 = r6.optJSONObject(r8)     // Catch: java.lang.Throwable -> L101
            if (r7 == 0) goto Leb
            int r8 = r7.length()     // Catch: java.lang.Throwable -> L101
            if (r8 <= 0) goto Leb
            java.util.concurrent.CopyOnWriteArrayList r8 = new java.util.concurrent.CopyOnWriteArrayList     // Catch: java.lang.Throwable -> L101
            r8.<init>()     // Catch: java.lang.Throwable -> L101
            java.util.HashMap r9 = new java.util.HashMap     // Catch: java.lang.Throwable -> L101
            r9.<init>()     // Catch: java.lang.Throwable -> L101
            r11 = 0
        L7f:
            int r12 = r7.length()     // Catch: java.lang.Throwable -> L101
            if (r11 >= r12) goto Ldc
            java.lang.String r12 = r7.optString(r11)     // Catch: java.lang.Throwable -> L101
            r8.add(r12)     // Catch: java.lang.Throwable -> L101
            boolean r13 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Throwable -> L101
            if (r13 != 0) goto Ld5
            if (r6 == 0) goto Ld5
            org.json.JSONArray r13 = r6.optJSONArray(r12)     // Catch: java.lang.Throwable -> L101
            if (r13 == 0) goto Ld5
            int r14 = r13.length()     // Catch: java.lang.Throwable -> L101
            if (r14 <= 0) goto Ld5
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L101
            r14.<init>()     // Catch: java.lang.Throwable -> L101
            r15 = 0
        La6:
            int r10 = r13.length()     // Catch: java.lang.Throwable -> L101
            if (r15 >= r10) goto Lc9
            java.lang.Object r10 = r13.get(r15)     // Catch: java.lang.Throwable -> L101
            r16 = r1
            boolean r1 = r10 instanceof java.lang.String     // Catch: java.lang.Throwable -> L101
            if (r1 == 0) goto Lc4
            r1 = r10
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: java.lang.Throwable -> L101
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L101
            if (r1 != 0) goto Lc4
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L101
            r14.add(r10)     // Catch: java.lang.Throwable -> L101
        Lc4:
            int r15 = r15 + 1
            r1 = r16
            goto La6
        Lc9:
            r16 = r1
            boolean r1 = r14.isEmpty()     // Catch: java.lang.Throwable -> L101
            if (r1 != 0) goto Ld7
            r9.put(r12, r14)     // Catch: java.lang.Throwable -> L101
            goto Ld7
        Ld5:
            r16 = r1
        Ld7:
            int r11 = r11 + 1
            r1 = r16
            goto L7f
        Ldc:
            r16 = r1
            r4.a(r8)     // Catch: java.lang.Throwable -> L101
            boolean r1 = r9.isEmpty()     // Catch: java.lang.Throwable -> L101
            if (r1 != 0) goto Led
            r4.a(r9)     // Catch: java.lang.Throwable -> L101
            goto Led
        Leb:
            r16 = r1
        Led:
            int r1 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L101
            r4.a(r1)     // Catch: java.lang.Throwable -> L101
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L101
            r2.put(r1, r4)     // Catch: java.lang.Throwable -> L101
            r1 = r16
            goto L40
        Lff:
            r0.f3749e = r2     // Catch: java.lang.Throwable -> L101
        L101:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.aj.a(org.json.JSONObject):com.anythink.core.common.h.aj");
    }

    public final boolean b() {
        return this.f3745a == 1;
    }

    public final boolean c() {
        return this.f3747c == 1;
    }

    public final List<ak> d() {
        return this.f3750f;
    }

    public final Map<Integer, al> e() {
        return this.f3749e;
    }

    public final List<ak> f() {
        return this.f3751g;
    }

    public final String g() {
        return this.f3748d;
    }

    public final void b(List<ak> list) {
        this.f3751g = list;
    }

    public final boolean a() {
        return TextUtils.isEmpty(this.f3748d);
    }

    public final boolean a(long j2) {
        return j2 > 0 && System.currentTimeMillis() - j2 < this.f3746b;
    }

    public final void a(List<ak> list) {
        this.f3750f = list;
    }
}
