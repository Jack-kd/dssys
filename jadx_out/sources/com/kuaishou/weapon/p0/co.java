package com.kuaishou.weapon.p0;

import android.os.Build;

/* loaded from: classes4.dex */
public class co {

    /* renamed from: a, reason: collision with root package name */
    static co f31004a;

    /* renamed from: b, reason: collision with root package name */
    static co f31005b;

    /* renamed from: c, reason: collision with root package name */
    static co f31006c;

    /* renamed from: d, reason: collision with root package name */
    private long f31007d;

    /* renamed from: e, reason: collision with root package name */
    private a f31008e;

    public enum a {
        DWORD(4),
        QWORD(8);


        /* renamed from: c, reason: collision with root package name */
        int f31012c;

        a(int i2) {
            this.f31012c = i2;
        }
    }

    static {
        c();
    }

    private static void c() {
        f31004a = new co();
        f31005b = new co();
        f31006c = new co();
        co coVar = f31005b;
        a aVar = a.DWORD;
        coVar.a(aVar);
        int i2 = Build.VERSION.SDK_INT;
        if (!cp.a()) {
            f31004a.a(aVar);
            f31006c.a(aVar);
            switch (i2) {
                case 24:
                case 25:
                    f31004a.a(32L);
                    f31006c.a(28L);
                    f31005b.a(4L);
                    return;
                case 26:
                case 27:
                    f31004a.a(28L);
                    f31006c.a(24L);
                    f31005b.a(4L);
                    return;
                case 28:
                case 29:
                    f31004a.a(24L);
                    f31006c.a(20L);
                    f31005b.a(4L);
                    return;
                default:
                    throw new RuntimeException("API LEVEL: " + i2 + " is not supported now : (");
            }
        }
        co coVar2 = f31004a;
        a aVar2 = a.QWORD;
        coVar2.a(aVar2);
        f31006c.a(aVar2);
        switch (i2) {
            case 24:
            case 25:
                f31004a.a(48L);
                f31006c.a(40L);
                f31005b.a(4L);
                return;
            case 26:
            case 27:
                f31004a.a(40L);
                f31006c.a(32L);
                f31005b.a(4L);
                return;
            case 28:
            case 29:
                f31004a.a(32L);
                f31006c.a(24L);
                f31005b.a(4L);
                return;
            default:
                throw new RuntimeException("API LEVEL: " + i2 + " is not supported now : (");
        }
    }

    public long a() {
        return this.f31007d;
    }

    public a b() {
        return this.f31008e;
    }

    public void a(long j2) {
        this.f31007d = j2;
    }

    public void a(a aVar) {
        this.f31008e = aVar;
    }
}
