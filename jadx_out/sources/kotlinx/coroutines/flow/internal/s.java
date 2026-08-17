package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public final class s implements InterfaceC1640d {

    /* renamed from: b, reason: collision with root package name */
    public final kotlinx.coroutines.channels.s f51729b;

    public s(kotlinx.coroutines.channels.s sVar) {
        this.f51729b = sVar;
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    public Object emit(Object obj, kotlin.coroutines.e eVar) {
        Object objE = this.f51729b.E(obj, eVar);
        return objE == kotlin.coroutines.intrinsics.a.e() ? objE : kotlin.j.f51397a;
    }
}
