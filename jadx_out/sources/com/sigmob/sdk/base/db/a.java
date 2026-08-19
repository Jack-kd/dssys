package com.sigmob.sdk.base.db;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.utils.n;

/* loaded from: classes4.dex */
public class a extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final String f36070a = "ads";

    /* renamed from: b, reason: collision with root package name */
    public static final String f36071b = "file_reference";

    /* renamed from: c, reason: collision with root package name */
    public static final String f36072c = "trigger_insert";

    /* renamed from: d, reason: collision with root package name */
    public static final String f36073d = "trigger_delete";

    /* renamed from: e, reason: collision with root package name */
    public static final String f36074e = "tracks";

    /* renamed from: f, reason: collision with root package name */
    public static final String f36075f = "adload_event";

    /* renamed from: g, reason: collision with root package name */
    public static final String f36076g = "adload_cache_event";

    /* renamed from: h, reason: collision with root package name */
    public static final String f36077h = "adload_ready_event";

    /* renamed from: i, reason: collision with root package name */
    public static final String f36078i = "wind.db";

    /* renamed from: j, reason: collision with root package name */
    public static final long f36079j = -2;

    /* renamed from: k, reason: collision with root package name */
    public static final long f36080k = -1;

    /* renamed from: l, reason: collision with root package name */
    private static final int f36081l = 11;

    /* renamed from: m, reason: collision with root package name */
    private static String f36082m = "CREATE TABLE ads ( endcard_md5 text  ,video_md5 text  ,ad blob  ,ad_source_channel text  ,ad_type integer  ,create_time integer  ,crid text  ,load_id text  ,adTrackersMap blob  ,adslot_id text  ,camp_id text  ,request_id text , primary key ( crid ,adslot_id) ); \n";

    /* renamed from: n, reason: collision with root package name */
    private static String f36083n = "CREATE TRIGGER trigger_insert after insert on ads begin insert or replace into file_reference (crid,adslot_id,video_md5,endcard_md5) values(new.crid,new.adslot_id,new.video_md5,new.endcard_md5) ; end; \n";

    /* renamed from: o, reason: collision with root package name */
    private static String f36084o = "CREATE TRIGGER trigger_delete after delete on ads begin delete from file_reference where crid = old.crid  and adslot_id == old.adslot_id; end;\n";

    /* renamed from: p, reason: collision with root package name */
    private static String f36085p = "CREATE TABLE file_reference ( endcard_md5 blob  ,video_md5 blob  ,crid text  ,adslot_id text  , primary key ( crid ,adslot_id ) );\n";

    /* renamed from: q, reason: collision with root package name */
    private static String f36086q = "CREATE TABLE tracks ( id integer primary key AUTOINCREMENT ,retryNum integer   ,source text   ,event text   ,request_id text   ,url text   ,timestamp integer   );\n";

    /* renamed from: r, reason: collision with root package name */
    private static String f36087r = "CREATE TABLE adload_event ( id integer primary key AUTOINCREMENT , adslot_id text  , error_code integer ,timestamp integer  );\n";

    /* renamed from: s, reason: collision with root package name */
    private static String f36088s = "CREATE TABLE adload_cache_event (  adslot_id text primary key, media_request_count integer ,media_ready_count integer ,pre_req_time integer , req_interval_time integer ,req_pool_size integer); \n";

    /* renamed from: t, reason: collision with root package name */
    private static String f36089t = "CREATE TABLE adload_ready_event (  adslot_id text primary key, media_request_count integer ,media_ready_count integer ); \n";

    /* renamed from: u, reason: collision with root package name */
    private static final long f36090u = -6;

    /* renamed from: v, reason: collision with root package name */
    private static final long f36091v = -5;

    /* renamed from: w, reason: collision with root package name */
    private static final long f36092w = -4;

    /* renamed from: x, reason: collision with root package name */
    private static final long f36093x = 0;

    /* renamed from: y, reason: collision with root package name */
    private static a f36094y;

    /* renamed from: z, reason: collision with root package name */
    private static SQLiteDatabase f36095z;

    /* renamed from: com.sigmob.sdk.base.db.a$a, reason: collision with other inner class name */
    public interface InterfaceC0766a {
        void a();

        void a(Throwable th);
    }

    private a(Context context) {
        super(context, f36078i, (SQLiteDatabase.CursorFactory) null, 11);
    }

    private static long a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            return f36090u;
        }
        if (!sQLiteDatabase.isOpen()) {
            return f36091v;
        }
        if (sQLiteDatabase.isReadOnly()) {
            return f36092w;
        }
        return 0L;
    }

    public void b() throws SQLException {
        b(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(f36087r);
        sQLiteDatabase.execSQL(f36088s);
        sQLiteDatabase.execSQL(f36089t);
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
        b(sQLiteDatabase);
    }

    public static a a() {
        return f36094y;
    }

    private void b(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS file_reference");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tracks");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS adload_event");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS adload_cache_event");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS adload_ready_event");
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS trigger_insert");
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS trigger_delete");
        n.i();
        onCreate(sQLiteDatabase);
    }

    public static synchronized void a(Context context) {
        if (f36094y == null) {
            f36094y = new a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:3:0x0003, B:4:0x000c, B:6:0x0016, B:8:0x002c, B:23:0x0061, B:11:0x0032, B:13:0x0036, B:14:0x003c, B:16:0x0040, B:17:0x004a, B:19:0x004e, B:20:0x0058, B:22:0x005c, B:24:0x0064), top: B:53:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void b(android.database.sqlite.SQLiteDatabase r4, com.czhj.sdk.common.Database.SQLiteBuider.Insert r5, com.sigmob.sdk.base.db.a.InterfaceC0766a r6) {
        /*
            r4.beginTransaction()
            java.lang.String r0 = r5.getSql()     // Catch: java.lang.Throwable -> L30
            android.database.sqlite.SQLiteStatement r0 = r4.compileStatement(r0)     // Catch: java.lang.Throwable -> L30
            r1 = 1
        Lc:
            java.util.List r2 = r5.getColumns()     // Catch: java.lang.Throwable -> L30
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L30
            if (r1 > r2) goto L64
            java.util.List r2 = r5.getColumns()     // Catch: java.lang.Throwable -> L30
            int r3 = r1 + (-1)
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L30
            java.util.Map r3 = r5.getValues()     // Catch: java.lang.Throwable -> L30
            java.lang.Object r2 = r3.get(r2)     // Catch: java.lang.Throwable -> L30
            if (r2 != 0) goto L32
        L2c:
            r0.bindNull(r1)     // Catch: java.lang.Throwable -> L30
            goto L61
        L30:
            r5 = move-exception
            goto L81
        L32:
            boolean r3 = r2 instanceof java.lang.String     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L3c
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L30
            r0.bindString(r1, r2)     // Catch: java.lang.Throwable -> L30
            goto L61
        L3c:
            boolean r3 = r2 instanceof java.lang.Double     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L4a
            java.lang.Double r2 = (java.lang.Double) r2     // Catch: java.lang.Throwable -> L30
            double r2 = r2.doubleValue()     // Catch: java.lang.Throwable -> L30
            r0.bindDouble(r1, r2)     // Catch: java.lang.Throwable -> L30
            goto L61
        L4a:
            boolean r3 = r2 instanceof java.lang.Number     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L58
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.Throwable -> L30
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L30
            r0.bindLong(r1, r2)     // Catch: java.lang.Throwable -> L30
            goto L61
        L58:
            boolean r3 = r2 instanceof byte[]     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L2c
            byte[] r2 = (byte[]) r2     // Catch: java.lang.Throwable -> L30
            r0.bindBlob(r1, r2)     // Catch: java.lang.Throwable -> L30
        L61:
            int r1 = r1 + 1
            goto Lc
        L64:
            r0.execute()     // Catch: java.lang.Throwable -> L30
            r4.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L30
            r4.endTransaction()     // Catch: java.lang.Throwable -> L6e
            goto L7b
        L6e:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r5)
            if (r6 == 0) goto L7b
            r6.a(r4)
        L7b:
            if (r6 == 0) goto La1
            r6.a()
            goto La1
        L81:
            java.lang.String r0 = r5.getMessage()     // Catch: java.lang.Throwable -> L8e
            com.czhj.sdk.logger.SigmobLog.e(r0)     // Catch: java.lang.Throwable -> L8e
            if (r6 == 0) goto L90
            r6.a(r5)     // Catch: java.lang.Throwable -> L8e
            goto L90
        L8e:
            r5 = move-exception
            goto La2
        L90:
            r4.endTransaction()     // Catch: java.lang.Throwable -> L94
            goto La1
        L94:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r5)
            if (r6 == 0) goto La1
            r6.a(r4)
        La1:
            return
        La2:
            r4.endTransaction()     // Catch: java.lang.Throwable -> La6
            goto Lb3
        La6:
            r4 = move-exception
            java.lang.String r0 = r4.getMessage()
            com.czhj.sdk.logger.SigmobLog.e(r0)
            if (r6 == 0) goto Lb3
            r6.a(r4)
        Lb3:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.db.a.b(android.database.sqlite.SQLiteDatabase, com.czhj.sdk.common.Database.SQLiteBuider$Insert, com.sigmob.sdk.base.db.a$a):void");
    }

    public void a(final SQLiteDatabase sQLiteDatabase, final SQLiteBuider.Insert insert, final InterfaceC0766a interfaceC0766a) {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: V0.a
            @Override // java.lang.Runnable
            public final void run() {
                com.sigmob.sdk.base.db.a.b(sQLiteDatabase, insert, interfaceC0766a);
            }
        });
    }

    public void a(SQLiteDatabase sQLiteDatabase, String str, InterfaceC0766a interfaceC0766a) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL(str, new Object[0]);
            sQLiteDatabase.setTransactionSuccessful();
            if (interfaceC0766a != null) {
                interfaceC0766a.a();
            }
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                if (interfaceC0766a != null) {
                    interfaceC0766a.a(th);
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
