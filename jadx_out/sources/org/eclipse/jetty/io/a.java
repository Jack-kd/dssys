package org.eclipse.jetty.io;

import L1.h;
import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public abstract class a implements Buffers {

    /* renamed from: a, reason: collision with root package name */
    public final Buffers.Type f52379a;

    /* renamed from: b, reason: collision with root package name */
    public final int f52380b;

    /* renamed from: c, reason: collision with root package name */
    public final Buffers.Type f52381c;

    /* renamed from: d, reason: collision with root package name */
    public final int f52382d;

    /* renamed from: e, reason: collision with root package name */
    public final Buffers.Type f52383e;

    /* renamed from: org.eclipse.jetty.io.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0880a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52384a;

        static {
            int[] iArr = new int[Buffers.Type.values().length];
            f52384a = iArr;
            try {
                iArr[Buffers.Type.BYTE_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52384a[Buffers.Type.DIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52384a[Buffers.Type.INDIRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(Buffers.Type type, int i2, Buffers.Type type2, int i3, Buffers.Type type3) {
        this.f52379a = type;
        this.f52380b = i2;
        this.f52381c = type2;
        this.f52382d = i3;
        this.f52383e = type3;
    }

    public int c() {
        return this.f52382d;
    }

    public int d() {
        return this.f52380b;
    }

    public final boolean e(L1.d dVar) {
        if (dVar.w0() == this.f52382d) {
            int i2 = C0880a.f52384a[this.f52381c.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    return dVar instanceof org.eclipse.jetty.io.nio.c;
                }
                if (i2 == 3) {
                    return dVar instanceof org.eclipse.jetty.io.nio.d;
                }
            } else if ((dVar instanceof h) && !(dVar instanceof org.eclipse.jetty.io.nio.d)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(L1.d dVar) {
        if (dVar.w0() == this.f52380b) {
            int i2 = C0880a.f52384a[this.f52379a.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    return dVar instanceof org.eclipse.jetty.io.nio.c;
                }
                if (i2 == 3) {
                    return dVar instanceof org.eclipse.jetty.io.nio.d;
                }
            } else if ((dVar instanceof h) && !(dVar instanceof org.eclipse.jetty.io.nio.d)) {
                return true;
            }
        }
        return false;
    }

    public final L1.d g() {
        int i2 = C0880a.f52384a[this.f52381c.ordinal()];
        if (i2 == 1) {
            return new h(this.f52382d);
        }
        if (i2 == 2) {
            return new org.eclipse.jetty.io.nio.c(this.f52382d);
        }
        if (i2 == 3) {
            return new org.eclipse.jetty.io.nio.d(this.f52382d);
        }
        throw new IllegalStateException();
    }

    public final L1.d h(int i2) {
        int i3 = C0880a.f52384a[this.f52383e.ordinal()];
        if (i3 == 1) {
            return new h(i2);
        }
        if (i3 == 2) {
            return new org.eclipse.jetty.io.nio.c(i2);
        }
        if (i3 == 3) {
            return new org.eclipse.jetty.io.nio.d(i2);
        }
        throw new IllegalStateException();
    }

    public final L1.d i() {
        int i2 = C0880a.f52384a[this.f52379a.ordinal()];
        if (i2 == 1) {
            return new h(this.f52380b);
        }
        if (i2 == 2) {
            return new org.eclipse.jetty.io.nio.c(this.f52380b);
        }
        if (i2 == 3) {
            return new org.eclipse.jetty.io.nio.d(this.f52380b);
        }
        throw new IllegalStateException();
    }
}
