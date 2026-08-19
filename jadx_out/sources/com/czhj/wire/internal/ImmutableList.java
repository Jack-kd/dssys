package com.czhj.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
final class ImmutableList<T> extends AbstractList<T> implements Serializable, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<T> f29746a;

    public ImmutableList(List<T> list) {
        this.f29746a = new ArrayList<>(list);
    }

    private Object writeReplace() throws ObjectStreamException {
        return Collections.unmodifiableList(this.f29746a);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i2) {
        return this.f29746a.get(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f29746a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return this.f29746a.toArray();
    }
}
