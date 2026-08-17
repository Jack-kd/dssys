package kotlin.coroutines.jvm.internal;

import com.umeng.analytics.pro.g;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.e;
import kotlin.coroutines.f;
import kotlin.coroutines.i;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.C1792b;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b!\u0018\u00002\u00020\u0001B#\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\tJ\u0015\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR \u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/e;", "", "completion", "Lkotlin/coroutines/i;", "_context", "<init>", "(Lkotlin/coroutines/e;Lkotlin/coroutines/i;)V", "(Lkotlin/coroutines/e;)V", "intercepted", "()Lkotlin/coroutines/e;", "Lkotlin/j;", "releaseIntercepted", "()V", "Lkotlin/coroutines/i;", "Lkotlin/coroutines/e;", "getContext", "()Lkotlin/coroutines/i;", g.f49337X, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"})
/* loaded from: classes5.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {

    @Nullable
    private final i _context;

    @Nullable
    private transient e intercepted;

    public ContinuationImpl(@Nullable e eVar, @Nullable i iVar) {
        super(eVar);
        this._context = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.e
    @NotNull
    public i getContext() {
        i iVar = this._context;
        j.b(iVar);
        return iVar;
    }

    @NotNull
    public final e intercepted() {
        e eVarInterceptContinuation = this.intercepted;
        if (eVarInterceptContinuation == null) {
            f fVar = (f) getContext().get(f.R2);
            if (fVar == null || (eVarInterceptContinuation = fVar.interceptContinuation(this)) == null) {
                eVarInterceptContinuation = this;
            }
            this.intercepted = eVarInterceptContinuation;
        }
        return eVarInterceptContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        e eVar = this.intercepted;
        if (eVar != null && eVar != this) {
            i.b bVar = getContext().get(f.R2);
            j.b(bVar);
            ((f) bVar).releaseInterceptedContinuation(eVar);
        }
        this.intercepted = C1792b.f52815b;
    }

    public ContinuationImpl(@Nullable e eVar) {
        this(eVar, eVar != null ? eVar.getContext() : null);
    }
}
