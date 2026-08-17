package com.ubix.ssp.ad.e.y.c;

import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    protected volatile int f47829a = -1;

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public f clone() {
        return (f) super.clone();
    }

    public abstract f a(a aVar);

    public int b() {
        return 0;
    }

    public int c() {
        if (this.f47829a < 0) {
            d();
        }
        return this.f47829a;
    }

    public int d() {
        int iB = b();
        this.f47829a = iB;
        return iB;
    }

    public String toString() {
        return g.a(this);
    }

    public static final <T extends f> T a(T t2, byte[] bArr) {
        return (T) a(t2, bArr, 0, bArr.length);
    }

    public static final void b(f fVar, byte[] bArr, int i2, int i3) {
        try {
            b bVarA = b.a(bArr, i2, i3);
            fVar.a(bVarA);
            bVarA.a();
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public static final <T extends f> T a(T t2, byte[] bArr, int i2, int i3) throws d {
        try {
            a aVarA = a.a(bArr, i2, i3);
            t2.a(aVarA);
            aVarA.a(0);
            return t2;
        } catch (d e2) {
            throw e2;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public void a(b bVar) {
    }

    public static final byte[] a(f fVar) {
        int iD = fVar.d();
        byte[] bArr = new byte[iD];
        b(fVar, bArr, 0, iD);
        return bArr;
    }
}
