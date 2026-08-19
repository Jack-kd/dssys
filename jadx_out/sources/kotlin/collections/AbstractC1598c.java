package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: kotlin.collections.c, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1598c implements Iterator, B1.a {

    /* renamed from: b, reason: collision with root package name */
    public int f51352b;

    /* renamed from: c, reason: collision with root package name */
    public Object f51353c;

    public abstract void a();

    public final void b() {
        this.f51352b = 2;
    }

    public final void d(Object obj) {
        this.f51353c = obj;
        this.f51352b = 1;
    }

    public final boolean e() {
        this.f51352b = 3;
        a();
        return this.f51352b == 1;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i2 = this.f51352b;
        if (i2 == 0) {
            return e();
        }
        if (i2 == 1) {
            return true;
        }
        if (i2 == 2) {
            return false;
        }
        throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
    }

    @Override // java.util.Iterator
    public Object next() {
        int i2 = this.f51352b;
        if (i2 == 1) {
            this.f51352b = 0;
            return this.f51353c;
        }
        if (i2 == 2 || !e()) {
            throw new NoSuchElementException();
        }
        this.f51352b = 0;
        return this.f51353c;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
