package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractC1600e;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class e extends AbstractC1600e implements Collection, B1.a {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f51351b;

    public e(MapBuilder backing) {
        j.e(backing, "backing");
        this.f51351b = backing;
    }

    @Override // kotlin.collections.AbstractC1600e
    public int a() {
        return this.f51351b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection elements) {
        j.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f51351b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f51351b.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f51351b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.f51351b.valuesIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.f51351b.removeValue$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection elements) {
        j.e(elements, "elements");
        this.f51351b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection elements) {
        j.e(elements, "elements");
        this.f51351b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
