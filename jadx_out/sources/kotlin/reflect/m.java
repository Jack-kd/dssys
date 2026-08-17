package kotlin.reflect;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.k;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface m extends k, Function1 {

    public interface a extends k.a, Function1 {
    }

    @Override // kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    Object getDelegate(Object obj);

    a getGetter();
}
