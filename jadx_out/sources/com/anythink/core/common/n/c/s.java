package com.anythink.core.common.n.c;

/* loaded from: classes2.dex */
final class s {

    /* renamed from: a, reason: collision with root package name */
    static final int f7126a = 8192;

    /* renamed from: b, reason: collision with root package name */
    static final int f7127b = 1024;

    /* renamed from: c, reason: collision with root package name */
    final byte[] f7128c;

    /* renamed from: d, reason: collision with root package name */
    int f7129d;

    /* renamed from: e, reason: collision with root package name */
    int f7130e;

    /* renamed from: f, reason: collision with root package name */
    boolean f7131f;

    /* renamed from: g, reason: collision with root package name */
    boolean f7132g;

    /* renamed from: h, reason: collision with root package name */
    s f7133h;

    /* renamed from: i, reason: collision with root package name */
    s f7134i;

    public s() {
        this.f7128c = new byte[8192];
        this.f7132g = true;
        this.f7131f = false;
    }

    public final s a() {
        this.f7131f = true;
        return new s(this.f7128c, this.f7129d, this.f7130e, true, false);
    }

    public final s b() {
        return new s((byte[]) this.f7128c.clone(), this.f7129d, this.f7130e, false, true);
    }

    public final s c() {
        s sVar = this.f7133h;
        s sVar2 = sVar != this ? sVar : null;
        s sVar3 = this.f7134i;
        sVar3.f7133h = sVar;
        this.f7133h.f7134i = sVar3;
        this.f7133h = null;
        this.f7134i = null;
        return sVar2;
    }

    public final void d() {
        s sVar = this.f7134i;
        if (sVar == this) {
            throw new IllegalStateException();
        }
        if (sVar.f7132g) {
            int i2 = this.f7130e - this.f7129d;
            if (i2 > (8192 - sVar.f7130e) + (sVar.f7131f ? 0 : sVar.f7129d)) {
                return;
            }
            a(sVar, i2);
            c();
            t.a(this);
        }
    }

    public final s a(s sVar) {
        sVar.f7134i = this;
        sVar.f7133h = this.f7133h;
        this.f7133h.f7134i = sVar;
        this.f7133h = sVar;
        return sVar;
    }

    public s(byte[] bArr, int i2, int i3, boolean z2, boolean z3) {
        this.f7128c = bArr;
        this.f7129d = i2;
        this.f7130e = i3;
        this.f7131f = z2;
        this.f7132g = z3;
    }

    public final s a(int i2) {
        s sVarA;
        if (i2 > 0 && i2 <= this.f7130e - this.f7129d) {
            if (i2 >= 1024) {
                sVarA = a();
            } else {
                sVarA = t.a();
                System.arraycopy(this.f7128c, this.f7129d, sVarA.f7128c, 0, i2);
            }
            sVarA.f7130e = sVarA.f7129d + i2;
            this.f7129d += i2;
            this.f7134i.a(sVarA);
            return sVarA;
        }
        throw new IllegalArgumentException();
    }

    public final void a(s sVar, int i2) {
        if (sVar.f7132g) {
            int i3 = sVar.f7130e;
            if (i3 + i2 > 8192) {
                if (!sVar.f7131f) {
                    int i4 = sVar.f7129d;
                    if ((i3 + i2) - i4 <= 8192) {
                        byte[] bArr = sVar.f7128c;
                        System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
                        sVar.f7130e -= sVar.f7129d;
                        sVar.f7129d = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f7128c, this.f7129d, sVar.f7128c, sVar.f7130e, i2);
            sVar.f7130e += i2;
            this.f7129d += i2;
            return;
        }
        throw new IllegalArgumentException();
    }
}
