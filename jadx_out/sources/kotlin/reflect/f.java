package kotlin.reflect;

import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public interface f extends b, kotlin.b {
    @Override // kotlin.reflect.b
    /* synthetic */ Object call(@NotNull Object... objArr);

    boolean isExternal();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    @Override // kotlin.reflect.b
    boolean isSuspend();
}
