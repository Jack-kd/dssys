package kotlinx.coroutines;

import kotlin.Result;

/* loaded from: classes5.dex */
public final class H0 extends x0 {

    /* renamed from: f, reason: collision with root package name */
    public final kotlin.coroutines.e f51517f;

    public H0(kotlin.coroutines.e eVar) {
        this.f51517f = eVar;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        kotlin.coroutines.e eVar = this.f51517f;
        Result.Companion companion = Result.INSTANCE;
        eVar.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
    }
}
