package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "", "it", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/d;Lkotlin/Array;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$1$1", f = "Zip.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineUnsafe$1$1 extends SuspendLambda implements Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> {
    final /* synthetic */ Function2<Object[], kotlin.coroutines.e, Object> $transform;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineUnsafe$1$1(Function2<? super Object[], ? super kotlin.coroutines.e, ? extends Object> function2, kotlin.coroutines.e eVar) {
        super(3, eVar);
        this.$transform = function2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (r1.emit(r6, r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.e.b(r6)
            goto L47
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            kotlin.e.b(r6)
            goto L3b
        L22:
            kotlin.e.b(r6)
            java.lang.Object r6 = r5.L$0
            r1 = r6
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            java.lang.Object r6 = r5.L$1
            java.lang.Object[] r6 = (java.lang.Object[]) r6
            kotlin.jvm.functions.Function2<java.lang.Object[], kotlin.coroutines.e, java.lang.Object> r4 = r5.$transform
            r5.L$0 = r1
            r5.label = r3
            java.lang.Object r6 = r4.invoke(r6, r5)
            if (r6 != r0) goto L3b
            goto L46
        L3b:
            r3 = 0
            r5.L$0 = r3
            r5.label = r2
            java.lang.Object r6 = r1.emit(r6, r5)
            if (r6 != r0) goto L47
        L46:
            return r0
        L47:
            kotlin.j r6 = kotlin.j.f51397a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        InterfaceC1640d interfaceC1640d = (InterfaceC1640d) this.L$0;
        Object objInvoke = this.$transform.invoke((Object[]) this.L$1, this);
        kotlin.jvm.internal.i.c(0);
        interfaceC1640d.emit(objInvoke, this);
        kotlin.jvm.internal.i.c(1);
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(InterfaceC1640d interfaceC1640d, Object[] objArr, kotlin.coroutines.e eVar) {
        kotlin.jvm.internal.j.j();
        FlowKt__ZipKt$combineUnsafe$1$1 flowKt__ZipKt$combineUnsafe$1$1 = new FlowKt__ZipKt$combineUnsafe$1$1(this.$transform, eVar);
        flowKt__ZipKt$combineUnsafe$1$1.L$0 = interfaceC1640d;
        flowKt__ZipKt$combineUnsafe$1$1.L$1 = objArr;
        return flowKt__ZipKt$combineUnsafe$1$1.invokeSuspend(kotlin.j.f51397a);
    }
}
