package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.CombineKt;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/flow/d;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/d;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7", f = "Zip.kt", i = {}, l = {304}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineTransform$7 extends SuspendLambda implements Function2<InterfaceC1640d, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1639c[] $flowArray;
    final /* synthetic */ Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "", "it", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/d;Lkotlin/Array;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2", f = "Zip.kt", i = {}, l = {304}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> {
        final /* synthetic */ Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function3<? super InterfaceC1640d, ? super Object[], ? super kotlin.coroutines.e, ? extends Object> function3, kotlin.coroutines.e eVar) {
            super(3, eVar);
            this.$transform = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                InterfaceC1640d interfaceC1640d = (InterfaceC1640d) this.L$0;
                Object[] objArr = (Object[]) this.L$1;
                Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> function3 = this.$transform;
                this.L$0 = null;
                this.label = 1;
                if (function3.invoke(interfaceC1640d, objArr, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            this.$transform.invoke((InterfaceC1640d) this.L$0, (Object[]) this.L$1, this);
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(InterfaceC1640d interfaceC1640d, Object[] objArr, kotlin.coroutines.e eVar) {
            kotlin.jvm.internal.j.j();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, eVar);
            anonymousClass2.L$0 = interfaceC1640d;
            anonymousClass2.L$1 = objArr;
            return anonymousClass2.invokeSuspend(kotlin.j.f51397a);
        }
    }

    public static final class a implements Function0 {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1639c[] f51672b;

        public a(InterfaceC1639c[] interfaceC1639cArr) {
            this.f51672b = interfaceC1639cArr;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object[] invoke() {
            int length = this.f51672b.length;
            kotlin.jvm.internal.j.k(0, "T?");
            return new Object[length];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineTransform$7(InterfaceC1639c[] interfaceC1639cArr, Function3<? super InterfaceC1640d, ? super Object[], ? super kotlin.coroutines.e, ? extends Object> function3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$flowArray = interfaceC1639cArr;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        FlowKt__ZipKt$combineTransform$7 flowKt__ZipKt$combineTransform$7 = new FlowKt__ZipKt$combineTransform$7(this.$flowArray, this.$transform, eVar);
        flowKt__ZipKt$combineTransform$7.L$0 = obj;
        return flowKt__ZipKt$combineTransform$7;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            InterfaceC1640d interfaceC1640d = (InterfaceC1640d) this.L$0;
            InterfaceC1639c[] interfaceC1639cArr = this.$flowArray;
            kotlin.jvm.internal.j.j();
            a aVar = new a(this.$flowArray);
            kotlin.jvm.internal.j.j();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
            this.label = 1;
            if (CombineKt.a(interfaceC1640d, interfaceC1639cArr, aVar, anonymousClass2, this) == objE) {
                return objE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
        }
        return kotlin.j.f51397a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        InterfaceC1640d interfaceC1640d = (InterfaceC1640d) this.L$0;
        InterfaceC1639c[] interfaceC1639cArr = this.$flowArray;
        kotlin.jvm.internal.j.j();
        a aVar = new a(this.$flowArray);
        kotlin.jvm.internal.j.j();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
        kotlin.jvm.internal.i.c(0);
        CombineKt.a(interfaceC1640d, interfaceC1639cArr, aVar, anonymousClass2, this);
        kotlin.jvm.internal.i.c(1);
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return ((FlowKt__ZipKt$combineTransform$7) create(interfaceC1640d, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
