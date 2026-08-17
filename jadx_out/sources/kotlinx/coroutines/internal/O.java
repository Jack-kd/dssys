package kotlinx.coroutines.internal;

import kotlinx.coroutines.M0;

/* loaded from: classes5.dex */
public final class O {

    /* renamed from: a, reason: collision with root package name */
    public final kotlin.coroutines.i f51769a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f51770b;

    /* renamed from: c, reason: collision with root package name */
    public final M0[] f51771c;

    /* renamed from: d, reason: collision with root package name */
    public int f51772d;

    public O(kotlin.coroutines.i iVar, int i2) {
        this.f51769a = iVar;
        this.f51770b = new Object[i2];
        this.f51771c = new M0[i2];
    }

    public final void a(M0 m02, Object obj) {
        Object[] objArr = this.f51770b;
        int i2 = this.f51772d;
        objArr[i2] = obj;
        M0[] m0Arr = this.f51771c;
        this.f51772d = i2 + 1;
        kotlin.jvm.internal.j.c(m02, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        m0Arr[i2] = m02;
    }

    public final void b(kotlin.coroutines.i iVar) {
        int length = this.f51771c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            M0 m02 = this.f51771c[length];
            kotlin.jvm.internal.j.b(m02);
            m02.g(iVar, this.f51770b[length]);
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }
}
