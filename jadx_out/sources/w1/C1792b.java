package w1;

import kotlin.coroutines.i;
import org.jetbrains.annotations.NotNull;

/* renamed from: w1.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1792b implements kotlin.coroutines.e {

    /* renamed from: b, reason: collision with root package name */
    public static final C1792b f52815b = new C1792b();

    @Override // kotlin.coroutines.e
    @NotNull
    public i getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
