package com.anythink.core.common.n.b.a.a;

import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.u;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ad f6049a;

    /* renamed from: b, reason: collision with root package name */
    public final af f6050b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final long f6051a;

        /* renamed from: b, reason: collision with root package name */
        final ad f6052b;

        /* renamed from: c, reason: collision with root package name */
        final af f6053c;

        /* renamed from: d, reason: collision with root package name */
        private Date f6054d;

        /* renamed from: e, reason: collision with root package name */
        private String f6055e;

        /* renamed from: f, reason: collision with root package name */
        private Date f6056f;

        /* renamed from: g, reason: collision with root package name */
        private String f6057g;

        /* renamed from: h, reason: collision with root package name */
        private Date f6058h;

        /* renamed from: i, reason: collision with root package name */
        private long f6059i;

        /* renamed from: j, reason: collision with root package name */
        private long f6060j;

        /* renamed from: k, reason: collision with root package name */
        private String f6061k;

        /* renamed from: l, reason: collision with root package name */
        private int f6062l;

        public a(long j2, ad adVar, af afVar) {
            this.f6062l = -1;
            this.f6051a = j2;
            this.f6052b = adVar;
            this.f6053c = afVar;
            if (afVar != null) {
                this.f6059i = afVar.l();
                this.f6060j = afVar.m();
                u uVarF = afVar.f();
                int iA = uVarF.a();
                for (int i2 = 0; i2 < iA; i2++) {
                    String strA = uVarF.a(i2);
                    String strB = uVarF.b(i2);
                    if ("Date".equalsIgnoreCase(strA)) {
                        this.f6054d = com.anythink.core.common.n.b.a.c.d.a(strB);
                        this.f6055e = strB;
                    } else if ("Expires".equalsIgnoreCase(strA)) {
                        this.f6058h = com.anythink.core.common.n.b.a.c.d.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f6056f = com.anythink.core.common.n.b.a.c.d.a(strB);
                        this.f6057g = strB;
                    } else if ("ETag".equalsIgnoreCase(strA)) {
                        this.f6061k = strB;
                    } else if ("Age".equalsIgnoreCase(strA)) {
                        this.f6062l = com.anythink.core.common.n.b.a.c.e.b(strB, -1);
                    }
                }
            }
        }

        private static boolean a(ad adVar) {
            return (adVar.a("If-Modified-Since") == null && adVar.a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00c3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.anythink.core.common.n.b.a.a.c b() {
            /*
                Method dump skipped, instructions count: 453
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.a.c.a.b():com.anythink.core.common.n.b.a.a.c");
        }

        private long c() {
            if (this.f6053c.k().c() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.c());
            }
            if (this.f6058h != null) {
                Date date = this.f6054d;
                long time = this.f6058h.getTime() - (date != null ? date.getTime() : this.f6060j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f6056f != null && this.f6053c.a().a().k() == null) {
                Date date2 = this.f6054d;
                long time2 = (date2 != null ? date2.getTime() : this.f6059i) - this.f6056f.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        private long d() {
            Date date = this.f6054d;
            long jMax = date != null ? Math.max(0L, this.f6060j - date.getTime()) : 0L;
            int i2 = this.f6062l;
            if (i2 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i2));
            }
            long j2 = this.f6060j;
            return jMax + (j2 - this.f6059i) + (this.f6051a - j2);
        }

        private boolean e() {
            return this.f6053c.k().c() == -1 && this.f6058h == null;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01c1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.anythink.core.common.n.b.a.a.c a() {
            /*
                Method dump skipped, instructions count: 478
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.a.c.a.a():com.anythink.core.common.n.b.a.a.c");
        }
    }

    public c(ad adVar, af afVar) {
        this.f6049a = adVar;
        this.f6050b = afVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.k().d() == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.anythink.core.common.n.b.af r3, com.anythink.core.common.n.b.ad r4) {
        /*
            int r0 = r3.c()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L59
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L59
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L59
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L59
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L59
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L59
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L59
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L59
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L59
            switch(r0) {
                case 300: goto L59;
                case 301: goto L59;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L58
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.a(r0)
            if (r0 != 0) goto L59
            com.anythink.core.common.n.b.d r0 = r3.k()
            int r0 = r0.c()
            r1 = -1
            if (r0 != r1) goto L59
            com.anythink.core.common.n.b.d r0 = r3.k()
            boolean r0 = r0.e()
            if (r0 != 0) goto L59
            com.anythink.core.common.n.b.d r0 = r3.k()
            boolean r0 = r0.d()
            if (r0 != 0) goto L59
        L58:
            return r2
        L59:
            com.anythink.core.common.n.b.d r3 = r3.k()
            boolean r3 = r3.b()
            if (r3 != 0) goto L6f
            com.anythink.core.common.n.b.d r3 = r4.f()
            boolean r3 = r3.b()
            if (r3 != 0) goto L6f
            r3 = 1
            return r3
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.a.c.a(com.anythink.core.common.n.b.af, com.anythink.core.common.n.b.ad):boolean");
    }
}
