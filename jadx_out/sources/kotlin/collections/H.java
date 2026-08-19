package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;

/* loaded from: classes5.dex */
public final class H extends AbstractC1599d implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f51326b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51327c;

    /* renamed from: d, reason: collision with root package name */
    public int f51328d;

    /* renamed from: e, reason: collision with root package name */
    public int f51329e;

    public static final class a extends AbstractC1598c {

        /* renamed from: d, reason: collision with root package name */
        public int f51330d;

        /* renamed from: e, reason: collision with root package name */
        public int f51331e;

        public a() {
            this.f51330d = H.this.size();
            this.f51331e = H.this.f51328d;
        }

        @Override // kotlin.collections.AbstractC1598c
        public void a() {
            if (this.f51330d == 0) {
                b();
                return;
            }
            d(H.this.f51326b[this.f51331e]);
            this.f51331e = (this.f51331e + 1) % H.this.f51327c;
            this.f51330d--;
        }
    }

    public H(Object[] buffer, int i2) {
        kotlin.jvm.internal.j.e(buffer, "buffer");
        this.f51326b = buffer;
        if (i2 < 0) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i2).toString());
        }
        if (i2 <= buffer.length) {
            this.f51327c = buffer.length;
            this.f51329e = i2;
            return;
        }
        throw new IllegalArgumentException(("ring buffer filled size: " + i2 + " cannot be larger than the buffer size: " + buffer.length).toString());
    }

    public final void g(Object obj) {
        if (i()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f51326b[(this.f51328d + size()) % this.f51327c] = obj;
        this.f51329e = size() + 1;
    }

    @Override // kotlin.collections.AbstractC1599d, java.util.List
    public Object get(int i2) {
        AbstractC1599d.Companion.b(i2, size());
        return this.f51326b[(this.f51328d + i2) % this.f51327c];
    }

    @Override // kotlin.collections.AbstractC1597b
    public int getSize() {
        return this.f51329e;
    }

    public final H h(int i2) {
        Object[] array;
        int i3 = this.f51327c;
        int iD = E1.f.d(i3 + (i3 >> 1) + 1, i2);
        if (this.f51328d == 0) {
            array = Arrays.copyOf(this.f51326b, iD);
            kotlin.jvm.internal.j.d(array, "copyOf(...)");
        } else {
            array = toArray(new Object[iD]);
        }
        return new H(array, size());
    }

    public final boolean i() {
        return size() == this.f51327c;
    }

    @Override // kotlin.collections.AbstractC1599d, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new a();
    }

    public final void j(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i2).toString());
        }
        if (i2 > size()) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i2 + ", size = " + size()).toString());
        }
        if (i2 > 0) {
            int i3 = this.f51328d;
            int i4 = (i3 + i2) % this.f51327c;
            if (i3 > i4) {
                l.r(this.f51326b, null, i3, this.f51327c);
                l.r(this.f51326b, null, 0, i4);
            } else {
                l.r(this.f51326b, null, i3, i4);
            }
            this.f51328d = i4;
            this.f51329e = size() - i2;
        }
    }

    @Override // kotlin.collections.AbstractC1597b, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.j.e(array, "array");
        if (array.length < size()) {
            array = Arrays.copyOf(array, size());
            kotlin.jvm.internal.j.d(array, "copyOf(...)");
        }
        int size = size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = this.f51328d; i3 < size && i4 < this.f51327c; i4++) {
            array[i3] = this.f51326b[i4];
            i3++;
        }
        while (i3 < size) {
            array[i3] = this.f51326b[i2];
            i3++;
            i2++;
        }
        return p.f(size, array);
    }

    public H(int i2) {
        this(new Object[i2], 0);
    }

    @Override // kotlin.collections.AbstractC1597b, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
