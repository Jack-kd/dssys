package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.coroutines.f;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.H;
import kotlinx.coroutines.internal.AbstractC1678k;
import kotlinx.coroutines.internal.C1674g;
import kotlinx.coroutines.internal.C1677j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes5.dex */
public abstract class H extends kotlin.coroutines.a implements kotlin.coroutines.f {

    @NotNull
    public static final a Key = new a(null);

    public static final class a extends kotlin.coroutines.b {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public static final H d(i.b bVar) {
            if (bVar instanceof H) {
                return (H) bVar;
            }
            return null;
        }

        public a() {
            super(kotlin.coroutines.f.R2, new Function1() { // from class: kotlinx.coroutines.G
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return H.a.d((i.b) obj);
                }
            });
        }
    }

    public H() {
        super(kotlin.coroutines.f.R2);
    }

    public static /* synthetic */ H limitedParallelism$default(H h2, int i2, String str, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
        }
        if ((i3 & 2) != 0) {
            str = null;
        }
        return h2.limitedParallelism(i2, str);
    }

    public abstract void dispatch(kotlin.coroutines.i iVar, Runnable runnable);

    @InternalCoroutinesApi
    public void dispatchYield(@NotNull kotlin.coroutines.i iVar, @NotNull Runnable runnable) {
        dispatch(iVar, runnable);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.i.b, kotlin.coroutines.i
    @Nullable
    public <E extends i.b> E get(@NotNull i.c cVar) {
        return (E) f.a.a(this, cVar);
    }

    @Override // kotlin.coroutines.f
    @NotNull
    public final <T> kotlin.coroutines.e interceptContinuation(@NotNull kotlin.coroutines.e eVar) {
        return new C1674g(this, eVar);
    }

    public boolean isDispatchNeeded(kotlin.coroutines.i iVar) {
        return true;
    }

    @NotNull
    public H limitedParallelism(int i2, @Nullable String str) {
        AbstractC1678k.a(i2);
        return new C1677j(this, i2, str);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.i
    @NotNull
    public kotlin.coroutines.i minusKey(@NotNull i.c cVar) {
        return f.a.b(this, cVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    @NotNull
    public final H plus(@NotNull H h2) {
        return h2;
    }

    @Override // kotlin.coroutines.f
    public final void releaseInterceptedContinuation(@NotNull kotlin.coroutines.e eVar) {
        kotlin.jvm.internal.j.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((C1674g) eVar).r();
    }

    @NotNull
    public String toString() {
        return O.a(this) + '@' + O.b(this);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated for good. Override 'limitedParallelism(parallelism: Int, name: String?)' instead", replaceWith = @ReplaceWith(expression = "limitedParallelism(parallelism, null)", imports = {}))
    public /* synthetic */ H limitedParallelism(int i2) {
        return limitedParallelism(i2, null);
    }
}
