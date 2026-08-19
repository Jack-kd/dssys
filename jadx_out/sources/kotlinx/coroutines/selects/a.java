package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DelayKt;

/* loaded from: classes5.dex */
public abstract class a {
    public static final void a(b bVar, long j2, Function1 function1) {
        bVar.a(new OnTimeout(j2).b(), function1);
    }

    public static final void b(b bVar, long j2, Function1 function1) {
        a(bVar, DelayKt.d(j2), function1);
    }
}
