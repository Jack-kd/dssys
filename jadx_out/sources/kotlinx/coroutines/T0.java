package kotlinx.coroutines;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public final class T0 implements i.b, i.c {

    /* renamed from: b, reason: collision with root package name */
    public static final T0 f51535b = new T0();

    @Override // kotlin.coroutines.i
    public Object fold(Object obj, Function2 function2) {
        return i.b.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.i.b, kotlin.coroutines.i
    public i.b get(i.c cVar) {
        return i.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.i.b
    public i.c getKey() {
        return this;
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i minusKey(i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i plus(kotlin.coroutines.i iVar) {
        return i.b.a.d(this, iVar);
    }
}
