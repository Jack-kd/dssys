package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;

/* renamed from: kotlin.collections.g, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1602g extends AbstractSet implements Set, B1.a {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
