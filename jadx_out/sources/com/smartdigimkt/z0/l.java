package com.smartdigimkt.z0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class l implements b {

    /* renamed from: b, reason: collision with root package name */
    public int f45379b;

    /* renamed from: c, reason: collision with root package name */
    public int f45380c;

    /* renamed from: d, reason: collision with root package name */
    public int f45381d = 0;

    /* renamed from: e, reason: collision with root package name */
    public a[] f45382e = new a[100];

    /* renamed from: a, reason: collision with root package name */
    public final a[] f45378a = new a[1];

    public final synchronized void a(int i2) {
        boolean z2 = i2 < this.f45379b;
        this.f45379b = i2;
        if (z2) {
            a();
        }
    }

    public final synchronized void a(a[] aVarArr) {
        try {
            int i2 = this.f45381d;
            int length = aVarArr.length + i2;
            a[] aVarArr2 = this.f45382e;
            if (length >= aVarArr2.length) {
                this.f45382e = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i2 + aVarArr.length));
            }
            for (a aVar : aVarArr) {
                byte[] bArr = aVar.f45349a;
                if (bArr != null && bArr.length != 65536) {
                    StringBuilder sb = new StringBuilder("Unexpected allocation: ");
                    sb.append(System.identityHashCode(aVar.f45349a));
                    sb.append(", ");
                    sb.append(System.identityHashCode(null));
                    sb.append(", ");
                    throw new IllegalArgumentException(com.smartdigimkt.c0.g.a(sb, aVar.f45349a.length, ", 65536"));
                }
                a[] aVarArr3 = this.f45382e;
                int i3 = this.f45381d;
                this.f45381d = i3 + 1;
                aVarArr3[i3] = aVar;
            }
            this.f45380c -= aVarArr.length;
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        int i2 = this.f45379b;
        int i3 = com.smartdigimkt.a1.t.f39303a;
        int iMax = Math.max(0, ((i2 + 65535) / 65536) - this.f45380c);
        int i4 = this.f45381d;
        if (iMax >= i4) {
            return;
        }
        Arrays.fill(this.f45382e, iMax, i4, (Object) null);
        this.f45381d = iMax;
    }
}
