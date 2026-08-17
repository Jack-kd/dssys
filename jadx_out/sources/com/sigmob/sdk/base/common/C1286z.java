package com.sigmob.sdk.base.common;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.db.a;
import java.util.HashMap;

/* renamed from: com.sigmob.sdk.base.common.z, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1286z {

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, C1286z> f36058h = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public int f36059a;

    /* renamed from: b, reason: collision with root package name */
    public int f36060b;

    /* renamed from: c, reason: collision with root package name */
    public long f36061c;

    /* renamed from: d, reason: collision with root package name */
    public int f36062d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f36063e = 30;

    /* renamed from: f, reason: collision with root package name */
    public int f36064f;

    /* renamed from: g, reason: collision with root package name */
    public long f36065g;

    public static synchronized C1286z a(String str) {
        Cursor cursorRawQuery = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C1286z c1286z = f36058h.get(str);
        if (c1286z == null) {
            c1286z = new C1286z();
            try {
                cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_cache_event where adslot_id = ? group by adslot_id", new String[]{str});
                a(c1286z, cursorRawQuery);
            } catch (Throwable th) {
                try {
                    SigmobLog.e(th.getMessage());
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    }
                } finally {
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                        cursorRawQuery.close();
                    }
                }
            }
            f36058h.put(str, c1286z);
        }
        return c1286z;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f36076g, "adslot_id=?", new String[]{str});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private static void a(C1286z c1286z, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            c1286z.f36059a = cursor.getInt(cursor.getColumnIndexOrThrow("media_request_count"));
            c1286z.f36060b = cursor.getInt(cursor.getColumnIndexOrThrow("media_ready_count"));
            long j2 = cursor.getLong(cursor.getColumnIndexOrThrow("pre_req_time"));
            c1286z.f36061c = j2;
            c1286z.f36065g = j2;
            c1286z.f36062d = cursor.getInt(cursor.getColumnIndexOrThrow("req_interval_time"));
            c1286z.f36063e = cursor.getInt(cursor.getColumnIndexOrThrow("req_pool_size"));
        } while (cursor.moveToNext());
    }

    public static void a(final String str, C1286z c1286z) {
        if (TextUtils.isEmpty(str) || c1286z == null) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f36076g);
            HashMap map = new HashMap();
            map.put("adslot_id", str);
            map.put("media_request_count", Integer.valueOf(c1286z.f36059a));
            map.put("media_ready_count", Integer.valueOf(c1286z.f36060b));
            map.put("pre_req_time", Long.valueOf(c1286z.f36061c));
            map.put("req_interval_time", Integer.valueOf(c1286z.f36062d));
            map.put("req_pool_size", Integer.valueOf(c1286z.f36063e));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new a.InterfaceC0766a() { // from class: com.sigmob.sdk.base.common.z.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a() {
                    SigmobLog.d(str + " insert load cache event " + str + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a(Throwable th) {
                    SigmobLog.e(str + " insert load cache event " + str + " onFailed: ", th);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}
