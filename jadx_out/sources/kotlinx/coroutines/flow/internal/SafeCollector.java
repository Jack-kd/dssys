package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.i;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractC1709w0;
import kotlinx.coroutines.flow.InterfaceC1640d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1795e;
import w1.InterfaceC1793c;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u000e2\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010!J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u000f\u0010\"R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010$R\u0014\u0010&\u001a\u00020%8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010(\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010$R\u001e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u00100\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u00061"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lw1/c;", "collector", "Lkotlin/coroutines/i;", "collectContext", "<init>", "(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/i;)V", "Lkotlin/coroutines/e;", "Lkotlin/j;", "uCont", f.a.f3244d, "", "emit", "(Lkotlin/coroutines/e;Ljava/lang/Object;)Ljava/lang/Object;", "currentContext", "previousContext", "checkContext", "(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Ljava/lang/Object;)V", "Lkotlinx/coroutines/flow/internal/g;", "exception", "exceptionTransparencyViolated", "(Lkotlinx/coroutines/flow/internal/g;Ljava/lang/Object;)V", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "()V", "(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/d;", "Lkotlin/coroutines/i;", "", "collectContextSize", "I", "lastEmissionContext", "completion_", "Lkotlin/coroutines/e;", "getCallerFrame", "()Lw1/c;", "callerFrame", "getContext", "()Lkotlin/coroutines/i;", com.umeng.analytics.pro.g.f49337X, "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"})
/* loaded from: classes5.dex */
public final class SafeCollector<T> extends ContinuationImpl implements InterfaceC1640d, InterfaceC1793c {

    @JvmField
    @NotNull
    public final kotlin.coroutines.i collectContext;

    @JvmField
    public final int collectContextSize;

    @JvmField
    @NotNull
    public final InterfaceC1640d collector;

    @Nullable
    private kotlin.coroutines.e completion_;

    @Nullable
    private kotlin.coroutines.i lastEmissionContext;

    public SafeCollector(@NotNull InterfaceC1640d interfaceC1640d, @NotNull kotlin.coroutines.i iVar) {
        super(l.f51722b, EmptyCoroutineContext.INSTANCE);
        this.collector = interfaceC1640d;
        this.collectContext = iVar;
        this.collectContextSize = ((Number) iVar.fold(0, new Function2() { // from class: kotlinx.coroutines.flow.internal.o
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(SafeCollector.collectContextSize$lambda$0(((Integer) obj).intValue(), (i.b) obj2));
            }
        })).intValue();
    }

    private final void checkContext(kotlin.coroutines.i currentContext, kotlin.coroutines.i previousContext, T value) {
        if (previousContext instanceof g) {
            exceptionTransparencyViolated((g) previousContext, value);
        }
        r.b(this, currentContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int collectContextSize$lambda$0(int i2, i.b bVar) {
        return i2 + 1;
    }

    private final void exceptionTransparencyViolated(g exception, Object value) {
        throw new IllegalStateException(kotlin.text.s.j("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + exception.f51721c + ", but then emission attempt of value '" + value + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    @Nullable
    public Object emit(T t2, @NotNull kotlin.coroutines.e eVar) {
        try {
            Object objEmit = emit(eVar, (kotlin.coroutines.e) t2);
            if (objEmit == kotlin.coroutines.intrinsics.a.e()) {
                AbstractC1795e.c(eVar);
            }
            return objEmit == kotlin.coroutines.intrinsics.a.e() ? objEmit : kotlin.j.f51397a;
        } catch (Throwable th) {
            this.lastEmissionContext = new g(th, eVar.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, w1.InterfaceC1793c
    @Nullable
    public InterfaceC1793c getCallerFrame() {
        kotlin.coroutines.e eVar = this.completion_;
        if (eVar instanceof InterfaceC1793c) {
            return (InterfaceC1793c) eVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.e
    @NotNull
    public kotlin.coroutines.i getContext() {
        kotlin.coroutines.i iVar = this.lastEmissionContext;
        return iVar == null ? EmptyCoroutineContext.INSTANCE : iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public Object invokeSuspend(@NotNull Object result) {
        Throwable thM69exceptionOrNullimpl = Result.m69exceptionOrNullimpl(result);
        if (thM69exceptionOrNullimpl != null) {
            this.lastEmissionContext = new g(thM69exceptionOrNullimpl, getContext());
        }
        kotlin.coroutines.e eVar = this.completion_;
        if (eVar != null) {
            eVar.resumeWith(result);
        }
        return kotlin.coroutines.intrinsics.a.e();
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }

    private final Object emit(kotlin.coroutines.e uCont, T value) {
        kotlin.coroutines.i context = uCont.getContext();
        AbstractC1709w0.f(context);
        kotlin.coroutines.i iVar = this.lastEmissionContext;
        if (iVar != context) {
            checkContext(context, iVar, value);
            this.lastEmissionContext = context;
        }
        this.completion_ = uCont;
        Function3 function3 = SafeCollectorKt.f51711a;
        InterfaceC1640d interfaceC1640d = this.collector;
        kotlin.jvm.internal.j.c(interfaceC1640d, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        kotlin.jvm.internal.j.c(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object objInvoke = function3.invoke(interfaceC1640d, value, this);
        if (!kotlin.jvm.internal.j.a(objInvoke, kotlin.coroutines.intrinsics.a.e())) {
            this.completion_ = null;
        }
        return objInvoke;
    }
}
