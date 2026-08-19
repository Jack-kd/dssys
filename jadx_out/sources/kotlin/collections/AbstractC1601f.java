package kotlin.collections;

import java.util.AbstractList;
import java.util.List;

/* renamed from: kotlin.collections.f, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1601f extends AbstractList implements List, B1.b {
    public abstract int getSize();

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i2) {
        return removeAt(i2);
    }

    public abstract Object removeAt(int i2);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }
}
