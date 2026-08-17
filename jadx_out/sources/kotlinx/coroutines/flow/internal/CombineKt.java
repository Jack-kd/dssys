package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public abstract class CombineKt {
    public static final Object a(InterfaceC1640d interfaceC1640d, InterfaceC1639c[] interfaceC1639cArr, Function0 function0, Function3 function3, kotlin.coroutines.e eVar) {
        Object objA = i.a(new CombineKt$combineInternal$2(interfaceC1639cArr, function0, function3, interfaceC1640d, null), eVar);
        return objA == kotlin.coroutines.intrinsics.a.e() ? objA : kotlin.j.f51397a;
    }
}
