package kotlinx.coroutines.flow;

import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.channels.BufferOverflow;

/* loaded from: classes5.dex */
public final class k0 implements s0, InterfaceC1639c, kotlinx.coroutines.flow.internal.k {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s0 f51732b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1705u0 f51733c;

    public k0(s0 s0Var, InterfaceC1705u0 interfaceC1705u0) {
        this.f51732b = s0Var;
        this.f51733c = interfaceC1705u0;
    }

    @Override // kotlinx.coroutines.flow.m0, kotlinx.coroutines.flow.InterfaceC1639c
    public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return this.f51732b.collect(interfaceC1640d, eVar);
    }

    @Override // kotlinx.coroutines.flow.internal.k
    public InterfaceC1639c d(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return t0.d(this, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.s0
    public Object getValue() {
        return this.f51732b.getValue();
    }
}
