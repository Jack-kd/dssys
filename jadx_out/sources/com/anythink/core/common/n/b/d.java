package com.anythink.core.common.n.b;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f6783a;

    /* renamed from: b, reason: collision with root package name */
    public static final d f6784b;

    /* renamed from: c, reason: collision with root package name */
    String f6785c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f6786d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f6787e;

    /* renamed from: f, reason: collision with root package name */
    private final int f6788f;

    /* renamed from: g, reason: collision with root package name */
    private final int f6789g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f6790h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f6791i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f6792j;

    /* renamed from: k, reason: collision with root package name */
    private final int f6793k;

    /* renamed from: l, reason: collision with root package name */
    private final int f6794l;

    /* renamed from: m, reason: collision with root package name */
    private final boolean f6795m;

    /* renamed from: n, reason: collision with root package name */
    private final boolean f6796n;

    /* renamed from: o, reason: collision with root package name */
    private final boolean f6797o;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f6798a;

        /* renamed from: b, reason: collision with root package name */
        boolean f6799b;

        /* renamed from: c, reason: collision with root package name */
        int f6800c = -1;

        /* renamed from: d, reason: collision with root package name */
        int f6801d = -1;

        /* renamed from: e, reason: collision with root package name */
        int f6802e = -1;

        /* renamed from: f, reason: collision with root package name */
        boolean f6803f;

        /* renamed from: g, reason: collision with root package name */
        boolean f6804g;

        /* renamed from: h, reason: collision with root package name */
        boolean f6805h;

        private a a(int i2, TimeUnit timeUnit) {
            if (i2 < 0) {
                throw new IllegalArgumentException("maxAge < 0: ".concat(String.valueOf(i2)));
            }
            long seconds = timeUnit.toSeconds(i2);
            this.f6800c = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        private a b() {
            this.f6798a = true;
            return this;
        }

        private a c() {
            this.f6799b = true;
            return this;
        }

        private a d() {
            this.f6803f = true;
            return this;
        }

        private a e() {
            this.f6804g = true;
            return this;
        }

        private a f() {
            this.f6805h = true;
            return this;
        }

        private a b(int i2, TimeUnit timeUnit) {
            if (i2 < 0) {
                throw new IllegalArgumentException("minFresh < 0: ".concat(String.valueOf(i2)));
            }
            long seconds = timeUnit.toSeconds(i2);
            this.f6802e = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        private a a(TimeUnit timeUnit) {
            long seconds = timeUnit.toSeconds(2147483647L);
            this.f6801d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public final d a() {
            return new d(this);
        }
    }

    static {
        a aVar = new a();
        aVar.f6798a = true;
        f6783a = aVar.a();
        a aVar2 = new a();
        aVar2.f6803f = true;
        long seconds = TimeUnit.SECONDS.toSeconds(2147483647L);
        aVar2.f6801d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
        f6784b = aVar2.a();
    }

    private d(boolean z2, boolean z3, int i2, int i3, boolean z4, boolean z5, boolean z6, int i4, int i5, boolean z7, boolean z8, boolean z9, String str) {
        this.f6786d = z2;
        this.f6787e = z3;
        this.f6788f = i2;
        this.f6789g = i3;
        this.f6790h = z4;
        this.f6791i = z5;
        this.f6792j = z6;
        this.f6793k = i4;
        this.f6794l = i5;
        this.f6795m = z7;
        this.f6796n = z8;
        this.f6797o = z9;
        this.f6785c = str;
    }

    private int j() {
        return this.f6789g;
    }

    private boolean k() {
        return this.f6796n;
    }

    private boolean l() {
        return this.f6797o;
    }

    private String m() {
        StringBuilder sb = new StringBuilder();
        if (this.f6786d) {
            sb.append("no-cache, ");
        }
        if (this.f6787e) {
            sb.append("no-store, ");
        }
        if (this.f6788f != -1) {
            sb.append("max-age=");
            sb.append(this.f6788f);
            sb.append(", ");
        }
        if (this.f6789g != -1) {
            sb.append("s-maxage=");
            sb.append(this.f6789g);
            sb.append(", ");
        }
        if (this.f6790h) {
            sb.append("private, ");
        }
        if (this.f6791i) {
            sb.append("public, ");
        }
        if (this.f6792j) {
            sb.append("must-revalidate, ");
        }
        if (this.f6793k != -1) {
            sb.append("max-stale=");
            sb.append(this.f6793k);
            sb.append(", ");
        }
        if (this.f6794l != -1) {
            sb.append("min-fresh=");
            sb.append(this.f6794l);
            sb.append(", ");
        }
        if (this.f6795m) {
            sb.append("only-if-cached, ");
        }
        if (this.f6796n) {
            sb.append("no-transform, ");
        }
        if (this.f6797o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public final boolean a() {
        return this.f6786d;
    }

    public final boolean b() {
        return this.f6787e;
    }

    public final int c() {
        return this.f6788f;
    }

    public final boolean d() {
        return this.f6790h;
    }

    public final boolean e() {
        return this.f6791i;
    }

    public final boolean f() {
        return this.f6792j;
    }

    public final int g() {
        return this.f6793k;
    }

    public final int h() {
        return this.f6794l;
    }

    public final boolean i() {
        return this.f6795m;
    }

    public final String toString() {
        String string;
        String str = this.f6785c;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f6786d) {
            sb.append("no-cache, ");
        }
        if (this.f6787e) {
            sb.append("no-store, ");
        }
        if (this.f6788f != -1) {
            sb.append("max-age=");
            sb.append(this.f6788f);
            sb.append(", ");
        }
        if (this.f6789g != -1) {
            sb.append("s-maxage=");
            sb.append(this.f6789g);
            sb.append(", ");
        }
        if (this.f6790h) {
            sb.append("private, ");
        }
        if (this.f6791i) {
            sb.append("public, ");
        }
        if (this.f6792j) {
            sb.append("must-revalidate, ");
        }
        if (this.f6793k != -1) {
            sb.append("max-stale=");
            sb.append(this.f6793k);
            sb.append(", ");
        }
        if (this.f6794l != -1) {
            sb.append("min-fresh=");
            sb.append(this.f6794l);
            sb.append(", ");
        }
        if (this.f6795m) {
            sb.append("only-if-cached, ");
        }
        if (this.f6796n) {
            sb.append("no-transform, ");
        }
        if (this.f6797o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            string = "";
        } else {
            sb.delete(sb.length() - 2, sb.length());
            string = sb.toString();
        }
        this.f6785c = string;
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.anythink.core.common.n.b.d a(com.anythink.core.common.n.b.u r23) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.d.a(com.anythink.core.common.n.b.u):com.anythink.core.common.n.b.d");
    }

    public d(a aVar) {
        this.f6786d = aVar.f6798a;
        this.f6787e = aVar.f6799b;
        this.f6788f = aVar.f6800c;
        this.f6789g = -1;
        this.f6790h = false;
        this.f6791i = false;
        this.f6792j = false;
        this.f6793k = aVar.f6801d;
        this.f6794l = aVar.f6802e;
        this.f6795m = aVar.f6803f;
        this.f6796n = aVar.f6804g;
        this.f6797o = aVar.f6805h;
    }
}
