package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import com.anythink.core.common.f.f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u000b\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\f\b\u0007\u0018\u0000 B2\u00020\u00012\u00020\u0002:\u0002CBB\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u001f\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016¢\u0006\u0004\b \u0010\u000eJ\u0015\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0000¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010%\u001a\u0004\b&\u0010'R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010(R\u001a\u0010*\u001a\u00020)8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010+\u0012\u0004\b,\u0010\u000eR\u001a\u0010.\u001a\u00020-8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010/\u0012\u0004\b0\u0010\u000eR\"\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007018\u0006X\u0087\u0004¢\u0006\f\n\u0004\b2\u00103\u0012\u0004\b4\u0010\u000eR\"\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d018\u0006X\u0087\u0004¢\u0006\f\n\u0004\b5\u00106\u0012\u0004\b7\u0010\u000eR\u001a\u00109\u001a\u0002088\u0002X\u0082\u0004¢\u0006\f\n\u0004\b9\u0010:\u0012\u0004\b;\u0010\u000eR$\u0010=\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b=\u0010%\u001a\u0004\b>\u0010'R\u0014\u0010A\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006D"}, d2 = {"Landroidx/room/RoomSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "", "capacity", "<init>", "(I)V", "", "query", "initArgCount", "Lkotlin/j;", "init", "(Ljava/lang/String;I)V", "release", "()V", "statement", "bindTo", "(Landroidx/sqlite/db/SupportSQLiteProgram;)V", com.umeng.ccg.a.f49746H, "bindNull", "", f.a.f3244d, "bindLong", "(IJ)V", "", "bindDouble", "(ID)V", "bindString", "(ILjava/lang/String;)V", "", "bindBlob", "(I[B)V", "close", "other", "copyArgumentsFrom", "(Landroidx/room/RoomSQLiteQuery;)V", "clearBindings", "I", "getCapacity", "()I", "Ljava/lang/String;", "", "longBindings", "[J", "getLongBindings$annotations", "", "doubleBindings", "[D", "getDoubleBindings$annotations", "", "stringBindings", "[Ljava/lang/String;", "getStringBindings$annotations", "blobBindings", "[[B", "getBlobBindings$annotations", "", "bindingTypes", "[I", "getBindingTypes$annotations", "<set-?>", "argCount", "getArgCount", "getSql", "()Ljava/lang/String;", "sql", "Companion", "Binding", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    public static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    public static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    private int argCount;

    @NotNull
    private final int[] bindingTypes;

    @JvmField
    @NotNull
    public final byte[][] blobBindings;

    @VisibleForTesting
    private final int capacity;

    @JvmField
    @NotNull
    public final double[] doubleBindings;

    @JvmField
    @NotNull
    public final long[] longBindings;

    @Nullable
    private volatile String query;

    @JvmField
    @NotNull
    public final String[] stringBindings;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    @NotNull
    public static final TreeMap<Integer, RoomSQLiteQuery> queryPool = new TreeMap<>();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/room/RoomSQLiteQuery$Binding;", "", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface Binding {
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0003R\u001a\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087T¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u0012\u0004\b\u0014\u0010\u0003R\u001a\u0010\u0015\u001a\u00020\u000b8\u0006X\u0087T¢\u0006\f\n\u0004\b\u0015\u0010\u0013\u0012\u0004\b\u0016\u0010\u0003R&\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\u00178\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u0012\u0004\b\u001a\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0013R\u0014\u0010\u001c\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0013R\u0014\u0010\u001d\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0013R\u0014\u0010\u001e\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0013R\u0014\u0010\u001f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0013¨\u0006 "}, d2 = {"Landroidx/room/RoomSQLiteQuery$Companion;", "", "<init>", "()V", "Landroidx/sqlite/db/SupportSQLiteQuery;", "supportSQLiteQuery", "Landroidx/room/RoomSQLiteQuery;", "copyFrom", "(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;", "", "query", "", "argumentCount", "acquire", "(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;", "Lkotlin/j;", "prunePoolLocked$room_runtime_release", "prunePoolLocked", "POOL_LIMIT", "I", "getPOOL_LIMIT$annotations", "DESIRED_POOL_SIZE", "getDESIRED_POOL_SIZE$annotations", "Ljava/util/TreeMap;", "queryPool", "Ljava/util/TreeMap;", "getQueryPool$annotations", "BLOB", "DOUBLE", "LONG", "NULL", "STRING", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getDESIRED_POOL_SIZE$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getPOOL_LIMIT$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getQueryPool$annotations() {
        }

        @JvmStatic
        @NotNull
        public final RoomSQLiteQuery acquire(@NotNull String query, int argumentCount) {
            kotlin.jvm.internal.j.e(query, "query");
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            synchronized (treeMap) {
                Map.Entry<Integer, RoomSQLiteQuery> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(argumentCount));
                if (entryCeilingEntry == null) {
                    kotlin.j jVar = kotlin.j.f51397a;
                    RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(argumentCount, null);
                    roomSQLiteQuery.init(query, argumentCount);
                    return roomSQLiteQuery;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                RoomSQLiteQuery sqliteQuery = entryCeilingEntry.getValue();
                sqliteQuery.init(query, argumentCount);
                kotlin.jvm.internal.j.d(sqliteQuery, "sqliteQuery");
                return sqliteQuery;
            }
        }

        @JvmStatic
        @NotNull
        public final RoomSQLiteQuery copyFrom(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
            kotlin.jvm.internal.j.e(supportSQLiteQuery, "supportSQLiteQuery");
            final RoomSQLiteQuery roomSQLiteQueryAcquire = acquire(supportSQLiteQuery.getQuery(), supportSQLiteQuery.getArgCount());
            supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery$Companion$copyFrom$1
                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindBlob(int index, @NotNull byte[] value) {
                    kotlin.jvm.internal.j.e(value, "value");
                    roomSQLiteQueryAcquire.bindBlob(index, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindDouble(int index, double value) {
                    roomSQLiteQueryAcquire.bindDouble(index, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindLong(int index, long value) {
                    roomSQLiteQueryAcquire.bindLong(index, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindNull(int index) {
                    roomSQLiteQueryAcquire.bindNull(index);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindString(int index, @NotNull String value) {
                    kotlin.jvm.internal.j.e(value, "value");
                    roomSQLiteQueryAcquire.bindString(index, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void clearBindings() {
                    roomSQLiteQueryAcquire.clearBindings();
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    roomSQLiteQueryAcquire.close();
                }
            });
            return roomSQLiteQueryAcquire;
        }

        public final void prunePoolLocked$room_runtime_release() {
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            if (treeMap.size() <= 15) {
                return;
            }
            int size = treeMap.size() - 10;
            Iterator<Integer> it = treeMap.descendingKeySet().iterator();
            kotlin.jvm.internal.j.d(it, "queryPool.descendingKeySet().iterator()");
            while (true) {
                int i2 = size - 1;
                if (size <= 0) {
                    return;
                }
                it.next();
                it.remove();
                size = i2;
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ RoomSQLiteQuery(int i2, kotlin.jvm.internal.f fVar) {
        this(i2);
    }

    @JvmStatic
    @NotNull
    public static final RoomSQLiteQuery acquire(@NotNull String str, int i2) {
        return INSTANCE.acquire(str, i2);
    }

    @JvmStatic
    @NotNull
    public static final RoomSQLiteQuery copyFrom(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        return INSTANCE.copyFrom(supportSQLiteQuery);
    }

    private static /* synthetic */ void getBindingTypes$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBlobBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getDoubleBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLongBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getStringBindings$annotations() {
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int index, @NotNull byte[] value) {
        kotlin.jvm.internal.j.e(value, "value");
        this.bindingTypes[index] = 5;
        this.blobBindings[index] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int index, double value) {
        this.bindingTypes[index] = 3;
        this.doubleBindings[index] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int index, long value) {
        this.bindingTypes[index] = 2;
        this.longBindings[index] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int index) {
        this.bindingTypes[index] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int index, @NotNull String value) {
        kotlin.jvm.internal.j.e(value, "value");
        this.bindingTypes[index] = 4;
        this.stringBindings[index] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(@NotNull SupportSQLiteProgram statement) {
        kotlin.jvm.internal.j.e(statement, "statement");
        int argCount = getArgCount();
        if (1 > argCount) {
            return;
        }
        int i2 = 1;
        while (true) {
            int i3 = this.bindingTypes[i2];
            if (i3 == 1) {
                statement.bindNull(i2);
            } else if (i3 == 2) {
                statement.bindLong(i2, this.longBindings[i2]);
            } else if (i3 == 3) {
                statement.bindDouble(i2, this.doubleBindings[i2]);
            } else if (i3 == 4) {
                String str = this.stringBindings[i2];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindString(i2, str);
            } else if (i3 == 5) {
                byte[] bArr = this.blobBindings[i2];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindBlob(i2, bArr);
            }
            if (i2 == argCount) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        Arrays.fill(this.bindingTypes, 1);
        Arrays.fill(this.stringBindings, (Object) null);
        Arrays.fill(this.blobBindings, (Object) null);
        this.query = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final void copyArgumentsFrom(@NotNull RoomSQLiteQuery other) {
        kotlin.jvm.internal.j.e(other, "other");
        int argCount = other.getArgCount() + 1;
        System.arraycopy(other.bindingTypes, 0, this.bindingTypes, 0, argCount);
        System.arraycopy(other.longBindings, 0, this.longBindings, 0, argCount);
        System.arraycopy(other.stringBindings, 0, this.stringBindings, 0, argCount);
        System.arraycopy(other.blobBindings, 0, this.blobBindings, 0, argCount);
        System.arraycopy(other.doubleBindings, 0, this.doubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        return this.argCount;
    }

    public final int getCapacity() {
        return this.capacity;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    @NotNull
    /* renamed from: getSql */
    public String getQuery() {
        String str = this.query;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void init(@NotNull String query, int initArgCount) {
        kotlin.jvm.internal.j.e(query, "query");
        this.query = query;
        this.argCount = initArgCount;
    }

    public final void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = queryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.capacity), this);
            INSTANCE.prunePoolLocked$room_runtime_release();
            kotlin.j jVar = kotlin.j.f51397a;
        }
    }

    private RoomSQLiteQuery(int i2) {
        this.capacity = i2;
        int i3 = i2 + 1;
        this.bindingTypes = new int[i3];
        this.longBindings = new long[i3];
        this.doubleBindings = new double[i3];
        this.stringBindings = new String[i3];
        this.blobBindings = new byte[i3][];
    }
}
