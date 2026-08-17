package kotlin.coroutines;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public abstract class a implements i.b {

    @NotNull
    private final i.c key;

    public a(i.c key) {
        j.e(key, "key");
        this.key = key;
    }

    @Override // kotlin.coroutines.i
    public /* bridge */ <R> R fold(R r2, @NotNull Function2<? super R, ? super i.b, ? extends R> function2) {
        return (R) i.b.a.a(this, r2, function2);
    }

    @Override // kotlin.coroutines.i.b, kotlin.coroutines.i
    public /* bridge */ i.b get(i.c cVar) {
        return i.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.i.b
    @NotNull
    public i.c getKey() {
        return this.key;
    }

    @Override // kotlin.coroutines.i
    public /* bridge */ i minusKey(i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.i
    @NotNull
    public /* bridge */ i plus(@NotNull i iVar) {
        return i.b.a.d(this, iVar);
    }
}
