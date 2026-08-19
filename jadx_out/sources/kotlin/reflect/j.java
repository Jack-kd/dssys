package kotlin.reflect;

import kotlin.jvm.functions.Function3;
import kotlin.reflect.g;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface j extends n, g {

    public interface a extends g.a, Function3 {
    }

    @Override // kotlin.reflect.n, kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    a getSetter();
}
