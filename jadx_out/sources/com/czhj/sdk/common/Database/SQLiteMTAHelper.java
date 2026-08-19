package com.czhj.sdk.common.Database;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.czhj.sdk.logger.SigmobLog;

/* loaded from: classes3.dex */
public class SQLiteMTAHelper extends SQLiteOpenHelper {
    public static final long DB_ERROR_BAD_INPUT = -2;
    public static final long DB_WRITE_ERROR = -1;
    public static final String TABLE_POINT = "point";

    /* renamed from: a, reason: collision with root package name */
    private static String f29284a = "sigmob_mta.db";

    /* renamed from: b, reason: collision with root package name */
    private static final int f29285b = 10;

    /* renamed from: c, reason: collision with root package name */
    private static String f29286c = "CREATE TABLE point ( point_id integer  primary key  ,item text , encryption int);\n";

    /* renamed from: d, reason: collision with root package name */
    private static final long f29287d = -6;

    /* renamed from: e, reason: collision with root package name */
    private static final long f29288e = -5;

    /* renamed from: f, reason: collision with root package name */
    private static final long f29289f = -4;

    /* renamed from: g, reason: collision with root package name */
    private static final long f29290g = 0;

    /* renamed from: h, reason: collision with root package name */
    private static SQLiteMTAHelper f29291h;

    /* renamed from: i, reason: collision with root package name */
    private static SQLiteDatabase f29292i;

    public interface ExecCallBack {
        void onFailed(Throwable th);

        void onSuccess();
    }

    public SQLiteMTAHelper(Context context) {
        super(context, f29284a, (SQLiteDatabase.CursorFactory) null, 10);
    }

    private static long a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            return f29287d;
        }
        if (!sQLiteDatabase.isOpen()) {
            return f29288e;
        }
        if (sQLiteDatabase.isReadOnly()) {
            return f29289f;
        }
        return 0L;
    }

    private void b(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS point");
        onCreate(sQLiteDatabase);
    }

    public static SQLiteMTAHelper getInstance() {
        return f29291h;
    }

    public static void initialize(Context context) {
        if (f29291h == null) {
            synchronized (SQLiteMTAHelper.class) {
                try {
                    if (f29291h == null) {
                        f29291h = new SQLiteMTAHelper(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024 A[Catch: all -> 0x0028, TryCatch #2 {all -> 0x0028, blocks: (B:3:0x0003, B:4:0x000a, B:6:0x0012, B:8:0x0024, B:23:0x0059, B:11:0x002a, B:13:0x002e, B:14:0x0034, B:16:0x0038, B:17:0x0042, B:19:0x0046, B:20:0x0050, B:22:0x0054, B:24:0x005c), top: B:57:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insert(android.database.sqlite.SQLiteDatabase r4, com.czhj.sdk.common.Database.SQLiteBuider.Insert r5, com.czhj.sdk.common.Database.SQLiteMTAHelper.ExecCallBack r6) {
        /*
            r4.beginTransaction()
            java.lang.String r0 = r5.f29272b     // Catch: java.lang.Throwable -> L28
            android.database.sqlite.SQLiteStatement r0 = r4.compileStatement(r0)     // Catch: java.lang.Throwable -> L28
            r1 = 1
        La:
            java.util.List<java.lang.Object> r2 = r5.f29274d     // Catch: java.lang.Throwable -> L28
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L28
            if (r1 > r2) goto L5c
            java.util.List<java.lang.Object> r2 = r5.f29274d     // Catch: java.lang.Throwable -> L28
            int r3 = r1 + (-1)
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L28
            java.util.Map<java.lang.String, java.lang.Object> r3 = r5.f29273c     // Catch: java.lang.Throwable -> L28
            java.lang.Object r2 = r3.get(r2)     // Catch: java.lang.Throwable -> L28
            if (r2 != 0) goto L2a
        L24:
            r0.bindNull(r1)     // Catch: java.lang.Throwable -> L28
            goto L59
        L28:
            r5 = move-exception
            goto L79
        L2a:
            boolean r3 = r2 instanceof java.lang.String     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L34
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L28
            r0.bindString(r1, r2)     // Catch: java.lang.Throwable -> L28
            goto L59
        L34:
            boolean r3 = r2 instanceof java.lang.Double     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L42
            java.lang.Double r2 = (java.lang.Double) r2     // Catch: java.lang.Throwable -> L28
            double r2 = r2.doubleValue()     // Catch: java.lang.Throwable -> L28
            r0.bindDouble(r1, r2)     // Catch: java.lang.Throwable -> L28
            goto L59
        L42:
            boolean r3 = r2 instanceof java.lang.Number     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L50
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.Throwable -> L28
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L28
            r0.bindLong(r1, r2)     // Catch: java.lang.Throwable -> L28
            goto L59
        L50:
            boolean r3 = r2 instanceof byte[]     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L24
            byte[] r2 = (byte[]) r2     // Catch: java.lang.Throwable -> L28
            r0.bindBlob(r1, r2)     // Catch: java.lang.Throwable -> L28
        L59:
            int r1 = r1 + 1
            goto La
        L5c:
            r0.execute()     // Catch: java.lang.Throwable -> L28
            r4.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L28
            r4.endTransaction()     // Catch: java.lang.Throwable -> L66
            goto L73
        L66:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r5)
            if (r6 == 0) goto L73
            r6.onFailed(r4)
        L73:
            if (r6 == 0) goto L99
            r6.onSuccess()
            goto L99
        L79:
            java.lang.String r0 = r5.getMessage()     // Catch: java.lang.Throwable -> L86
            com.czhj.sdk.logger.SigmobLog.e(r0)     // Catch: java.lang.Throwable -> L86
            if (r6 == 0) goto L88
            r6.onFailed(r5)     // Catch: java.lang.Throwable -> L86
            goto L88
        L86:
            r5 = move-exception
            goto L9a
        L88:
            r4.endTransaction()     // Catch: java.lang.Throwable -> L8c
            goto L99
        L8c:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r5)
            if (r6 == 0) goto L99
            r6.onFailed(r4)
        L99:
            return
        L9a:
            r4.endTransaction()     // Catch: java.lang.Throwable -> L9e
            goto Lab
        L9e:
            r4 = move-exception
            java.lang.String r0 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r0)
            if (r6 == 0) goto Lab
            r6.onFailed(r4)
        Lab:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.Database.SQLiteMTAHelper.insert(android.database.sqlite.SQLiteDatabase, com.czhj.sdk.common.Database.SQLiteBuider$Insert, com.czhj.sdk.common.Database.SQLiteMTAHelper$ExecCallBack):void");
    }

    public void clearDb() throws SQLException {
        b(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(f29286c);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i2 == 9) {
            b(sQLiteDatabase);
        } else if (i3 > 8) {
            sQLiteDatabase.execSQL("ALTER TABLE point ADD COLUMN 'encryption' int ");
        }
    }

    public void transactionWriteExecSQL(SQLiteDatabase sQLiteDatabase, String str, ExecCallBack execCallBack) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL(str, new Object[0]);
            sQLiteDatabase.setTransactionSuccessful();
            if (execCallBack != null) {
                execCallBack.onSuccess();
            }
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                if (execCallBack != null) {
                    execCallBack.onFailed(th);
                }
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str, String str2) throws SQLException {
        sQLiteDatabase.execSQL("alter table " + str2 + " drop column " + str);
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) throws SQLException {
        sQLiteDatabase.execSQL("alter table " + str3 + " add " + str + " " + str2);
    }
}
