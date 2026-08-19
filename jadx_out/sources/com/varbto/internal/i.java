package com.varbto.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.util.Log;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class i extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static i f50558c;

    /* renamed from: d, reason: collision with root package name */
    public static final HashSet f50559d = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f50560b;

    public i(Context context) {
        super(context, "crash_data.db", (SQLiteDatabase.CursorFactory) null, 5);
        this.f50560b = Executors.newSingleThreadExecutor();
    }

    public static synchronized i c(Context context) {
        try {
            if (f50558c == null) {
                f50558c = new i(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50558c;
    }

    public final int a(int i2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT COUNT(*) FROM crash_timestamps WHERE timestamp >= ?", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
            try {
                int i3 = cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
                cursorRawQuery.close();
                return i3;
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getCountWithinDays failed", th);
            }
            return 0;
        }
    }

    public final int b(int i2, String str) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT COUNT(*) FROM crash_timestamps WHERE timestamp >= ? AND category=?", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000)), str});
            try {
                int i3 = cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
                cursorRawQuery.close();
                return i3;
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getCountWithinDaysByCategory failed", th);
            }
            return 0;
        }
    }

    public final String g(long j2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT pending_sdks FROM crash_timestamps WHERE timestamp=?", new String[]{String.valueOf(j2)});
            try {
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return null;
                }
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getPendingSdks failed", th);
            }
            return null;
        }
    }

    public final HashSet h(String str) {
        HashSet hashSet = new HashSet();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp,pending_sdks FROM crash_timestamps", null);
            while (cursorRawQuery.moveToNext()) {
                try {
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
                            if (strArrSplit[i2].equals(str)) {
                                hashSet.add(Long.valueOf(j2));
                                break;
                            }
                            i2++;
                        }
                    }
                } finally {
                }
            }
            cursorRawQuery.close();
            return hashSet;
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getTimestampsPendingFor failed", th);
            }
            return hashSet;
        }
    }

    public final HashSet i(String str, String str2) {
        HashSet hashSet = new HashSet();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp,pending_sdks,category FROM crash_timestamps", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    int i2 = 0;
                    long j2 = cursorRawQuery.getLong(0);
                    String string = cursorRawQuery.getString(1);
                    String string2 = cursorRawQuery.getString(2);
                    if (string != null && !string.isEmpty() && str2.equals(string2)) {
                        String[] strArrSplit = string.split(",");
                        int length = strArrSplit.length;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            }
                            if (strArrSplit[i2].equals(str)) {
                                hashSet.add(Long.valueOf(j2));
                                break;
                            }
                            i2++;
                        }
                    }
                } finally {
                }
            }
            cursorRawQuery.close();
            return hashSet;
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getTimestampsPendingForByCategory failed", th);
            }
            return hashSet;
        }
    }

    public final /* synthetic */ void j(int i2, String str, long j2) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("server_status", Integer.valueOf(i2));
            contentValues.put("server_id", str);
            writableDatabase.update("crash_timestamps", contentValues, "timestamp=?", new String[]{String.valueOf(j2)});
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "updateServerStatus failed", th);
            }
        }
    }

    public final void k(final long j2, final String str) {
        this.f50560b.execute(new Runnable() { // from class: k1.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f51290b.m(str, j2);
            }
        });
    }

    public final /* synthetic */ void l(long j2, String str, k1.i iVar) {
        try {
            String strG = g(j2);
            if (strG != null && !strG.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (String str2 : strG.split(",")) {
                    if (!str2.equals(str)) {
                        arrayList.add(str2);
                    }
                }
                SQLiteDatabase writableDatabase = getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("pending_sdks", TextUtils.join(",", arrayList));
                writableDatabase.update("crash_timestamps", contentValues, "timestamp=?", new String[]{String.valueOf(j2)});
                if (!arrayList.isEmpty() || iVar == null) {
                    return;
                }
                try {
                    iVar.a(j2);
                } catch (Throwable th) {
                    if (h.f51286a) {
                        Log.e("CrashTimestampDbHelper", "onDelete callback failed", th);
                    }
                }
            }
        } catch (Throwable th2) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "markAsSent failed", th2);
            }
        }
    }

    public final /* synthetic */ void m(String str, long j2) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("mediation_id", str);
            contentValues.put("timestamp", Long.valueOf(j2));
            writableDatabase.insert("crash_mediation_attributions", null, contentValues);
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "insertMediationAttribution failed", th);
            }
        }
    }

    public final HashMap n(int i2) {
        HashMap map = new HashMap();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT mediation_id, COUNT(*) FROM crash_mediation_attributions WHERE timestamp>=? GROUP BY mediation_id", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
            while (cursorRawQuery.moveToNext()) {
                try {
                    map.put(cursorRawQuery.getString(0), Integer.valueOf(cursorRawQuery.getInt(1)));
                } finally {
                }
            }
            cursorRawQuery.close();
            return map;
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getMediationCrashCountersWithinDays failed", th);
            }
            return map;
        }
    }

    public final JSONArray o(int i2, String str) {
        JSONArray jSONArray = new JSONArray();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp FROM crash_timestamps WHERE timestamp >= ? AND category=? ORDER BY timestamp DESC", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000)), str});
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
                Log.e("CrashTimestampDbHelper", "getTimestampsWithinDaysByCategory failed", th);
            }
            return jSONArray;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE crash_timestamps (id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER NOT NULL, pending_sdks TEXT, category TEXT, server_status INTEGER, server_id TEXT)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_crash_timestamp ON crash_timestamps(timestamp)");
        sQLiteDatabase.execSQL("CREATE TABLE crash_network_attributions (network_id TEXT NOT NULL, timestamp INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_network_id ON crash_network_attributions(network_id)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_network_ts ON crash_network_attributions(timestamp)");
        sQLiteDatabase.execSQL("CREATE TABLE crash_mediation_attributions (mediation_id TEXT NOT NULL, timestamp INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_mediation_id ON crash_mediation_attributions(mediation_id)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_mediation_ts ON crash_mediation_attributions(timestamp)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS crash_timestamps");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS crash_network_attributions");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS crash_mediation_attributions");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE crash_timestamps ADD COLUMN category TEXT");
            } catch (Throwable unused) {
            }
        }
        if (i2 < 3) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS crash_network_attributions (network_id TEXT NOT NULL, timestamp INTEGER NOT NULL)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS idx_network_id ON crash_network_attributions(network_id)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS idx_network_ts ON crash_network_attributions(timestamp)");
            } catch (Throwable unused2) {
            }
        }
        if (i2 < 4) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE crash_timestamps ADD COLUMN server_status INTEGER");
                sQLiteDatabase.execSQL("ALTER TABLE crash_timestamps ADD COLUMN server_id TEXT");
            } catch (Throwable unused3) {
            }
        }
        if (i2 < 5) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS crash_mediation_attributions (mediation_id TEXT NOT NULL, timestamp INTEGER NOT NULL)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS idx_mediation_id ON crash_mediation_attributions(mediation_id)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS idx_mediation_ts ON crash_mediation_attributions(timestamp)");
            } catch (Throwable unused4) {
            }
        }
    }

    public final void p(final int i2, final String str, final long j2) {
        this.f50560b.execute(new Runnable() { // from class: k1.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f51293b.j(i2, str, j2);
            }
        });
    }

    public final void q(final long j2, final String str) {
        this.f50560b.execute(new Runnable() { // from class: k1.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f51297b.s(str, j2);
            }
        });
    }

    public final void r(final long j2, final String str, final k1.i iVar) {
        this.f50560b.execute(new Runnable() { // from class: k1.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f51300b.l(j2, str, iVar);
            }
        });
    }

    public final /* synthetic */ void s(String str, long j2) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("network_id", str);
            contentValues.put("timestamp", Long.valueOf(j2));
            writableDatabase.insert("crash_network_attributions", null, contentValues);
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "insertNetworkAttribution failed", th);
            }
        }
    }

    public final HashMap t(int i2) {
        HashMap map = new HashMap();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT network_id, COUNT(*) FROM crash_network_attributions WHERE timestamp>=? GROUP BY network_id", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
            while (cursorRawQuery.moveToNext()) {
                try {
                    map.put(cursorRawQuery.getString(0), Integer.valueOf(cursorRawQuery.getInt(1)));
                } finally {
                }
            }
            cursorRawQuery.close();
            return map;
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "getNetworkCrashCountersWithinDays failed", th);
            }
            return map;
        }
    }

    public final void u(final long j2, final String str) {
        this.f50560b.execute(new Runnable() { // from class: k1.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f51287b.w(j2, str);
            }
        });
    }

    public final JSONArray v(int i2) {
        JSONArray jSONArray = new JSONArray();
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT timestamp FROM crash_timestamps WHERE timestamp >= ? ORDER BY timestamp DESC", new String[]{String.valueOf(System.currentTimeMillis() - (i2 * 86400000))});
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
                Log.e("CrashTimestampDbHelper", "getTimestampsWithinDays failed", th);
            }
            return jSONArray;
        }
    }

    public final /* synthetic */ void w(long j2, String str) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("timestamp", Long.valueOf(j2));
            contentValues.put("pending_sdks", TextUtils.join(",", f50559d));
            contentValues.put(PointParamKey.CATEGORY, str);
            contentValues.put("server_status", (Integer) 0);
            contentValues.put("server_id", (String) null);
            writableDatabase.insert("crash_timestamps", null, contentValues);
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("CrashTimestampDbHelper", "insertTimestamp failed", th);
            }
        }
    }
}
