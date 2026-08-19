package com.sigmob.sdk.base.common;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.db.a;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class aa {

    /* renamed from: d, reason: collision with root package name */
    private static final HashMap<String, aa> f35700d = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public int f35701a;

    /* renamed from: b, reason: collision with root package name */
    public int f35702b;

    /* renamed from: c, reason: collision with root package name */
    public String f35703c;

    public static synchronized aa a(String str) {
        Cursor cursorRawQuery = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        aa aaVar = f35700d.get(str);
        if (aaVar == null) {
            aaVar = new aa();
            aaVar.f35703c = str;
            try {
                cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_ready_event where adslot_id = '" + str + "' group by adslot_id", null);
                a(aaVar, cursorRawQuery);
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
            f35700d.put(str, aaVar);
        }
        return aaVar;
    }

    public static void c() {
        try {
            Cursor cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_ready_event", null);
            if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            do {
                aa aaVar = new aa();
                aaVar.f35703c = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("adslot_id"));
                aaVar.f35701a = cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("media_request_count"));
                aaVar.f35702b = cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("media_ready_count"));
                arrayList.add(aaVar);
                f35700d.put(aaVar.f35703c, aaVar);
            } while (cursorRawQuery.moveToNext());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void b() {
        if (TextUtils.isEmpty(this.f35703c)) {
            return;
        }
        this.f35701a = 0;
        this.f35702b = 0;
        b(this.f35703c);
    }

    public static HashMap<String, aa> a() {
        return f35700d;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f36077h, "adslot_id=?", new String[]{str});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private static void a(aa aaVar, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            aaVar.f35701a = cursor.getInt(cursor.getColumnIndexOrThrow("media_request_count"));
            aaVar.f35702b = cursor.getInt(cursor.getColumnIndexOrThrow("media_ready_count"));
        } while (cursor.moveToNext());
    }

    public static void a(final String str, aa aaVar) {
        if (TextUtils.isEmpty(str) || aaVar == null) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f36077h);
            HashMap map = new HashMap();
            map.put("adslot_id", str);
            map.put("media_request_count", Integer.valueOf(aaVar.f35701a));
            map.put("media_ready_count", Integer.valueOf(aaVar.f35702b));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new a.InterfaceC0766a() { // from class: com.sigmob.sdk.base.common.aa.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a() {
                    SigmobLog.d(str + " insert load cache event " + str + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a(Throwable th) {
                    SigmobLog.e(str + " insert  load cache event " + str + " onFailed: ", th);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}
