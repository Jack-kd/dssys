package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import w1.InterfaceC1793c;

/* loaded from: classes5.dex */
public final class t implements kotlin.coroutines.e, InterfaceC1793c {

    /* renamed from: b, reason: collision with root package name */
    public final kotlin.coroutines.e f51730b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlin.coroutines.i f51731c;

    public t(kotlin.coroutines.e eVar, kotlin.coroutines.i iVar) {
        this.f51730b = eVar;
        this.f51731c = iVar;
    }

    @Override // w1.InterfaceC1793c
    public InterfaceC1793c getCallerFrame() {
        kotlin.coroutines.e eVar = this.f51730b;
        if (eVar instanceof InterfaceC1793c) {
            return (InterfaceC1793c) eVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.e
    @NotNull
    public kotlin.coroutines.i getContext() {
        return this.f51731c;
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) {
        this.f51730b.resumeWith(obj);
    }
}
