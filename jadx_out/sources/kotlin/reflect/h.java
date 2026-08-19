package kotlin.reflect;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.g;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface h extends l, g {

    public interface a extends g.a, Function1 {
    }

    @Override // kotlin.reflect.l, kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    a getSetter();
}
