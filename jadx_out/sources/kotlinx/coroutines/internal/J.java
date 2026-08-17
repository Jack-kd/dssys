package kotlinx.coroutines.internal;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M0;

/* loaded from: classes5.dex */
public final class J implements M0 {

    /* renamed from: b, reason: collision with root package name */
    public final Object f51760b;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadLocal f51761c;

    /* renamed from: d, reason: collision with root package name */
    public final i.c f51762d;

    public J(Object obj, ThreadLocal threadLocal) {
        this.f51760b = obj;
        this.f51761c = threadLocal;
        this.f51762d = new K(threadLocal);
    }

    @Override // kotlinx.coroutines.M0
    public Object F(kotlin.coroutines.i iVar) {
        Object obj = this.f51761c.get();
        this.f51761c.set(this.f51760b);
        return obj;
    }

    @Override // kotlin.coroutines.i
    public Object fold(Object obj, Function2 function2) {
        return M0.a.a(this, obj, function2);
    }

    @Override // kotlinx.coroutines.M0
    public void g(kotlin.coroutines.i iVar, Object obj) {
        this.f51761c.set(obj);
    }

    @Override // kotlin.coroutines.i.b, kotlin.coroutines.i
    public i.b get(i.c cVar) {
        if (!kotlin.jvm.internal.j.a(getKey(), cVar)) {
            return null;
        }
        kotlin.jvm.internal.j.c(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override // kotlin.coroutines.i.b
    public i.c getKey() {
        return this.f51762d;
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i minusKey(i.c cVar) {
        return kotlin.jvm.internal.j.a(getKey(), cVar) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i plus(kotlin.coroutines.i iVar) {
        return M0.a.b(this, iVar);
    }

    public String toString() {
        return "ThreadLocal(value=" + this.f51760b + ", threadLocal = " + this.f51761c + ')';
    }
}
