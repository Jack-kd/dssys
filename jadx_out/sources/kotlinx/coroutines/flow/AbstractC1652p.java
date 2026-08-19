package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.flow.p, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1652p {

    /* renamed from: kotlinx.coroutines.flow.p$a */
    public static final class a implements InterfaceC1639c {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f51738b;

        public a(Object obj) {
            this.f51738b = obj;
        }

        @Override // kotlinx.coroutines.flow.InterfaceC1639c
        public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
            Object objEmit = interfaceC1640d.emit(this.f51738b, eVar);
            return objEmit == kotlin.coroutines.intrinsics.a.e() ? objEmit : kotlin.j.f51397a;
        }
    }

    public static final InterfaceC1639c a(Function2 function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    public static final InterfaceC1639c b(Function2 function2) {
        return new C1638b(function2, null, 0, null, 14, null);
    }

    public static final InterfaceC1639c c(Function2 function2) {
        return new l0(function2);
    }

    public static final InterfaceC1639c d(Object obj) {
        return new a(obj);
    }
}
