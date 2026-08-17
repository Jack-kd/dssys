package com.varbto.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.d.s;
import com.sigmob.sdk.base.n;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import k1.InterfaceC1595b;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class c extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static c f50549c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set f50550d = Collections.synchronizedSet(new HashSet());

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f50551b;

    public c(Context context) {
        super(context, "anr_data.db", (SQLiteDatabase.CursorFactory) null, 4);
        this.f50551b = Executors.newSingleThreadExecutor();
    }

    public static synchronized c b(Context context) {
        try {
            if (f50549c == null) {
                f50549c = new c(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50549c;
    }

    public final int a(int i2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT COUNT(*) FROM anr_timestamps WHERE timestamp >= ?", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
            try {
                int i3 = cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
                cursorRawQuery.close();
                return i3;
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("AnrTimestampDbHelper", "getCountWithinDays failed", th);
            }
            return 0;
        }
    }

    public final HashSet c(final String str) throws InterruptedException {
        final HashSet hashSet = new HashSet();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f50551b.execute(new Runnable() { // from class: k1.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f51274b.g(str, hashSet, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        if (h.f51286a) {
            hashSet.size();
        }
        return hashSet;
    }

    public final void d(final long j2, final String str) {
        final String strJoin;
        if (h.f51286a) {
            Objects.toString(f50550d);
        }
        Set set = f50550d;
        synchronized (set) {
            strJoin = TextUtils.join(",", set);
        }
        this.f50551b.execute(new Runnable() { // from class: k1.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f51270b.e(j2, strJoin, str);
            }
        });
    }

    public final /* synthetic */ void e(long j2, String str, String str2) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("timestamp", Long.valueOf(j2));
            contentValues.put("pending_sdks", str);
            contentValues.put(n.f36449l, str2);
            writableDatabase.insert(s.f2929m, null, contentValues);
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("AnrTimestampDbHelper", "insertTimestamp failed", th);
            }
        }
    }

    public final /* synthetic */ void f(long j2, String str, InterfaceC1595b interfaceC1595b) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT pending_sdks FROM anr_timestamps WHERE timestamp=?", new String[]{String.valueOf(j2)});
                try {
                    String string = cursorRawQuery.moveToFirst() ? cursorRawQuery.getString(0) : null;
                    cursorRawQuery.close();
                    if (string != null && !string.isEmpty()) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : string.split(",")) {
                            if (!str2.equals(str)) {
                                arrayList.add(str2);
                            }
                        }
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("pending_sdks", TextUtils.join(",", arrayList));
                        writableDatabase.update(s.f2929m, contentValues, "timestamp=?", new String[]{String.valueOf(j2)});
                        writableDatabase.setTransactionSuccessful();
                        if (arrayList.isEmpty() && interfaceC1595b != null) {
                            try {
                                interfaceC1595b.a(j2);
                            } catch (Throwable th) {
                                if (h.f51286a) {
                                    Log.e("AnrTimestampDbHelper", "onDelete callback failed", th);
                                }
                            }
                        }
                        writableDatabase.endTransaction();
                        return;
                    }
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } finally {
                }
            } catch (Throwable th2) {
                writableDatabase.endTransaction();
                throw th2;
            }
        } catch (Throwable th3) {
            if (h.f51286a) {
                Log.e("AnrTimestampDbHelper", "markAsSent failed", th3);
            }
        }
    }

    public final /* synthetic */ void g(String str, Set set, CountDownLatch countDownLatch) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp,pending_sdks FROM anr_timestamps", null);
            try {
                boolean z2 = h.f51286a;
                while (cursorRawQuery.moveToNext()) {
                    int i2 = 0;
                    long j2 = cursorRawQuery.getLong(0);
                    String string = cursorRawQuery.getString(1);
                    if (string != null && !string.isEmpty()) {
                        String[] strArrSplit = string.split(",");
                        int length = strArrSplit.length;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            }
                            if (strArrSplit[i2].trim().equals(str)) {
                                set.add(Long.valueOf(j2));
                                boolean z3 = h.f51286a;
                                break;
                            }
                            i2++;
                        }
                    }
                }
                cursorRawQuery.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                if (h.f51286a) {
                    Log.e("AnrTimestampDbHelper", "getTimestampsPendingFor failed", th);
                }
            } finally {
                countDownLatch.countDown();
            }
        }
    }

    public final boolean j(long j2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT 1 FROM anr_timestamps WHERE timestamp >= ? AND timestamp <= ? LIMIT 1", new String[]{String.valueOf(j2 - 10000), String.valueOf(j2 + 10000)});
            try {
                boolean zMoveToFirst = cursorRawQuery.moveToFirst();
                cursorRawQuery.close();
                return zMoveToFirst;
            } finally {
            }
        } catch (Throwable th) {
            if (!h.f51286a) {
                return false;
            }
            Log.e("AnrTimestampDbHelper", "existsTimestampNear failed", th);
            return false;
        }
    }

    public final JSONArray n(int i2) {
        JSONArray jSONArray = new JSONArray();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp FROM anr_timestamps WHERE timestamp >= ? ORDER BY timestamp DESC", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
                while (cursorRawQuery.moveToNext()) {
                    jSONArray.put(simpleDateFormat.format(new Date(cursorRawQuery.getLong(0))));
                }
                cursorRawQuery.close();
                return jSONArray;
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("AnrTimestampDbHelper", "getTimestampsWithinDays failed", th);
            }
            return jSONArray;
        }
    }

    public final void o(final long j2, final String str, final InterfaceC1595b interfaceC1595b) {
        this.f50551b.execute(new Runnable() { // from class: k1.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f51278b.f(j2, str, interfaceC1595b);
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE anr_timestamps (id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER NOT NULL, pending_sdks TEXT, source TEXT)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_timestamp ON anr_timestamps(timestamp)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS anr_timestamps");
        sQLiteDatabase.execSQL("CREATE TABLE anr_timestamps (id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER NOT NULL, pending_sdks TEXT, source TEXT)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_timestamp ON anr_timestamps(timestamp)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i2 < 3) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS anr_timestamps");
            sQLiteDatabase.execSQL("CREATE TABLE anr_timestamps (id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER NOT NULL, pending_sdks TEXT, source TEXT)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_timestamp ON anr_timestamps(timestamp)");
        } else if (i2 < 4) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE anr_timestamps ADD COLUMN source TEXT");
            } catch (Throwable th) {
                if (h.f51286a) {
                    Log.e("AnrTimestampDbHelper", "onUpgrade add source column failed", th);
                }
            }
        }
    }
}
