package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public final class g implements kotlin.coroutines.i {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ kotlin.coroutines.i f51720b;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f51721c;

    public g(Throwable th, kotlin.coroutines.i iVar) {
        this.f51720b = iVar;
        this.f51721c = th;
    }

    @Override // kotlin.coroutines.i
    public Object fold(Object obj, Function2 function2) {
        return this.f51720b.fold(obj, function2);
    }

    @Override // kotlin.coroutines.i
    public i.b get(i.c cVar) {
        return this.f51720b.get(cVar);
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i minusKey(i.c cVar) {
        return this.f51720b.minusKey(cVar);
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i plus(kotlin.coroutines.i iVar) {
        return this.f51720b.plus(iVar);
    }
}
