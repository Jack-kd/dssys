package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.InvalidationTracker;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.view.LiveData;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.G;
import kotlin.collections.I;
import kotlin.collections.J;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 y2\u00020\u0001:\u0005yz{|}BX\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u001d\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\b0\u0004\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005¢\u0006\u0004\b\f\u0010\rB%\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005¢\u0006\u0004\b\f\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J'\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n2\u000e\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\nH\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001bH\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\"\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u000fH\u0000¢\u0006\u0004\b \u0010!J\u000f\u0010%\u001a\u00020\u0013H\u0000¢\u0006\u0004\b#\u0010$J'\u0010-\u001a\u00020\u00132\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0000¢\u0006\u0004\b+\u0010,J\u000f\u0010/\u001a\u00020\u0013H\u0000¢\u0006\u0004\b.\u0010$J\u0017\u00102\u001a\u00020\u00132\u0006\u00101\u001a\u000200H\u0017¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\u00132\u0006\u00101\u001a\u000200H\u0017¢\u0006\u0004\b4\u00103J\u0017\u00105\u001a\u00020\u00132\u0006\u00101\u001a\u000200H\u0017¢\u0006\u0004\b5\u00103J\u000f\u00109\u001a\u000206H\u0000¢\u0006\u0004\b7\u00108J\u000f\u0010:\u001a\u00020\u0013H\u0016¢\u0006\u0004\b:\u0010$J\u000f\u0010;\u001a\u00020\u0013H\u0017¢\u0006\u0004\b;\u0010$J#\u0010=\u001a\u00020\u00132\u0012\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005H\u0007¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u000fH\u0000¢\u0006\u0004\b?\u0010!J\u000f\u0010@\u001a\u00020\u0013H\u0000¢\u0006\u0004\b?\u0010$J9\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000D\"\u0004\b\u0000\u0010A2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n2\f\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000BH\u0017¢\u0006\u0004\bE\u0010FJA\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000D\"\u0004\b\u0000\u0010A2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n2\u0006\u0010G\u001a\u0002062\f\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000BH\u0017¢\u0006\u0004\bE\u0010HR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010I\u001a\u0004\bJ\u0010KR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010LR+\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\b0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010LR&\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\bM\u0010L\u001a\u0004\bN\u0010OR\"\u0010P\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010TR\u001a\u0010V\u001a\u00020U8GX\u0087\u0004¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0016\u0010Z\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R$\u0010]\u001a\u0004\u0018\u00010\\8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u0014\u0010d\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010g\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010hR&\u0010k\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020j0i8\u0000X\u0081\u0004¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0014\u0010r\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u0014\u0010t\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010sR\u001a\u0010v\u001a\u00020u8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bv\u0010w\u0012\u0004\bx\u0010$¨\u0006~"}, d2 = {"Landroidx/room/InvalidationTracker;", "", "Landroidx/room/RoomDatabase;", "database", "", "", "shadowTablesMap", "", "Lkotlin/jvm/JvmSuppressWildcards;", "viewTables", "", "tableNames", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V", "(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "", "tableId", "Lkotlin/j;", "stopTrackingTable", "(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V", "startTrackingTable", "validateAndResolveTableNames", "([Ljava/lang/String;)[Ljava/lang/String;", "names", "resolveViews", "Landroidx/room/AutoCloser;", "autoCloser", "setAutoCloser$room_runtime_release", "(Landroidx/room/AutoCloser;)V", "setAutoCloser", "internalInit$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "internalInit", "onAutoCloseCallback$room_runtime_release", "()V", "onAutoCloseCallback", "Landroid/content/Context;", com.umeng.analytics.pro.g.f49337X, "name", "Landroid/content/Intent;", "serviceIntent", "startMultiInstanceInvalidation$room_runtime_release", "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V", "startMultiInstanceInvalidation", "stopMultiInstanceInvalidation$room_runtime_release", "stopMultiInstanceInvalidation", "Landroidx/room/InvalidationTracker$Observer;", "observer", "addObserver", "(Landroidx/room/InvalidationTracker$Observer;)V", "addWeakObserver", "removeObserver", "", "ensureInitialization$room_runtime_release", "()Z", "ensureInitialization", "refreshVersionsAsync", "refreshVersionsSync", "tables", "notifyObserversByTableNames", "([Ljava/lang/String;)V", "syncTriggers$room_runtime_release", "syncTriggers", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/Callable;", "computeFunction", "Landroidx/lifecycle/LiveData;", "createLiveData", "([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "inTransaction", "([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "Landroidx/room/RoomDatabase;", "getDatabase$room_runtime_release", "()Landroidx/room/RoomDatabase;", "Ljava/util/Map;", "tableIdLookup", "getTableIdLookup$room_runtime_release", "()Ljava/util/Map;", "tablesNames", "[Ljava/lang/String;", "getTablesNames$room_runtime_release", "()[Ljava/lang/String;", "Landroidx/room/AutoCloser;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pendingRefresh", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getPendingRefresh", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "Z", "Landroidx/sqlite/db/SupportSQLiteStatement;", "cleanupStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "getCleanupStatement$room_runtime_release", "()Landroidx/sqlite/db/SupportSQLiteStatement;", "setCleanupStatement$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteStatement;)V", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "observedTableTracker", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "Landroidx/room/InvalidationLiveDataContainer;", "invalidationLiveDataContainer", "Landroidx/room/InvalidationLiveDataContainer;", "Landroidx/arch/core/internal/SafeIterableMap;", "Landroidx/room/InvalidationTracker$ObserverWrapper;", "observerMap", "Landroidx/arch/core/internal/SafeIterableMap;", "getObserverMap$room_runtime_release", "()Landroidx/arch/core/internal/SafeIterableMap;", "Landroidx/room/MultiInstanceInvalidationClient;", "multiInstanceInvalidationClient", "Landroidx/room/MultiInstanceInvalidationClient;", "syncTriggersLock", "Ljava/lang/Object;", "trackerLock", "Ljava/lang/Runnable;", "refreshRunnable", "Ljava/lang/Runnable;", "getRefreshRunnable$annotations", "Companion", "ObservedTableTracker", "Observer", "ObserverWrapper", "WeakObserver", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public class InvalidationTracker {

    @NotNull
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";

    @NotNull
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";

    @NotNull
    public static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";

    @NotNull
    public static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";

    @NotNull
    private static final String TABLE_ID_COLUMN_NAME = "table_id";

    @NotNull
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";

    @Nullable
    private AutoCloser autoCloser;

    @Nullable
    private volatile SupportSQLiteStatement cleanupStatement;

    @NotNull
    private final RoomDatabase database;
    private volatile boolean initialized;

    @NotNull
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;

    @Nullable
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;

    @NotNull
    private final ObservedTableTracker observedTableTracker;

    @GuardedBy("observerMap")
    @NotNull
    private final SafeIterableMap<Observer, ObserverWrapper> observerMap;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    private final AtomicBoolean pendingRefresh;

    @JvmField
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final Runnable refreshRunnable;

    @NotNull
    private final Map<String, String> shadowTablesMap;

    @NotNull
    private final Object syncTriggersLock;

    @NotNull
    private final Map<String, Integer> tableIdLookup;

    @NotNull
    private final String[] tablesNames;

    @NotNull
    private final Object trackerLock;

    @NotNull
    private final Map<String, Set<String>> viewTables;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0012\u0010\u0003R\u001a\u0010\u0013\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0013\u0010\u0011\u0012\u0004\b\u0014\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011¨\u0006\u001c"}, d2 = {"Landroidx/room/InvalidationTracker$Companion;", "", "<init>", "()V", "", "tableName", "triggerType", "getTriggerName$room_runtime_release", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "getTriggerName", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "database", "Lkotlin/j;", "beginTransactionInternal$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "beginTransactionInternal", "RESET_UPDATED_TABLES_SQL", "Ljava/lang/String;", "getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations", "SELECT_UPDATED_TABLES_SQL", "getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations", "CREATE_TRACKING_TABLE_SQL", "INVALIDATED_COLUMN_NAME", "TABLE_ID_COLUMN_NAME", "", "TRIGGERS", "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        public final void beginTransactionInternal$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
            kotlin.jvm.internal.j.e(database, "database");
            if (database.isWriteAheadLoggingEnabled()) {
                database.beginTransactionNonExclusive();
            } else {
                database.beginTransaction();
            }
        }

        @NotNull
        public final String getTriggerName$room_runtime_release(@NotNull String tableName, @NotNull String triggerType) {
            kotlin.jvm.internal.j.e(tableName, "tableName");
            kotlin.jvm.internal.j.e(triggerType, "triggerType");
            return "`room_table_modification_trigger_" + tableName + '_' + triggerType + '`';
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\u0018\n\u0002\b\f\b\u0000\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\n\u0010\u0007\u001a\u00020\u0006\"\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\b2\n\u0010\u0007\u001a\u00020\u0006\"\u00020\u0002¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Landroidx/room/InvalidationTracker$ObservedTableTracker;", "", "", "tableCount", "<init>", "(I)V", "", "tableIds", "", "onAdded", "([I)Z", "onRemoved", "Lkotlin/j;", "resetTriggerState", "()V", "getTablesToSync", "()[I", "", "tableObservers", "[J", "getTableObservers", "()[J", "", "triggerStates", "[Z", "triggerStateChanges", "[I", "needsSync", "Z", "getNeedsSync", "()Z", "setNeedsSync", "(Z)V", "Companion", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ObservedTableTracker {
        public static final int ADD = 1;
        public static final int NO_OP = 0;
        public static final int REMOVE = 2;
        private boolean needsSync;

        @NotNull
        private final long[] tableObservers;

        @NotNull
        private final int[] triggerStateChanges;

        @NotNull
        private final boolean[] triggerStates;

        public ObservedTableTracker(int i2) {
            this.tableObservers = new long[i2];
            this.triggerStates = new boolean[i2];
            this.triggerStateChanges = new int[i2];
        }

        public final boolean getNeedsSync() {
            return this.needsSync;
        }

        @NotNull
        public final long[] getTableObservers() {
            return this.tableObservers;
        }

        @VisibleForTesting
        @JvmName(name = "getTablesToSync")
        @Nullable
        public final int[] getTablesToSync() {
            synchronized (this) {
                try {
                    if (!this.needsSync) {
                        return null;
                    }
                    long[] jArr = this.tableObservers;
                    int length = jArr.length;
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < length) {
                        int i4 = i3 + 1;
                        int i5 = 1;
                        boolean z2 = jArr[i2] > 0;
                        boolean[] zArr = this.triggerStates;
                        if (z2 != zArr[i3]) {
                            int[] iArr = this.triggerStateChanges;
                            if (!z2) {
                                i5 = 2;
                            }
                            iArr[i3] = i5;
                        } else {
                            this.triggerStateChanges[i3] = 0;
                        }
                        zArr[i3] = z2;
                        i2++;
                        i3 = i4;
                    }
                    this.needsSync = false;
                    return (int[]) this.triggerStateChanges.clone();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final boolean onAdded(@NotNull int... tableIds) {
            boolean z2;
            kotlin.jvm.internal.j.e(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z2 = false;
                    for (int i2 : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j2 = jArr[i2];
                        jArr[i2] = 1 + j2;
                        if (j2 == 0) {
                            z2 = true;
                            this.needsSync = true;
                        }
                    }
                    kotlin.j jVar = kotlin.j.f51397a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z2;
        }

        public final boolean onRemoved(@NotNull int... tableIds) {
            boolean z2;
            kotlin.jvm.internal.j.e(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z2 = false;
                    for (int i2 : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j2 = jArr[i2];
                        jArr[i2] = j2 - 1;
                        if (j2 == 1) {
                            z2 = true;
                            this.needsSync = true;
                        }
                    }
                    kotlin.j jVar = kotlin.j.f51397a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z2;
        }

        public final void resetTriggerState() {
            synchronized (this) {
                Arrays.fill(this.triggerStates, false);
                this.needsSync = true;
                kotlin.j jVar = kotlin.j.f51397a;
            }
        }

        public final void setNeedsSync(boolean z2) {
            this.needsSync = z2;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B%\b\u0014\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\tJ\u001d\u0010\f\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\nH&¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Landroidx/room/InvalidationTracker$Observer;", "", "", "", "tables", "<init>", "([Ljava/lang/String;)V", "firstTable", "rest", "(Ljava/lang/String;[Ljava/lang/String;)V", "", "Lkotlin/j;", "onInvalidated", "(Ljava/util/Set;)V", "[Ljava/lang/String;", "getTables$room_runtime_release", "()[Ljava/lang/String;", "", "isRemote$room_runtime_release", "()Z", "isRemote", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static abstract class Observer {

        @NotNull
        private final String[] tables;

        public Observer(@NotNull String[] tables) {
            kotlin.jvm.internal.j.e(tables, "tables");
            this.tables = tables;
        }

        @NotNull
        /* renamed from: getTables$room_runtime_release, reason: from getter */
        public final String[] getTables() {
            return this.tables;
        }

        public boolean isRemote$room_runtime_release() {
            return false;
        }

        public abstract void onInvalidated(@NotNull Set<String> tables);

        /* JADX WARN: Illegal instructions before constructor call */
        public Observer(@NotNull String firstTable, @NotNull String... rest) {
            kotlin.jvm.internal.j.e(firstTable, "firstTable");
            kotlin.jvm.internal.j.e(rest, "rest");
            List listC = kotlin.collections.p.c();
            kotlin.collections.v.A(listC, rest);
            listC.add(firstTable);
            Object[] array = kotlin.collections.p.a(listC).toArray(new String[0]);
            kotlin.jvm.internal.j.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            this((String[]) array);
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0000¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Landroidx/room/InvalidationTracker$ObserverWrapper;", "", "Landroidx/room/InvalidationTracker$Observer;", "observer", "", "tableIds", "", "", "tableNames", "<init>", "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "", "", "invalidatedTablesIds", "Lkotlin/j;", "notifyByTableInvalidStatus$room_runtime_release", "(Ljava/util/Set;)V", "notifyByTableInvalidStatus", "tables", "notifyByTableNames$room_runtime_release", "([Ljava/lang/String;)V", "notifyByTableNames", "Landroidx/room/InvalidationTracker$Observer;", "getObserver$room_runtime_release", "()Landroidx/room/InvalidationTracker$Observer;", "[I", "getTableIds$room_runtime_release", "()[I", "[Ljava/lang/String;", "singleTableSet", "Ljava/util/Set;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ObserverWrapper {

        @NotNull
        private final Observer observer;

        @NotNull
        private final Set<String> singleTableSet;

        @NotNull
        private final int[] tableIds;

        @NotNull
        private final String[] tableNames;

        public ObserverWrapper(@NotNull Observer observer, @NotNull int[] tableIds, @NotNull String[] tableNames) {
            kotlin.jvm.internal.j.e(observer, "observer");
            kotlin.jvm.internal.j.e(tableIds, "tableIds");
            kotlin.jvm.internal.j.e(tableNames, "tableNames");
            this.observer = observer;
            this.tableIds = tableIds;
            this.tableNames = tableNames;
            this.singleTableSet = !(tableNames.length == 0) ? I.d(tableNames[0]) : J.e();
            if (tableIds.length != tableNames.length) {
                throw new IllegalStateException("Check failed.");
            }
        }

        @NotNull
        /* renamed from: getObserver$room_runtime_release, reason: from getter */
        public final Observer getObserver() {
            return this.observer;
        }

        @NotNull
        /* renamed from: getTableIds$room_runtime_release, reason: from getter */
        public final int[] getTableIds() {
            return this.tableIds;
        }

        public final void notifyByTableInvalidStatus$room_runtime_release(@NotNull Set<Integer> invalidatedTablesIds) {
            Set<String> setE;
            kotlin.jvm.internal.j.e(invalidatedTablesIds, "invalidatedTablesIds");
            int[] iArr = this.tableIds;
            int length = iArr.length;
            if (length != 0) {
                int i2 = 0;
                if (length != 1) {
                    Set setB = I.b();
                    int[] iArr2 = this.tableIds;
                    int length2 = iArr2.length;
                    int i3 = 0;
                    while (i2 < length2) {
                        int i4 = i3 + 1;
                        if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i2]))) {
                            setB.add(this.tableNames[i3]);
                        }
                        i2++;
                        i3 = i4;
                    }
                    setE = I.a(setB);
                } else {
                    setE = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.singleTableSet : J.e();
                }
            } else {
                setE = J.e();
            }
            if (setE.isEmpty()) {
                return;
            }
            this.observer.onInvalidated(setE);
        }

        public final void notifyByTableNames$room_runtime_release(@NotNull String[] tables) {
            Set<String> setE;
            kotlin.jvm.internal.j.e(tables, "tables");
            int length = this.tableNames.length;
            if (length == 0) {
                setE = J.e();
            } else if (length == 1) {
                int length2 = tables.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length2) {
                        setE = J.e();
                        break;
                    } else {
                        if (kotlin.text.z.v(tables[i2], this.tableNames[0], true)) {
                            setE = this.singleTableSet;
                            break;
                        }
                        i2++;
                    }
                }
            } else {
                Set setB = I.b();
                for (String str : tables) {
                    for (String str2 : this.tableNames) {
                        if (kotlin.text.z.v(str2, str, true)) {
                            setB.add(str2);
                        }
                    }
                }
                setE = I.a(setB);
            }
            if (setE.isEmpty()) {
                return;
            }
            this.observer.onInvalidated(setE);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/room/InvalidationTracker$WeakObserver;", "Landroidx/room/InvalidationTracker$Observer;", "Landroidx/room/InvalidationTracker;", "tracker", "delegate", "<init>", "(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V", "", "", "tables", "Lkotlin/j;", "onInvalidated", "(Ljava/util/Set;)V", "Landroidx/room/InvalidationTracker;", "getTracker", "()Landroidx/room/InvalidationTracker;", "Ljava/lang/ref/WeakReference;", "delegateRef", "Ljava/lang/ref/WeakReference;", "getDelegateRef", "()Ljava/lang/ref/WeakReference;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class WeakObserver extends Observer {

        @NotNull
        private final WeakReference<Observer> delegateRef;

        @NotNull
        private final InvalidationTracker tracker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WeakObserver(@NotNull InvalidationTracker tracker, @NotNull Observer delegate) {
            super(delegate.getTables());
            kotlin.jvm.internal.j.e(tracker, "tracker");
            kotlin.jvm.internal.j.e(delegate, "delegate");
            this.tracker = tracker;
            this.delegateRef = new WeakReference<>(delegate);
        }

        @NotNull
        public final WeakReference<Observer> getDelegateRef() {
            return this.delegateRef;
        }

        @NotNull
        public final InvalidationTracker getTracker() {
            return this.tracker;
        }

        @Override // androidx.room.InvalidationTracker.Observer
        public void onInvalidated(@NotNull Set<String> tables) {
            kotlin.jvm.internal.j.e(tables, "tables");
            Observer observer = this.delegateRef.get();
            if (observer == null) {
                this.tracker.removeObserver(this);
            } else {
                observer.onInvalidated(tables);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull Map<String, String> shadowTablesMap, @NotNull Map<String, Set<String>> viewTables, @NotNull String... tableNames) {
        String lowerCase;
        kotlin.jvm.internal.j.e(database, "database");
        kotlin.jvm.internal.j.e(shadowTablesMap, "shadowTablesMap");
        kotlin.jvm.internal.j.e(viewTables, "viewTables");
        kotlin.jvm.internal.j.e(tableNames, "tableNames");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.pendingRefresh = new AtomicBoolean(false);
        this.observedTableTracker = new ObservedTableTracker(tableNames.length);
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        this.observerMap = new SafeIterableMap<>();
        this.syncTriggersLock = new Object();
        this.trackerLock = new Object();
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = tableNames[i2];
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase2 = str.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i2));
            String str2 = this.shadowTablesMap.get(tableNames[i2]);
            if (str2 != null) {
                kotlin.jvm.internal.j.d(US, "US");
                lowerCase = str2.toLowerCase(US);
                kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i2] = lowerCase2;
        }
        this.tablesNames = strArr;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale US2 = Locale.US;
            kotlin.jvm.internal.j.d(US2, "US");
            String lowerCase3 = value.toLowerCase(US2);
            kotlin.jvm.internal.j.d(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String key = entry.getKey();
                kotlin.jvm.internal.j.d(US2, "US");
                String lowerCase4 = key.toLowerCase(US2);
                kotlin.jvm.internal.j.d(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                Map<String, Integer> map = this.tableIdLookup;
                map.put(lowerCase4, G.i(map, lowerCase3));
            }
        }
        this.refreshRunnable = new Runnable() { // from class: androidx.room.InvalidationTracker$refreshRunnable$1
            private final Set<Integer> checkUpdatedTable() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
                InvalidationTracker invalidationTracker = this.this$0;
                Set setB = I.b();
                Cursor cursorQuery$default = RoomDatabase.query$default(invalidationTracker.getDatabase(), new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL), null, 2, null);
                try {
                    Cursor cursor = cursorQuery$default;
                    while (cursor.moveToNext()) {
                        setB.add(Integer.valueOf(cursor.getInt(0)));
                    }
                    kotlin.j jVar = kotlin.j.f51397a;
                    kotlin.io.a.a(cursorQuery$default, null);
                    Set<Integer> setA = I.a(setB);
                    if (setA.isEmpty()) {
                        return setA;
                    }
                    if (this.this$0.getCleanupStatement() == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    SupportSQLiteStatement cleanupStatement = this.this$0.getCleanupStatement();
                    if (cleanupStatement == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    cleanupStatement.executeUpdateDelete();
                    return setA;
                } finally {
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Set<Integer> setE;
                AutoCloser autoCloser;
                AutoCloser autoCloser2;
                Lock closeLock$room_runtime_release = this.this$0.getDatabase().getCloseLock$room_runtime_release();
                closeLock$room_runtime_release.lock();
                try {
                    try {
                    } finally {
                        closeLock$room_runtime_release.unlock();
                        autoCloser2 = this.this$0.autoCloser;
                        if (autoCloser2 != null) {
                            autoCloser2.decrementCountAndScheduleClose();
                        }
                    }
                } catch (SQLiteException e2) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
                    setE = J.e();
                    closeLock$room_runtime_release.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                } catch (IllegalStateException e3) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e3);
                    setE = J.e();
                    closeLock$room_runtime_release.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                }
                if (!this.this$0.ensureInitialization$room_runtime_release()) {
                    if (autoCloser2 != null) {
                        return;
                    } else {
                        return;
                    }
                }
                if (!this.this$0.getPendingRefresh().compareAndSet(true, false)) {
                    closeLock$room_runtime_release.unlock();
                    AutoCloser autoCloser3 = this.this$0.autoCloser;
                    if (autoCloser3 != null) {
                        autoCloser3.decrementCountAndScheduleClose();
                        return;
                    }
                    return;
                }
                if (this.this$0.getDatabase().inTransaction()) {
                    closeLock$room_runtime_release.unlock();
                    AutoCloser autoCloser4 = this.this$0.autoCloser;
                    if (autoCloser4 != null) {
                        autoCloser4.decrementCountAndScheduleClose();
                        return;
                    }
                    return;
                }
                SupportSQLiteDatabase writableDatabase = this.this$0.getDatabase().getOpenHelper().getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    setE = checkUpdatedTable();
                    writableDatabase.setTransactionSuccessful();
                    closeLock$room_runtime_release.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                        autoCloser.decrementCountAndScheduleClose();
                    }
                    if (setE.isEmpty()) {
                        return;
                    }
                    SafeIterableMap<InvalidationTracker.Observer, InvalidationTracker.ObserverWrapper> observerMap$room_runtime_release = this.this$0.getObserverMap$room_runtime_release();
                    InvalidationTracker invalidationTracker = this.this$0;
                    synchronized (observerMap$room_runtime_release) {
                        try {
                            Iterator<Map.Entry<K, V>> it = invalidationTracker.getObserverMap$room_runtime_release().iterator();
                            while (it.hasNext()) {
                                ((InvalidationTracker.ObserverWrapper) ((Map.Entry) it.next()).getValue()).notifyByTableInvalidStatus$room_runtime_release(setE);
                            }
                            kotlin.j jVar = kotlin.j.f51397a;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        };
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshRunnable$annotations() {
    }

    private final String[] resolveViews(String[] names) {
        Set setB = I.b();
        for (String str : names) {
            Map<String, Set<String>> map = this.viewTables;
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (map.containsKey(lowerCase)) {
                Map<String, Set<String>> map2 = this.viewTables;
                kotlin.jvm.internal.j.d(US, "US");
                String lowerCase2 = str.toLowerCase(US);
                kotlin.jvm.internal.j.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Set<String> set = map2.get(lowerCase2);
                kotlin.jvm.internal.j.b(set);
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        Object[] array = I.a(setB).toArray(new String[0]);
        kotlin.jvm.internal.j.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    private final void startTrackingTable(SupportSQLiteDatabase db, int tableId) throws SQLException {
        db.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + tableId + ", 0)");
        String str = this.tablesNames[tableId];
        for (String str2 : TRIGGERS) {
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE " + UPDATE_TABLE_NAME + " SET " + INVALIDATED_COLUMN_NAME + " = 1 WHERE " + TABLE_ID_COLUMN_NAME + " = " + tableId + " AND " + INVALIDATED_COLUMN_NAME + " = 0; END";
            kotlin.jvm.internal.j.d(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    private final void stopTrackingTable(SupportSQLiteDatabase db, int tableId) throws SQLException {
        String str = this.tablesNames[tableId];
        for (String str2 : TRIGGERS) {
            String str3 = "DROP TRIGGER IF EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2);
            kotlin.jvm.internal.j.d(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    private final String[] validateAndResolveTableNames(String[] tableNames) {
        String[] strArrResolveViews = resolveViews(tableNames);
        for (String str : strArrResolveViews) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (!map.containsKey(lowerCase)) {
                throw new IllegalArgumentException(("There is no table with name " + str).toString());
            }
        }
        return strArrResolveViews;
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void addObserver(@NotNull Observer observer) {
        ObserverWrapper observerWrapperPutIfAbsent;
        kotlin.jvm.internal.j.e(observer, "observer");
        String[] strArrResolveViews = resolveViews(observer.getTables());
        ArrayList arrayList = new ArrayList(strArrResolveViews.length);
        for (String str : strArrResolveViews) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Integer num = map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            arrayList.add(num);
        }
        int[] iArrZ = kotlin.collections.y.Z(arrayList);
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArrZ, strArrResolveViews);
        synchronized (this.observerMap) {
            observerWrapperPutIfAbsent = this.observerMap.putIfAbsent(observer, observerWrapper);
        }
        if (observerWrapperPutIfAbsent == null && this.observedTableTracker.onAdded(Arrays.copyOf(iArrZ, iArrZ.length))) {
            syncTriggers$room_runtime_release();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addWeakObserver(@NotNull Observer observer) {
        kotlin.jvm.internal.j.e(observer, "observer");
        addObserver(new WeakObserver(this, observer));
    }

    @Deprecated(message = "Use [createLiveData(String[], boolean, Callable)]")
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, @NotNull Callable<T> computeFunction) {
        kotlin.jvm.internal.j.e(tableNames, "tableNames");
        kotlin.jvm.internal.j.e(computeFunction, "computeFunction");
        return createLiveData(tableNames, false, computeFunction);
    }

    public final boolean ensureInitialization$room_runtime_release() {
        if (!this.database.isOpen()) {
            return false;
        }
        if (!this.initialized) {
            this.database.getOpenHelper().getWritableDatabase();
        }
        if (this.initialized) {
            return true;
        }
        Log.e(Room.LOG_TAG, "database is not initialized even though it is open");
        return false;
    }

    @Nullable
    /* renamed from: getCleanupStatement$room_runtime_release, reason: from getter */
    public final SupportSQLiteStatement getCleanupStatement() {
        return this.cleanupStatement;
    }

    @NotNull
    /* renamed from: getDatabase$room_runtime_release, reason: from getter */
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    @NotNull
    public final SafeIterableMap<Observer, ObserverWrapper> getObserverMap$room_runtime_release() {
        return this.observerMap;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final AtomicBoolean getPendingRefresh() {
        return this.pendingRefresh;
    }

    @NotNull
    public final Map<String, Integer> getTableIdLookup$room_runtime_release() {
        return this.tableIdLookup;
    }

    @NotNull
    /* renamed from: getTablesNames$room_runtime_release, reason: from getter */
    public final String[] getTablesNames() {
        return this.tablesNames;
    }

    public final void internalInit$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
        kotlin.jvm.internal.j.e(database, "database");
        synchronized (this.trackerLock) {
            if (this.initialized) {
                Log.e(Room.LOG_TAG, "Invalidation tracker is initialized twice :/.");
                return;
            }
            database.execSQL("PRAGMA temp_store = MEMORY;");
            database.execSQL("PRAGMA recursive_triggers='ON';");
            database.execSQL(CREATE_TRACKING_TABLE_SQL);
            syncTriggers$room_runtime_release(database);
            this.cleanupStatement = database.compileStatement(RESET_UPDATED_TABLES_SQL);
            this.initialized = true;
            kotlin.j jVar = kotlin.j.f51397a;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting(otherwise = 3)
    public final void notifyObserversByTableNames(@NotNull String... tables) {
        kotlin.jvm.internal.j.e(tables, "tables");
        synchronized (this.observerMap) {
            try {
                Iterator<Map.Entry<K, V>> it = this.observerMap.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    kotlin.jvm.internal.j.d(entry, "(observer, wrapper)");
                    Observer observer = (Observer) entry.getKey();
                    ObserverWrapper observerWrapper = (ObserverWrapper) entry.getValue();
                    if (!observer.isRemote$room_runtime_release()) {
                        observerWrapper.notifyByTableNames$room_runtime_release(tables);
                    }
                }
                kotlin.j jVar = kotlin.j.f51397a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onAutoCloseCallback$room_runtime_release() {
        synchronized (this.trackerLock) {
            this.initialized = false;
            this.observedTableTracker.resetTriggerState();
            kotlin.j jVar = kotlin.j.f51397a;
        }
    }

    public void refreshVersionsAsync() {
        if (this.pendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.autoCloser;
            if (autoCloser != null) {
                autoCloser.incrementCountAndEnsureDbIsOpen();
            }
            this.database.getQueryExecutor().execute(this.refreshRunnable);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void refreshVersionsSync() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        syncTriggers$room_runtime_release();
        this.refreshRunnable.run();
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void removeObserver(@NotNull Observer observer) {
        ObserverWrapper observerWrapperRemove;
        kotlin.jvm.internal.j.e(observer, "observer");
        synchronized (this.observerMap) {
            observerWrapperRemove = this.observerMap.remove(observer);
        }
        if (observerWrapperRemove != null) {
            ObservedTableTracker observedTableTracker = this.observedTableTracker;
            int[] tableIds = observerWrapperRemove.getTableIds();
            if (observedTableTracker.onRemoved(Arrays.copyOf(tableIds, tableIds.length))) {
                syncTriggers$room_runtime_release();
            }
        }
    }

    public final void setAutoCloser$room_runtime_release(@NotNull AutoCloser autoCloser) {
        kotlin.jvm.internal.j.e(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new Runnable() { // from class: androidx.room.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f1017b.onAutoCloseCallback$room_runtime_release();
            }
        });
    }

    public final void setCleanupStatement$room_runtime_release(@Nullable SupportSQLiteStatement supportSQLiteStatement) {
        this.cleanupStatement = supportSQLiteStatement;
    }

    public final void startMultiInstanceInvalidation$room_runtime_release(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(name, "name");
        kotlin.jvm.internal.j.e(serviceIntent, "serviceIntent");
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, serviceIntent, this, this.database.getQueryExecutor());
    }

    public final void stopMultiInstanceInvalidation$room_runtime_release() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
        this.multiInstanceInvalidationClient = null;
    }

    public final void syncTriggers$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
        kotlin.jvm.internal.j.e(database, "database");
        if (database.inTransaction()) {
            return;
        }
        try {
            Lock closeLock$room_runtime_release = this.database.getCloseLock$room_runtime_release();
            closeLock$room_runtime_release.lock();
            try {
                synchronized (this.syncTriggersLock) {
                    int[] tablesToSync = this.observedTableTracker.getTablesToSync();
                    if (tablesToSync != null) {
                        INSTANCE.beginTransactionInternal$room_runtime_release(database);
                        try {
                            int length = tablesToSync.length;
                            int i2 = 0;
                            int i3 = 0;
                            while (i2 < length) {
                                int i4 = tablesToSync[i2];
                                int i5 = i3 + 1;
                                if (i4 == 1) {
                                    startTrackingTable(database, i3);
                                } else if (i4 == 2) {
                                    stopTrackingTable(database, i3);
                                }
                                i2++;
                                i3 = i5;
                            }
                            database.setTransactionSuccessful();
                            database.endTransaction();
                            kotlin.j jVar = kotlin.j.f51397a;
                        } catch (Throwable th) {
                            database.endTransaction();
                            throw th;
                        }
                    }
                }
            } finally {
                closeLock$room_runtime_release.unlock();
            }
        } catch (SQLiteException e2) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
        } catch (IllegalStateException e3) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e3);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, boolean inTransaction, @NotNull Callable<T> computeFunction) {
        kotlin.jvm.internal.j.e(tableNames, "tableNames");
        kotlin.jvm.internal.j.e(computeFunction, "computeFunction");
        return this.invalidationLiveDataContainer.create(validateAndResolveTableNames(tableNames), inTransaction, computeFunction);
    }

    public final void syncTriggers$room_runtime_release() {
        if (this.database.isOpen()) {
            syncTriggers$room_runtime_release(this.database.getOpenHelper().getWritableDatabase());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull String... tableNames) {
        this(database, G.h(), G.h(), (String[]) Arrays.copyOf(tableNames, tableNames.length));
        kotlin.jvm.internal.j.e(database, "database");
        kotlin.jvm.internal.j.e(tableNames, "tableNames");
    }
}
