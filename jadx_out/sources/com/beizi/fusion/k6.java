package com.beizi.fusion;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.beizi.fusion.model.EventItem;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class k6 {

    /* renamed from: b, reason: collision with root package name */
    private static volatile k6 f14710b;

    /* renamed from: a, reason: collision with root package name */
    private z1 f14711a;

    private k6(Context context) {
        this.f14711a = z1.a(context);
    }

    public static k6 a(Context context) {
        if (f14710b == null) {
            synchronized (k6.class) {
                try {
                    if (f14710b == null) {
                        f14710b = new k6(context);
                    }
                } finally {
                }
            }
        }
        return f14710b;
    }

    private synchronized void b(String str) {
        SQLiteDatabase writableDatabase = this.f14711a.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                String str2 = "create table " + str + "(id integer primary key autoincrement,event_code nvarchar,channel nvarchar,space_id nvarchar,timestamp nvarchar)";
                mh.a("DaoManager", "sql createTable tableName = " + str2);
                writableDatabase.execSQL(str2);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (Exception unused) {
        }
    }

    private synchronized int d(String str) {
        Cursor cursorQuery = this.f14711a.getWritableDatabase().query(str, null, null, null, null, null, null);
        if (cursorQuery == null) {
            return 0;
        }
        int count = cursorQuery.getCount();
        cursorQuery.close();
        return count;
    }

    private synchronized boolean e(String str) {
        boolean z2 = false;
        if (str == null) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f14711a.getWritableDatabase().query("Sqlite_master", new String[]{"count('*') as c"}, "type=? and name =?", new String[]{"table", str.trim()}, null, null, null);
            if (cursorQuery.moveToNext()) {
                int i2 = cursorQuery.getInt(0);
                Log.e("DaoManager", "DaoManager count:" + i2);
                if (i2 > 0) {
                    z2 = true;
                }
            }
            cursorQuery.close();
            return z2;
        } catch (Exception unused) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return false;
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            cursorQuery.close();
            throw th;
        }
    }

    public synchronized List c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = "T_" + str;
        a(str2);
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.f14711a.getWritableDatabase().query(str2, null, null, null, null, null, null);
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            return arrayList;
        }
        cursorQuery.moveToFirst();
        do {
            try {
                arrayList.add(a(cursorQuery));
            } finally {
                cursorQuery.close();
            }
        } while (cursorQuery.moveToNext());
        return arrayList;
    }

    private EventItem a(Cursor cursor) {
        EventItem eventItem = new EventItem();
        eventItem.setCode(cursor.getString(cursor.getColumnIndex("event_code")));
        eventItem.setChannel(cursor.getString(cursor.getColumnIndex("channel")));
        eventItem.setSpaceId(cursor.getString(cursor.getColumnIndex("space_id")));
        eventItem.setTimeStamp(cursor.getString(cursor.getColumnIndex("timestamp")));
        return eventItem;
    }

    private ContentValues a(EventItem eventItem) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_code", eventItem.getCode());
        contentValues.put("channel", eventItem.getChannel());
        contentValues.put("space_id", eventItem.getSpaceId());
        contentValues.put("timestamp", eventItem.getTimeStamp());
        return contentValues;
    }

    private synchronized void a(String str) {
        boolean zE = e(str);
        mh.a("DaoManager", "sql table is exist == " + zE);
        if (zE) {
            return;
        }
        b(str);
    }

    public synchronized void a(String str, EventItem eventItem) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = "T_" + str;
        a(str2);
        int iD = d(str2);
        long jInsert = this.f14711a.getWritableDatabase().insert(str2, null, a(eventItem));
        StringBuilder sb = new StringBuilder();
        sb.append("insert before size == ");
        sb.append(iD);
        sb.append(", insert data success = ");
        sb.append(jInsert != -1);
        mh.a("DaoManager", sb.toString());
        a(str2, Math.max(86400000L, l8.a(str) * 2));
    }

    public synchronized void a(String str, long j2) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - j2;
            int iD = d(str);
            if (iD > 0 && j2 > 0 && jCurrentTimeMillis > 0) {
                int iDelete = this.f14711a.getWritableDatabase().delete(str, "timestamp<=?", new String[]{String.valueOf(jCurrentTimeMillis)});
                StringBuilder sb = new StringBuilder();
                sb.append("start first delete data success = ");
                sb.append(iDelete > 0);
                sb.append(", intervalTime = ");
                sb.append(j2);
                mh.a("DaoManager", sb.toString());
            }
            if (iD >= 1000) {
                this.f14711a.getWritableDatabase().execSQL("delete from " + str + " where rowid in(select rowid from " + str + " order by id limit 200)");
                mh.a("DaoManager", "start second delete data");
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
