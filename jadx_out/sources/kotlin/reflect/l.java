package kotlin.reflect;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.k;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface l extends k, Function0 {

    public interface a extends k.a, Function0 {
    }

    @Override // kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    Object getDelegate();

    a getGetter();
}
