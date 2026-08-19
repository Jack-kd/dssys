package kotlin.coroutines;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class b implements i.c {

    /* renamed from: b, reason: collision with root package name */
    public final Function1 f51369b;

    /* renamed from: c, reason: collision with root package name */
    public final i.c f51370c;

    public b(i.c baseKey, Function1 safeCast) {
        j.e(baseKey, "baseKey");
        j.e(safeCast, "safeCast");
        this.f51369b = safeCast;
        this.f51370c = baseKey instanceof b ? ((b) baseKey).f51370c : baseKey;
    }

    public final boolean a(i.c key) {
        j.e(key, "key");
        return key == this || this.f51370c == key;
    }

    public final i.b b(i.b element) {
        j.e(element, "element");
        return (i.b) this.f51369b.invoke(element);
    }
}
