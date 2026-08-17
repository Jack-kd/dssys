package com.czhj.sdk.common.Database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.czhj.sdk.common.ThreadPool.BackgroundThreadFactory;
import com.czhj.sdk.logger.SigmobLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class DBOperator {

    /* renamed from: a, reason: collision with root package name */
    private static final DBOperator f29239a = new DBOperator();

    /* renamed from: c, reason: collision with root package name */
    private final Object f29241c = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f29240b = new ThreadPoolExecutor(1, 1, 60, TimeUnit.SECONDS, new ArrayBlockingQueue(10), new BackgroundThreadFactory());

    public interface DataSQLiteLisenter {
        void onFailed(Error error);

        void onSuccess(List<Map> list);
    }

    public class SQLiteDeleteThread implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final String f29243b;

        /* renamed from: c, reason: collision with root package name */
        private final String f29244c;

        /* renamed from: d, reason: collision with root package name */
        private final String[] f29245d;

        /* renamed from: e, reason: collision with root package name */
        private final SQLiteLisenter f29246e;

        /* renamed from: f, reason: collision with root package name */
        private final SQLiteDatabase f29247f;

        public SQLiteDeleteThread(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, SQLiteLisenter sQLiteLisenter) {
            this.f29243b = str;
            this.f29247f = sQLiteDatabase;
            this.f29244c = str2;
            this.f29245d = strArr;
            this.f29246e = sQLiteLisenter;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f29247f.delete(this.f29243b, this.f29244c, this.f29245d);
                SQLiteLisenter sQLiteLisenter = this.f29246e;
                if (sQLiteLisenter != null) {
                    sQLiteLisenter.onSuccess(null);
                }
            } catch (Throwable th) {
                SQLiteLisenter sQLiteLisenter2 = this.f29246e;
                if (sQLiteLisenter2 != null) {
                    sQLiteLisenter2.onFailed(new Error(th.getMessage()));
                }
            }
        }
    }

    public class SQLiteThread implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final String f29249b;

        /* renamed from: c, reason: collision with root package name */
        private final String[] f29250c;

        /* renamed from: d, reason: collision with root package name */
        private final String f29251d;

        /* renamed from: e, reason: collision with root package name */
        private final String[] f29252e;

        /* renamed from: f, reason: collision with root package name */
        private final String f29253f;

        /* renamed from: g, reason: collision with root package name */
        private final String f29254g;

        /* renamed from: h, reason: collision with root package name */
        private final String f29255h;

        /* renamed from: i, reason: collision with root package name */
        private final String f29256i;

        /* renamed from: j, reason: collision with root package name */
        private final SQLiteDatabase f29257j;

        /* renamed from: k, reason: collision with root package name */
        private final DataSQLiteLisenter f29258k;

        public SQLiteThread(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, DataSQLiteLisenter dataSQLiteLisenter) {
            this.f29249b = str;
            this.f29257j = sQLiteDatabase;
            this.f29250c = strArr;
            this.f29251d = str2;
            this.f29252e = strArr2;
            this.f29253f = str3;
            this.f29254g = str4;
            this.f29255h = str5;
            this.f29256i = str6;
            this.f29258k = dataSQLiteLisenter;
        }

        private List<Map> a(Cursor cursor) {
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                String[] columnNames = cursor.getColumnNames();
                HashMap map = new HashMap();
                for (String str : columnNames) {
                    int columnIndex = cursor.getColumnIndex(str);
                    if (columnIndex >= 0) {
                        int type = cursor.getType(columnIndex);
                        if (type == 1) {
                            map.put(str, Long.valueOf(cursor.getLong(columnIndex)));
                        } else if (type == 2) {
                            map.put(str, Double.valueOf(cursor.getDouble(columnIndex)));
                        } else if (type == 3) {
                            map.put(str, cursor.getString(columnIndex));
                        } else if (type == 4) {
                            map.put(str, cursor.getBlob(columnIndex));
                        }
                    }
                }
                arrayList.add(map);
            }
            return arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Cursor cursorQuery = this.f29257j.query(this.f29249b, this.f29250c, this.f29251d, this.f29252e, this.f29253f, this.f29254g, this.f29255h, this.f29256i);
                try {
                    List<Map> listA = a(cursorQuery);
                    DataSQLiteLisenter dataSQLiteLisenter = this.f29258k;
                    if (dataSQLiteLisenter != null) {
                        dataSQLiteLisenter.onSuccess(listA);
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } finally {
                }
            } catch (Throwable th) {
                DataSQLiteLisenter dataSQLiteLisenter2 = this.f29258k;
                if (dataSQLiteLisenter2 != null) {
                    dataSQLiteLisenter2.onFailed(new Error(th.getMessage()));
                }
            }
        }
    }

    private DBOperator() {
    }

    public static synchronized DBOperator getInstance() {
        return f29239a;
    }

    public int count(SQLiteDatabase sQLiteDatabase, String str) {
        return count(sQLiteDatabase, str, null);
    }

    public void delete(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, SQLiteLisenter sQLiteLisenter) {
        SQLiteLisenter sQLiteLisenter2;
        try {
            sQLiteLisenter2 = sQLiteLisenter;
            try {
                this.f29240b.submit(new SQLiteDeleteThread(sQLiteDatabase, str, str2, strArr, sQLiteLisenter2));
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                SigmobLog.e(th2.getMessage());
                sQLiteLisenter2.onFailed(new Error(th2.getMessage()));
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteLisenter2 = sQLiteLisenter;
        }
    }

    public void find(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, DataSQLiteLisenter dataSQLiteLisenter) {
        this.f29240b.submit(new SQLiteThread(sQLiteDatabase, str, strArr, str2, strArr2, str3, str4, str5, str6, dataSQLiteLisenter));
    }

    public int count(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Throwable th;
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query(str, null, str2, null, null, null, null, null);
            try {
                int count = cursorQuery.getCount();
                cursorQuery.close();
                return count;
            } catch (Throwable th2) {
                th = th2;
                try {
                    SigmobLog.e(th.getMessage());
                    if (cursorQuery == null) {
                        return 0;
                    }
                    cursorQuery.close();
                    return 0;
                } finally {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }
}
