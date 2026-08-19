package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public final class a implements Iterator, B1.a {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f51398b;

    /* renamed from: c, reason: collision with root package name */
    public int f51399c;

    public a(Object[] array) {
        j.e(array, "array");
        this.f51398b = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f51399c < this.f51398b.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            Object[] objArr = this.f51398b;
            int i2 = this.f51399c;
            this.f51399c = i2 + 1;
            return objArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f51399c--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
