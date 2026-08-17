package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.b0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1127b0 {

    /* renamed from: a, reason: collision with root package name */
    private final String f13028a;

    /* renamed from: b, reason: collision with root package name */
    private final String f13029b;

    /* renamed from: c, reason: collision with root package name */
    private final String f13030c;

    /* renamed from: d, reason: collision with root package name */
    private final C1125a0 f13031d;

    /* renamed from: com.beizi.fusion.b0$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1127b0 f13032a = new C1127b0();
    }

    public static C1127b0 a() {
        return b.f13032a;
    }

    public id b() {
        return this.f13031d;
    }

    private C1127b0() {
        this.f13028a = "alE/Wd6TQF6QDt5MOuPgTJhj5qydYaJMv1s3ioRo108=";
        this.f13029b = "HmbXL1RJ0QhOMpVM8sDB4g==";
        this.f13030c = "Qw020bKiuI4Tpk03J/klVA==";
        if (b.f13032a != null) {
            throw new RuntimeException("Singleton ...");
        }
        this.f13031d = new C1125a0();
    }

    public boolean a(Context context) {
        C1135g c1135g = (C1135g) C1136h.a().b(context);
        if (c1135g == null) {
            return true;
        }
        return !AbstractC1147s.a(c1135g.a() != null ? r4.p() : null, "allow_use_app_status", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(android.content.Context r9) {
        /*
            r8 = this;
            java.lang.String r0 = "1001"
            r1 = 1
            java.lang.String r2 = "activity"
            java.lang.Object r2 = r9.getSystemService(r2)     // Catch: java.lang.Throwable -> La3
            android.app.ActivityManager r2 = (android.app.ActivityManager) r2     // Catch: java.lang.Throwable -> La3
            com.beizi.fusion.gh r3 = com.beizi.fusion.gh.a()     // Catch: java.lang.Throwable -> La3
            java.lang.Object r3 = r3.b(r9)     // Catch: java.lang.Throwable -> La3
            com.beizi.fusion.kd r3 = (com.beizi.fusion.kd) r3     // Catch: java.lang.Throwable -> La3
            com.beizi.fusion.e r4 = com.beizi.fusion.EnumC1132e.ASNP_AES     // Catch: java.lang.Throwable -> La3
            r3.a(r4)     // Catch: java.lang.Throwable -> La3
            java.lang.Class<android.app.ActivityManager> r4 = android.app.ActivityManager.class
            java.lang.String r5 = "alE/Wd6TQF6QDt5MOuPgTJhj5qydYaJMv1s3ioRo108="
            com.beizi.fusion.kd$a r6 = com.beizi.fusion.kd.a.AS_LAST_OR_FIRST     // Catch: java.lang.Throwable -> La3
            java.lang.String r5 = r3.a(r5, r0, r6, r1)     // Catch: java.lang.Throwable -> La3
            r7 = 0
            java.lang.reflect.Method r4 = r4.getMethod(r5, r7)     // Catch: java.lang.Throwable -> La3
            java.lang.Object r2 = r4.invoke(r2, r7)     // Catch: java.lang.Throwable -> La3
            boolean r4 = r2 instanceof java.util.List     // Catch: java.lang.Throwable -> La3
            if (r4 == 0) goto La5
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> La3
            android.content.pm.ApplicationInfo r9 = r9.getApplicationInfo()     // Catch: java.lang.Throwable -> La3
            java.lang.String r9 = r9.packageName     // Catch: java.lang.Throwable -> La3
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> La3
            boolean r4 = r2.hasNext()     // Catch: java.lang.Throwable -> La3
            if (r4 == 0) goto La5
            java.lang.Object r2 = r2.next()     // Catch: java.lang.Throwable -> La3
            java.lang.Class r4 = r2.getClass()     // Catch: java.lang.Throwable -> La3
            java.lang.String r5 = "HmbXL1RJ0QhOMpVM8sDB4g=="
            java.lang.String r5 = r3.a(r5, r0, r6, r1)     // Catch: java.lang.Throwable -> L63
            java.lang.reflect.Field r5 = r4.getDeclaredField(r5)     // Catch: java.lang.Throwable -> L63
            r5.setAccessible(r1)     // Catch: java.lang.Throwable -> L63
            java.lang.Object r5 = r5.get(r2)     // Catch: java.lang.Throwable -> L63
            if (r5 == 0) goto L65
            boolean r9 = r5.equals(r9)     // Catch: java.lang.Throwable -> L63
            goto L6b
        L63:
            r9 = move-exception
            goto L67
        L65:
            r9 = r1
            goto L6b
        L67:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> La3
            goto L65
        L6b:
            r5 = 0
            java.lang.String r6 = "Qw020bKiuI4Tpk03J/klVA=="
            com.beizi.fusion.kd$a r7 = com.beizi.fusion.kd.a.AS_LAST_OR_FIRST     // Catch: java.lang.Throwable -> L94
            java.lang.String r0 = r3.a(r6, r0, r7, r1)     // Catch: java.lang.Throwable -> L94
            java.lang.reflect.Field r0 = r4.getDeclaredField(r0)     // Catch: java.lang.Throwable -> L94
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L94
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L94
            boolean r2 = r0 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L94
            if (r2 == 0) goto L96
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L94
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L94
            r2 = 100
            if (r0 == r2) goto L96
            r2 = 200(0xc8, float:2.8E-43)
            if (r0 != r2) goto L92
            goto L96
        L92:
            r0 = r5
            goto L9c
        L94:
            r0 = move-exception
            goto L98
        L96:
            r0 = r1
            goto L9c
        L98:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> La3
            goto L96
        L9c:
            if (r9 == 0) goto La1
            if (r0 == 0) goto La1
            goto La2
        La1:
            r1 = r5
        La2:
            return r1
        La3:
            r9 = move-exception
            goto La6
        La5:
            return r1
        La6:
            r9.printStackTrace()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.C1127b0.b(android.content.Context):boolean");
    }
}
