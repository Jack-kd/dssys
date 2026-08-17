package kotlinx.coroutines.internal;

/* renamed from: kotlinx.coroutines.internal.d, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1671d implements kotlinx.coroutines.M {

    /* renamed from: b, reason: collision with root package name */
    public final kotlin.coroutines.i f51776b;

    public C1671d(kotlin.coroutines.i iVar) {
        this.f51776b = iVar;
    }

    @Override // kotlinx.coroutines.M
    public kotlin.coroutines.i getCoroutineContext() {
        return this.f51776b;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
