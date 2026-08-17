package com.byazt.ndb;

@com.byazt.kj.hp(hp = {0, 1, 832, 94})
/* loaded from: classes3.dex */
public final class eb {
    public static a hp;

    /* renamed from: l, reason: collision with root package name */
    public static long f23539l;

    private eb() {
    }

    public static a hp() {
        synchronized (eb.class) {
            try {
                a aVar = hp;
                if (aVar == null) {
                    return new a();
                }
                hp = aVar.f23535a;
                aVar.f23535a = null;
                f23539l -= 8192;
                return aVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(a aVar) {
        if (aVar.f23535a == null && aVar.eb == null) {
            if (aVar.f23536j) {
                return;
            }
            synchronized (eb.class) {
                try {
                    long j2 = f23539l;
                    if (j2 + 8192 > 65536) {
                        return;
                    }
                    f23539l = j2 + 8192;
                    aVar.f23535a = hp;
                    aVar.jx = 0;
                    aVar.f23537l = 0;
                    hp = aVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
