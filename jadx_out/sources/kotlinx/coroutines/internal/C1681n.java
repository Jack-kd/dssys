package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: kotlinx.coroutines.internal.n, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1681n {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51795a = AtomicReferenceFieldUpdater.newUpdater(C1681n.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public C1681n(boolean z2) {
        this._cur$volatile = new C1682o(8, z2);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51795a;
        while (true) {
            C1682o c1682o = (C1682o) atomicReferenceFieldUpdater.get(this);
            int iA = c1682o.a(obj);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.a.a(f51795a, this, c1682o, c1682o.l());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51795a;
        while (true) {
            C1682o c1682o = (C1682o) atomicReferenceFieldUpdater.get(this);
            if (c1682o.d()) {
                return;
            } else {
                androidx.concurrent.futures.a.a(f51795a, this, c1682o, c1682o.l());
            }
        }
    }

    public final int c() {
        return ((C1682o) f51795a.get(this)).g();
    }

    public final Object e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51795a;
        while (true) {
            C1682o c1682o = (C1682o) atomicReferenceFieldUpdater.get(this);
            Object objM = c1682o.m();
            if (objM != C1682o.f51799h) {
                return objM;
            }
            androidx.concurrent.futures.a.a(f51795a, this, c1682o, c1682o.l());
        }
    }
}
