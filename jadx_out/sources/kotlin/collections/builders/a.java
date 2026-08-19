package kotlin.collections.builders;

import java.util.Map;
import kotlin.collections.AbstractC1602g;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class a extends AbstractC1602g {
    public final boolean a(Map.Entry element) {
        j.e(element, "element");
        return b(element);
    }

    public abstract boolean b(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return a((Map.Entry) obj);
        }
        return false;
    }

    public abstract /* bridge */ boolean d(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return d((Map.Entry) obj);
        }
        return false;
    }
}
