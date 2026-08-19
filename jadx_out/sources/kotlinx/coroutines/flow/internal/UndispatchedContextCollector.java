package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.InterfaceC1640d;
import kotlinx.coroutines.internal.I;

/* loaded from: classes5.dex */
public final class UndispatchedContextCollector implements InterfaceC1640d {

    /* renamed from: b, reason: collision with root package name */
    public final kotlin.coroutines.i f51712b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f51713c;

    /* renamed from: d, reason: collision with root package name */
    public final Function2 f51714d;

    public UndispatchedContextCollector(InterfaceC1640d interfaceC1640d, kotlin.coroutines.i iVar) {
        this.f51712b = iVar;
        this.f51713c = I.g(iVar);
        this.f51714d = new UndispatchedContextCollector$emitRef$1(interfaceC1640d, null);
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    public Object emit(Object obj, kotlin.coroutines.e eVar) {
        Object objC = d.c(this.f51712b, obj, this.f51713c, this.f51714d, eVar);
        return objC == kotlin.coroutines.intrinsics.a.e() ? objC : kotlin.j.f51397a;
    }
}
