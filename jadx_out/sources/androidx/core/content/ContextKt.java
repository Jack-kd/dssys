package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import androidx.core.content.ContextKt;
import androidx.exifinterface.media.ExifInterface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000p\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\"\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u0002H\u0086\b¢\u0006\u0004\b\u0003\u0010\u0004\u001aU\u0010\u0011\u001a\u00020\u000e*\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\b\b\u0003\u0010\n\u001a\u00020\t2\b\b\u0003\u0010\u000b\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a?\u0010\u0011\u001a\u00020\u000e*\u00020\u00022\b\b\u0001\u0010\u0013\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0014\u001a]\u0010!\u001a\u00020 *\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u001f\u0010\u001f\u001a\u001b\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u000e0\u001c¢\u0006\u0002\b\u000fH\u0086@¢\u0006\u0004\b!\u0010\"\u001am\u0010&\u001a\u00020 *\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2/\u0010\u001f\u001a+\b\u0001\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0%\u0012\u0006\u0012\u0004\u0018\u00010\u00000#¢\u0006\u0002\b\u000fH\u0086@¢\u0006\u0004\b&\u0010'¨\u0006("}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/content/Context;", "getSystemService", "(Landroid/content/Context;)Ljava/lang/Object;", "Landroid/util/AttributeSet;", "set", "", "attrs", "", "defStyleAttr", "defStyleRes", "Lkotlin/Function1;", "Landroid/content/res/TypedArray;", "Lkotlin/j;", "Lkotlin/ExtensionFunctionType;", "block", "withStyledAttributes", "(Landroid/content/Context;Landroid/util/AttributeSet;[IIILkotlin/jvm/functions/Function1;)V", "resourceId", "(Landroid/content/Context;I[ILkotlin/jvm/functions/Function1;)V", "Landroid/content/IntentFilter;", "filter", "flags", "", "broadcastPermission", "Landroid/os/Handler;", "scheduler", "Lkotlin/Function2;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Intent;", "onReceive", "", "receiveBroadcasts", "(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lkotlin/Function3;", "Landroid/content/BroadcastReceiver$PendingResult;", "Lkotlin/coroutines/e;", "receiveBroadcastsAsync", "(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/e;)Ljava/lang/Object;", "core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\nandroidx/core/content/ContextKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,278:1\n351#2,11:279\n*S KotlinDebug\n*F\n+ 1 Context.kt\nandroidx/core/content/ContextKt\n*L\n155#1:279,11\n*E\n"})
/* loaded from: classes.dex */
public final class ContextKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.core.content.ContextKt", f = "Context.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS}, m = "receiveBroadcasts", n = {"$this$receiveBroadcasts", "filter", "broadcastPermission", "scheduler", "onReceive", "receiver", "flags"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0"}, v = 1)
    /* renamed from: androidx.core.content.ContextKt$receiveBroadcasts$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ContextKt.receiveBroadcasts(null, null, 0, null, null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.core.content.ContextKt", f = "Context.kt", i = {}, l = {237}, m = "receiveBroadcastsAsync", n = {}, s = {}, v = 1)
    /* renamed from: androidx.core.content.ContextKt$receiveBroadcastsAsync$1, reason: invalid class name and case insensitive filesystem */
    public static final class C09041 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C09041(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ContextKt.receiveBroadcastsAsync(null, null, 0, null, null, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "", "<anonymous>", "(Lkotlinx/coroutines/M;)Ljava/lang/Void;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "androidx.core.content.ContextKt$receiveBroadcastsAsync$2", f = "Context.kt", i = {}, l = {238}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    /* renamed from: androidx.core.content.ContextKt$receiveBroadcastsAsync$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ String $broadcastPermission;
        final /* synthetic */ IntentFilter $filter;
        final /* synthetic */ int $flags;
        final /* synthetic */ Function3<BroadcastReceiver.PendingResult, Intent, kotlin.coroutines.e, Object> $onReceive;
        final /* synthetic */ Handler $scheduler;
        final /* synthetic */ Context $this_receiveBroadcastsAsync;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Context context, IntentFilter intentFilter, int i2, String str, Handler handler, Function3<? super BroadcastReceiver.PendingResult, ? super Intent, ? super kotlin.coroutines.e, ? extends Object> function3, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$this_receiveBroadcastsAsync = context;
            this.$filter = intentFilter;
            this.$flags = i2;
            this.$broadcastPermission = str;
            this.$scheduler = handler;
            this.$onReceive = function3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final kotlin.j invokeSuspend$lambda$0(M m2, Function3 function3, BroadcastReceiver broadcastReceiver, Intent intent) {
            AbstractC1666i.b(m2, null, CoroutineStart.ATOMIC, new ContextKt$receiveBroadcastsAsync$2$1$1(function3, broadcastReceiver.goAsync(), intent, null), 1, null);
            return kotlin.j.f51397a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_receiveBroadcastsAsync, this.$filter, this.$flags, this.$broadcastPermission, this.$scheduler, this.$onReceive, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final M m2 = (M) this.L$0;
                Context context = this.$this_receiveBroadcastsAsync;
                IntentFilter intentFilter = this.$filter;
                int i3 = this.$flags;
                String str = this.$broadcastPermission;
                Handler handler = this.$scheduler;
                final Function3<BroadcastReceiver.PendingResult, Intent, kotlin.coroutines.e, Object> function3 = this.$onReceive;
                Function2 function2 = new Function2() { // from class: androidx.core.content.b
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return ContextKt.AnonymousClass2.invokeSuspend$lambda$0(m2, function3, (BroadcastReceiver) obj2, (Intent) obj3);
                    }
                };
                this.label = 1;
                if (ContextKt.receiveBroadcasts(context, intentFilter, i3, str, handler, function2, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    public static final /* synthetic */ <T> T getSystemService(Context context) {
        kotlin.jvm.internal.j.k(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) ContextCompat.getSystemService(context, Object.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, androidx.core.content.ContinuationBroadcastReceiver] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object receiveBroadcasts(@org.jetbrains.annotations.NotNull android.content.Context r5, @org.jetbrains.annotations.NotNull android.content.IntentFilter r6, int r7, @org.jetbrains.annotations.Nullable java.lang.String r8, @org.jetbrains.annotations.Nullable android.os.Handler r9, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super android.content.BroadcastReceiver, ? super android.content.Intent, kotlin.j> r10, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof androidx.core.content.ContextKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.core.content.ContextKt$receiveBroadcasts$1 r0 = (androidx.core.content.ContextKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.core.content.ContextKt$receiveBroadcasts$1 r0 = new androidx.core.content.ContextKt$receiveBroadcasts$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L4e
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2d:
            java.lang.Object r5 = r0.L$5
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref$ObjectRef) r5
            java.lang.Object r6 = r0.L$4
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            java.lang.Object r6 = r0.L$3
            android.os.Handler r6 = (android.os.Handler) r6
            java.lang.Object r6 = r0.L$2
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r6 = r0.L$1
            android.content.IntentFilter r6 = (android.content.IntentFilter) r6
            java.lang.Object r6 = r0.L$0
            android.content.Context r6 = (android.content.Context) r6
            kotlin.e.b(r11)     // Catch: java.lang.Throwable -> L4b
            r11 = r5
            r5 = r6
            goto L97
        L4b:
            r0 = move-exception
            r7 = r0
            goto L9d
        L4e:
            kotlin.e.b(r11)
            kotlin.jvm.internal.Ref$ObjectRef r11 = new kotlin.jvm.internal.Ref$ObjectRef
            r11.<init>()
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L8f
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L8f
            r0.L$2 = r8     // Catch: java.lang.Throwable -> L8f
            r0.L$3 = r9     // Catch: java.lang.Throwable -> L8f
            r0.L$4 = r10     // Catch: java.lang.Throwable -> L8f
            r0.L$5 = r11     // Catch: java.lang.Throwable -> L8f
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L8f
            r0.label = r3     // Catch: java.lang.Throwable -> L8f
            kotlinx.coroutines.n r2 = new kotlinx.coroutines.n     // Catch: java.lang.Throwable -> L8f
            kotlin.coroutines.e r4 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.c(r0)     // Catch: java.lang.Throwable -> L8f
            r2.<init>(r4, r3)     // Catch: java.lang.Throwable -> L8f
            r2.F()     // Catch: java.lang.Throwable -> L8f
            androidx.core.content.ContinuationBroadcastReceiver r3 = new androidx.core.content.ContinuationBroadcastReceiver     // Catch: java.lang.Throwable -> L8f
            r3.<init>(r2, r10)     // Catch: java.lang.Throwable -> L8f
            r11.element = r3     // Catch: java.lang.Throwable -> L8f
            android.content.BroadcastReceiver r3 = (android.content.BroadcastReceiver) r3     // Catch: java.lang.Throwable -> L8f
            r10 = r7
            r7 = r6
            r6 = r3
            androidx.core.content.ContextCompat.registerReceiver(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L8f
            java.lang.Object r6 = r2.y()     // Catch: java.lang.Throwable -> L8f
            java.lang.Object r7 = kotlin.coroutines.intrinsics.a.e()     // Catch: java.lang.Throwable -> L8f
            if (r6 != r7) goto L94
            w1.AbstractC1795e.c(r0)     // Catch: java.lang.Throwable -> L8f
            goto L94
        L8f:
            r0 = move-exception
            r7 = r0
            r6 = r5
            r5 = r11
            goto L9d
        L94:
            if (r6 != r1) goto L97
            return r1
        L97:
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L8f
            r6.<init>()     // Catch: java.lang.Throwable -> L8f
            throw r6     // Catch: java.lang.Throwable -> L8f
        L9d:
            T r5 = r5.element
            if (r5 == 0) goto La6
            android.content.BroadcastReceiver r5 = (android.content.BroadcastReceiver) r5
            r6.unregisterReceiver(r5)
        La6:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.ContextKt.receiveBroadcasts(android.content.Context, android.content.IntentFilter, int, java.lang.String, android.os.Handler, kotlin.jvm.functions.Function2, kotlin.coroutines.e):java.lang.Object");
    }

    public static /* synthetic */ Object receiveBroadcasts$default(Context context, IntentFilter intentFilter, int i2, String str, Handler handler, Function2 function2, kotlin.coroutines.e eVar, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str = null;
        }
        if ((i3 & 8) != 0) {
            handler = null;
        }
        return receiveBroadcasts(context, intentFilter, i2, str, handler, function2, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object receiveBroadcastsAsync(@org.jetbrains.annotations.NotNull android.content.Context r13, @org.jetbrains.annotations.NotNull android.content.IntentFilter r14, int r15, @org.jetbrains.annotations.Nullable java.lang.String r16, @org.jetbrains.annotations.Nullable android.os.Handler r17, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function3<? super android.content.BroadcastReceiver.PendingResult, ? super android.content.Intent, ? super kotlin.coroutines.e, ? extends java.lang.Object> r18, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r19) throws java.lang.Throwable {
        /*
            r0 = r19
            boolean r1 = r0 instanceof androidx.core.content.ContextKt.C09041
            if (r1 == 0) goto L15
            r1 = r0
            androidx.core.content.ContextKt$receiveBroadcastsAsync$1 r1 = (androidx.core.content.ContextKt.C09041) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.core.content.ContextKt$receiveBroadcastsAsync$1 r1 = new androidx.core.content.ContextKt$receiveBroadcastsAsync$1
            r1.<init>(r0)
        L1a:
            java.lang.Object r0 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.e()
            int r3 = r1.label
            r4 = 1
            if (r3 == 0) goto L33
            if (r3 == r4) goto L2f
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L2f:
            kotlin.e.b(r0)
            goto L4e
        L33:
            kotlin.e.b(r0)
            androidx.core.content.ContextKt$receiveBroadcastsAsync$2 r5 = new androidx.core.content.ContextKt$receiveBroadcastsAsync$2
            r12 = 0
            r6 = r13
            r7 = r14
            r8 = r15
            r9 = r16
            r10 = r17
            r11 = r18
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            r1.label = r4
            java.lang.Object r13 = kotlinx.coroutines.N.b(r5, r1)
            if (r13 != r2) goto L4e
            return r2
        L4e:
            kotlin.KotlinNothingValueException r13 = new kotlin.KotlinNothingValueException
            r13.<init>()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.ContextKt.receiveBroadcastsAsync(android.content.Context, android.content.IntentFilter, int, java.lang.String, android.os.Handler, kotlin.jvm.functions.Function3, kotlin.coroutines.e):java.lang.Object");
    }

    public static /* synthetic */ Object receiveBroadcastsAsync$default(Context context, IntentFilter intentFilter, int i2, String str, Handler handler, Function3 function3, kotlin.coroutines.e eVar, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str = null;
        }
        if ((i3 & 8) != 0) {
            handler = null;
        }
        return receiveBroadcastsAsync(context, intentFilter, i2, str, handler, function3, eVar);
    }

    public static final void withStyledAttributes(@NotNull Context context, @Nullable AttributeSet attributeSet, @NotNull int[] iArr, @AttrRes int i2, @StyleRes int i3, @NotNull Function1<? super TypedArray, kotlin.j> function1) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        function1.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static /* synthetic */ void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            attributeSet = null;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        function1.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static final void withStyledAttributes(@NotNull Context context, @StyleRes int i2, @NotNull int[] iArr, @NotNull Function1<? super TypedArray, kotlin.j> function1) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, iArr);
        function1.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }
}
