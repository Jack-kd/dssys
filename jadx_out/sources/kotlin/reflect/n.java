package kotlin.reflect;

import kotlin.jvm.functions.Function2;
import kotlin.reflect.k;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface n extends k, Function2 {

    public interface a extends k.a, Function2 {
    }

    @Override // kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    Object getDelegate(Object obj, Object obj2);

    a getGetter();
}
