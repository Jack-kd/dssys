package com.anythink.core.common.n.c;

/* loaded from: classes2.dex */
final class t {

    /* renamed from: a, reason: collision with root package name */
    static final long f7135a = 65536;

    /* renamed from: b, reason: collision with root package name */
    static s f7136b;

    /* renamed from: c, reason: collision with root package name */
    static long f7137c;

    private t() {
    }

    public static s a() {
        synchronized (t.class) {
            s sVar = f7136b;
            if (sVar == null) {
                return new s();
            }
            f7136b = sVar.f7133h;
            sVar.f7133h = null;
            f7137c -= 8192;
            return sVar;
        }
    }

    public static void a(s sVar) {
        if (sVar.f7133h == null && sVar.f7134i == null) {
            if (sVar.f7131f) {
                return;
            }
            synchronized (t.class) {
                try {
                    long j2 = f7137c;
                    if (j2 + 8192 > 65536) {
                        return;
                    }
                    f7137c = j2 + 8192;
                    sVar.f7133h = f7136b;
                    sVar.f7130e = 0;
                    sVar.f7129d = 0;
                    f7136b = sVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
