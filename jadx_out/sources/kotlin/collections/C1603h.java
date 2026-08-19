package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;

/* renamed from: kotlin.collections.h, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1603h implements Collection, B1.a {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f51360b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f51361c;

    public C1603h(Object[] values, boolean z2) {
        kotlin.jvm.internal.j.e(values, "values");
        this.f51360b = values;
        this.f51361c = z2;
    }

    public int a() {
        return this.f51360b.length;
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return m.A(this.f51360b, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f51360b.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return kotlin.jvm.internal.b.a(this.f51360b);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.j.e(array, "array");
        return kotlin.jvm.internal.e.b(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return p.b(this.f51360b, this.f51361c);
    }
}
