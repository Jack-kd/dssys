package com.czhj.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
final class MutableOnWriteList<T> extends AbstractList<T> implements Serializable, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    List<T> f29747a;

    /* renamed from: b, reason: collision with root package name */
    private final List<T> f29748b;

    public MutableOnWriteList(List<T> list) {
        this.f29748b = list;
        this.f29747a = list;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new ArrayList(this.f29747a);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, T t2) {
        if (this.f29747a == this.f29748b) {
            this.f29747a = new ArrayList(this.f29748b);
        }
        this.f29747a.add(i2, t2);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i2) {
        return this.f29747a.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i2) {
        if (this.f29747a == this.f29748b) {
            this.f29747a = new ArrayList(this.f29748b);
        }
        return this.f29747a.remove(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i2, T t2) {
        if (this.f29747a == this.f29748b) {
            this.f29747a = new ArrayList(this.f29748b);
        }
        return this.f29747a.set(i2, t2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f29747a.size();
    }
}
