package androidx.room;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AbstractC1664h;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1795e;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0017\u0010\t\u001a\u00020\b*\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lkotlin/coroutines/e;", "", "block", "withTransaction", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lkotlin/coroutines/i;", "createTransactionContext", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/u0;", "controlJob", "Lkotlin/coroutines/f;", "acquireTransactionThread", "(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/u0;Lkotlin/coroutines/e;)Ljava/lang/Object;", "room-ktx_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "RoomDatabaseKt")
/* loaded from: classes.dex */
public final class RoomDatabaseKt {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabaseExt.kt", i = {0, 0}, l = {100}, m = "createTransactionContext", n = {"$this$createTransactionContext", "controlJob"}, s = {"L$0", "L$1"})
    /* renamed from: androidx.room.RoomDatabaseKt$createTransactionContext$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
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
            return RoomDatabaseKt.createTransactionContext(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabaseExt.kt", i = {0, 0}, l = {ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT, 52}, m = "withTransaction", n = {"$this$withTransaction", "block"}, s = {"L$0", "L$1"})
    /* renamed from: androidx.room.RoomDatabaseKt$withTransaction$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10681<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C10681(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoomDatabaseKt.withTransaction(null, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/M;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt$withTransaction$2", f = "RoomDatabaseExt.kt", i = {0}, l = {59}, m = "invokeSuspend", n = {"transactionElement"}, s = {"L$0"})
    /* renamed from: androidx.room.RoomDatabaseKt$withTransaction$2, reason: invalid class name and case insensitive filesystem */
    public static final class C10692 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ Function1<kotlin.coroutines.e, Object> $block;
        final /* synthetic */ RoomDatabase $this_withTransaction;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10692(RoomDatabase roomDatabase, Function1<? super kotlin.coroutines.e, ? extends Object> function1, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$this_withTransaction = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            C10692 c10692 = new C10692(this.$this_withTransaction, this.$block, eVar);
            c10692.L$0 = obj;
            return c10692;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Throwable th;
            TransactionElement transactionElement;
            TransactionElement transactionElementE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            try {
                if (i2 == 0) {
                    kotlin.e.b(obj);
                    i.b bVar = ((M) this.L$0).getCoroutineContext().get(TransactionElement.INSTANCE);
                    kotlin.jvm.internal.j.b(bVar);
                    TransactionElement transactionElement2 = (TransactionElement) bVar;
                    transactionElement2.acquire();
                    try {
                        this.$this_withTransaction.beginTransaction();
                        try {
                            Function1<kotlin.coroutines.e, Object> function1 = this.$block;
                            this.L$0 = transactionElement2;
                            this.label = 1;
                            Object objInvoke = function1.invoke(this);
                            if (objInvoke == transactionElementE) {
                                return transactionElementE;
                            }
                            transactionElement = transactionElement2;
                            obj = objInvoke;
                        } catch (Throwable th2) {
                            th = th2;
                            this.$this_withTransaction.endTransaction();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        transactionElementE = transactionElement2;
                        th = th3;
                        transactionElementE.release();
                        throw th;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    transactionElement = (TransactionElement) this.L$0;
                    try {
                        kotlin.e.b(obj);
                    } catch (Throwable th4) {
                        th = th4;
                        this.$this_withTransaction.endTransaction();
                        throw th;
                    }
                }
                this.$this_withTransaction.setTransactionSuccessful();
                this.$this_withTransaction.endTransaction();
                transactionElement.release();
                return obj;
            } catch (Throwable th5) {
                th = th5;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable kotlin.coroutines.e eVar) {
            return ((C10692) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object acquireTransactionThread(Executor executor, final InterfaceC1705u0 interfaceC1705u0, kotlin.coroutines.e eVar) {
        final C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        c1691n.v(new Function1<Throwable, kotlin.j>() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(Throwable th) {
                invoke2(th);
                return kotlin.j.f51397a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                InterfaceC1705u0.a.a(interfaceC1705u0, null, 1, null);
            }
        });
        try {
            executor.execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1", f = "RoomDatabaseExt.kt", i = {}, l = {125}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
                    final /* synthetic */ InterfaceC1687l $continuation;
                    final /* synthetic */ InterfaceC1705u0 $controlJob;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(InterfaceC1687l interfaceC1687l, InterfaceC1705u0 interfaceC1705u0, kotlin.coroutines.e eVar) {
                        super(2, eVar);
                        this.$continuation = interfaceC1687l;
                        this.$controlJob = interfaceC1705u0;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$continuation, this.$controlJob, eVar);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                        Object objE = kotlin.coroutines.intrinsics.a.e();
                        int i2 = this.label;
                        if (i2 == 0) {
                            kotlin.e.b(obj);
                            M m2 = (M) this.L$0;
                            InterfaceC1687l interfaceC1687l = this.$continuation;
                            Result.Companion companion = Result.INSTANCE;
                            i.b bVar = m2.getCoroutineContext().get(kotlin.coroutines.f.R2);
                            kotlin.jvm.internal.j.b(bVar);
                            interfaceC1687l.resumeWith(Result.m66constructorimpl(bVar));
                            InterfaceC1705u0 interfaceC1705u0 = this.$controlJob;
                            this.label = 1;
                            if (interfaceC1705u0.A(this) == objE) {
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

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull M m2, @Nullable kotlin.coroutines.e eVar) {
                        return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1664h.b(null, new AnonymousClass1(c1691n, interfaceC1705u0, null), 1, null);
                }
            });
        } catch (RejectedExecutionException e2) {
            c1691n.j(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e2));
        }
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object createTransactionContext(androidx.room.RoomDatabase r6, kotlin.coroutines.e r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = (androidx.room.RoomDatabaseKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = new androidx.room.RoomDatabaseKt$createTransactionContext$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.y r6 = (kotlinx.coroutines.InterfaceC1711y) r6
            java.lang.Object r0 = r0.L$0
            androidx.room.RoomDatabase r0 = (androidx.room.RoomDatabase) r0
            kotlin.e.b(r7)
            goto L6c
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.e.b(r7)
            r7 = 0
            kotlinx.coroutines.y r7 = kotlinx.coroutines.AbstractC1709w0.b(r7, r3, r7)
            kotlin.coroutines.i r2 = r0.getContext()
            kotlinx.coroutines.u0$b r4 = kotlinx.coroutines.InterfaceC1705u0.T2
            kotlin.coroutines.i$b r2 = r2.get(r4)
            kotlinx.coroutines.u0 r2 = (kotlinx.coroutines.InterfaceC1705u0) r2
            if (r2 == 0) goto L57
            androidx.room.RoomDatabaseKt$createTransactionContext$2 r4 = new androidx.room.RoomDatabaseKt$createTransactionContext$2
            r4.<init>()
            r2.e(r4)
        L57:
            java.util.concurrent.Executor r2 = r6.getTransactionExecutor()
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = acquireTransactionThread(r2, r7, r0)
            if (r0 != r1) goto L68
            return r1
        L68:
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L6c:
            kotlin.coroutines.f r7 = (kotlin.coroutines.f) r7
            androidx.room.TransactionElement r1 = new androidx.room.TransactionElement
            r1.<init>(r6, r7)
            java.lang.ThreadLocal r0 = r0.getSuspendingTransactionId()
            int r6 = java.lang.System.identityHashCode(r6)
            java.lang.Integer r6 = w1.AbstractC1791a.c(r6)
            kotlinx.coroutines.M0 r6 = kotlinx.coroutines.N0.a(r0, r6)
            kotlin.coroutines.i r7 = r7.plus(r1)
            kotlin.coroutines.i r6 = r7.plus(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.createTransactionContext(androidx.room.RoomDatabase, kotlin.coroutines.e):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r7 == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object withTransaction(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super kotlin.coroutines.e, ? extends java.lang.Object> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.e r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt.C10681
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = (androidx.room.RoomDatabaseKt.C10681) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = new androidx.room.RoomDatabaseKt$withTransaction$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.e.b(r7)
            return r7
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r5 = r0.L$1
            r6 = r5
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            java.lang.Object r5 = r0.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.e.b(r7)
            goto L66
        L41:
            kotlin.e.b(r7)
            kotlin.coroutines.i r7 = r0.getContext()
            androidx.room.TransactionElement$Key r2 = androidx.room.TransactionElement.INSTANCE
            kotlin.coroutines.i$b r7 = r7.get(r2)
            androidx.room.TransactionElement r7 = (androidx.room.TransactionElement) r7
            if (r7 == 0) goto L59
            kotlin.coroutines.f r7 = r7.getTransactionDispatcher()
            if (r7 == 0) goto L59
            goto L68
        L59:
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = createTransactionContext(r5, r0)
            if (r7 != r1) goto L66
            goto L7a
        L66:
            kotlin.coroutines.i r7 = (kotlin.coroutines.i) r7
        L68:
            androidx.room.RoomDatabaseKt$withTransaction$2 r2 = new androidx.room.RoomDatabaseKt$withTransaction$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r3
            java.lang.Object r5 = kotlinx.coroutines.AbstractC1662g.e(r7, r2, r0)
            if (r5 != r1) goto L7b
        L7a:
            return r1
        L7b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.withTransaction(androidx.room.RoomDatabase, kotlin.jvm.functions.Function1, kotlin.coroutines.e):java.lang.Object");
    }
}
