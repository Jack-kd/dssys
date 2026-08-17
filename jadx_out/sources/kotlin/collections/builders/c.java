package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class c extends a {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f51349b;

    public c(MapBuilder backing) {
        j.e(backing, "backing");
        this.f51349b = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        j.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.builders.a
    public boolean b(Map.Entry element) {
        j.e(element, "element");
        return this.f51349b.containsEntry$kotlin_stdlib(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f51349b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        j.e(elements, "elements");
        return this.f51349b.containsAllEntries$kotlin_stdlib(elements);
    }

    @Override // kotlin.collections.builders.a
    public boolean d(Map.Entry element) {
        j.e(element, "element");
        return this.f51349b.removeEntry$kotlin_stdlib(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean add(Map.Entry element) {
        j.e(element, "element");
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.AbstractC1602g
    public int getSize() {
        return this.f51349b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f51349b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return this.f51349b.entriesIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        j.e(elements, "elements");
        this.f51349b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        j.e(elements, "elements");
        this.f51349b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
