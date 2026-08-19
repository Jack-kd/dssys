package kotlin.reflect;

import kotlin.jvm.functions.Function2;
import kotlin.reflect.g;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface i extends m, g {

    public interface a extends g.a, Function2 {
    }

    @Override // kotlin.reflect.m, kotlin.reflect.k, kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    a getSetter();
}
