package androidx.room;

import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteCompat;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractC1662g;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.C1692n0;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1795e;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Landroidx/room/CoroutinesRoom;", "", "()V", "Companion", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class CoroutinesRoom {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ?\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u000fJL\u0010\u0015\u001a\r\u0012\t\u0012\u00078\u0000¢\u0006\u0002\b\u00140\u0013\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/room/CoroutinesRoom$Companion;", "", "<init>", "()V", "R", "Landroidx/room/RoomDatabase;", "db", "", "inTransaction", "Ljava/util/concurrent/Callable;", "callable", "execute", "(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/e;)Ljava/lang/Object;", "", "", "tableNames", "Lkotlinx/coroutines/flow/c;", "Lkotlin/jvm/JvmSuppressWildcards;", "createFlow", "(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/c;", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final <R> InterfaceC1639c createFlow(@NotNull RoomDatabase db, boolean inTransaction, @NotNull String[] tableNames, @NotNull Callable<R> callable) {
            kotlin.jvm.internal.j.e(db, "db");
            kotlin.jvm.internal.j.e(tableNames, "tableNames");
            kotlin.jvm.internal.j.e(callable, "callable");
            return AbstractC1641e.v(new CoroutinesRoom$Companion$createFlow$1(inTransaction, db, tableNames, callable, null));
        }

        @JvmStatic
        @Nullable
        public final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z2, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.e eVar) {
            kotlin.coroutines.f transactionDispatcher;
            if (roomDatabase.isOpen() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) eVar.getContext().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                transactionDispatcher = z2 ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            return AbstractC1662g.e(transactionDispatcher, new CoroutinesRoom$Companion$execute$2(callable, null), eVar);
        }

        private Companion() {
        }

        @JvmStatic
        @Nullable
        public final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z2, @NotNull final CancellationSignal cancellationSignal, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.e eVar) {
            kotlin.coroutines.f transactionDispatcher;
            if (roomDatabase.isOpen() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) eVar.getContext().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                transactionDispatcher = z2 ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            kotlin.coroutines.f fVar = transactionDispatcher;
            C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
            c1691n.F();
            final InterfaceC1705u0 interfaceC1705u0B = AbstractC1666i.b(C1692n0.f51824b, fVar, null, new CoroutinesRoom$Companion$execute$4$job$1(callable, c1691n, null), 2, null);
            c1691n.v(new Function1<Throwable, kotlin.j>() { // from class: androidx.room.CoroutinesRoom$Companion$execute$4$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    SupportSQLiteCompat.Api16Impl.cancel(cancellationSignal);
                    InterfaceC1705u0.a.a(interfaceC1705u0B, null, 1, null);
                }
            });
            Object objY = c1691n.y();
            if (objY == kotlin.coroutines.intrinsics.a.e()) {
                AbstractC1795e.c(eVar);
            }
            return objY;
        }
    }

    private CoroutinesRoom() {
    }

    @JvmStatic
    @NotNull
    public static final <R> InterfaceC1639c createFlow(@NotNull RoomDatabase roomDatabase, boolean z2, @NotNull String[] strArr, @NotNull Callable<R> callable) {
        return INSTANCE.createFlow(roomDatabase, z2, strArr, callable);
    }

    @JvmStatic
    @Nullable
    public static final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z2, @NotNull CancellationSignal cancellationSignal, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.e eVar) {
        return INSTANCE.execute(roomDatabase, z2, cancellationSignal, callable, eVar);
    }

    @JvmStatic
    @Nullable
    public static final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z2, @NotNull Callable<R> callable, @NotNull kotlin.coroutines.e eVar) {
        return INSTANCE.execute(roomDatabase, z2, callable, eVar);
    }
}
