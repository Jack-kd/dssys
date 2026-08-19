package kotlinx.coroutines;

import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public final class A0 extends J0 {

    /* renamed from: e, reason: collision with root package name */
    public final kotlin.coroutines.e f51511e;

    public A0(kotlin.coroutines.i iVar, Function2 function2) {
        super(iVar, false);
        this.f51511e = IntrinsicsKt__IntrinsicsJvmKt.a(function2, this, this);
    }

    @Override // kotlinx.coroutines.y0
    public void C0() throws Throwable {
        G1.a.b(this.f51511e, this);
    }
}
