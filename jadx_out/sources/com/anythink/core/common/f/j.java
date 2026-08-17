package com.anythink.core.common.f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.h.am;
import com.anythink.core.common.h.an;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class j extends c<am> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3309a = "j";

    /* renamed from: b, reason: collision with root package name */
    private static volatile j f3310b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        static final String f3311a = "dyn_wf_ad_source_filter";

        /* renamed from: b, reason: collision with root package name */
        static final String f3312b = "placement_id";

        /* renamed from: c, reason: collision with root package name */
        static final String f3313c = "ad_source_id";

        /* renamed from: d, reason: collision with root package name */
        static final String f3314d = "request_id";

        /* renamed from: e, reason: collision with root package name */
        static final String f3315e = "expired_timestamp";

        /* renamed from: f, reason: collision with root package name */
        static final String f3316f = "match_error_code";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3317g = "CREATE TABLE IF NOT EXISTS dyn_wf_ad_source_filter(placement_id TEXT ,ad_source_id TEXT ,request_id TEXT ,match_error_code TEXT ,expired_timestamp INTEGER)";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3318h = "CREATE INDEX IF NOT EXISTS idx_placement_id ON dyn_wf_ad_source_filter(placement_id)";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3319i = "CREATE INDEX IF NOT EXISTS idx_ad_source_id ON dyn_wf_ad_source_filter(ad_source_id)";

        /* renamed from: j, reason: collision with root package name */
        public static final String f3320j = "CREATE INDEX IF NOT EXISTS idx_ad_request_id ON dyn_wf_ad_source_filter(request_id)";

        /* renamed from: k, reason: collision with root package name */
        public static final String f3321k = "CREATE INDEX IF NOT EXISTS idx_expired_timestamp ON dyn_wf_ad_source_filter(expired_timestamp)";

        /* renamed from: l, reason: collision with root package name */
        public static final String f3322l = "CREATE INDEX IF NOT EXISTS idx_match_error_code ON dyn_wf_ad_source_filter(match_error_code)";
    }

    private j(d dVar) {
        super(dVar);
    }

    public static j a(Context context) {
        if (f3310b == null) {
            synchronized (j.class) {
                try {
                    if (f3310b == null) {
                        f3310b = new j(e.a(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3310b;
    }

    private Map<String, Integer> c(String str) {
        Cursor cursorQuery;
        HashMap map = new HashMap();
        try {
            String[] strArr = {str, String.valueOf(System.currentTimeMillis())};
            cursorQuery = c().query("dyn_wf_ad_source_filter", new String[]{"ad_source_id", "count(request_id)"}, "placement_id = ? AND expired_timestamp >= ?", strArr, "ad_source_id", null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    map.put(cursorQuery.getString(a(cursorQuery, "ad_source_id")), Integer.valueOf(cursorQuery.getInt(1)));
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return map;
                }
            }
            cursorQuery.close();
            return map;
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
    }

    public final synchronized void b(String str) {
        try {
            d().delete("dyn_wf_ad_source_filter", "placement_id = ? AND expired_timestamp < ?", new String[]{str, String.valueOf(System.currentTimeMillis())});
        } catch (Throwable unused) {
        }
    }

    private boolean b(am amVar) {
        Cursor cursorQuery = c().query("dyn_wf_ad_source_filter", new String[]{"request_id"}, "request_id = ? AND ad_source_id = ?", new String[]{amVar.g(), amVar.a()}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery == null) {
            return false;
        }
        cursorQuery.close();
        return false;
    }

    public final synchronized void a(am amVar) {
        if (amVar == null) {
            return;
        }
        try {
            SQLiteDatabase sQLiteDatabaseD = d();
            ContentValues contentValues = new ContentValues();
            contentValues.put("placement_id", amVar.b());
            contentValues.put("ad_source_id", amVar.a());
            contentValues.put("request_id", amVar.g());
            contentValues.put("match_error_code", amVar.h());
            contentValues.put("expired_timestamp", Long.valueOf(amVar.f()));
            Cursor cursorQuery = c().query("dyn_wf_ad_source_filter", new String[]{"request_id"}, "request_id = ? AND ad_source_id = ?", new String[]{amVar.g(), amVar.a()}, null, null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.close();
                sQLiteDatabaseD.update("dyn_wf_ad_source_filter", contentValues, "request_id = ? AND ad_source_id = ?", new String[]{amVar.g(), amVar.a()});
            } else {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                sQLiteDatabaseD.insertOrThrow("dyn_wf_ad_source_filter", null, contentValues);
            }
        } catch (Throwable unused) {
        }
    }

    public final synchronized an a(String str) {
        an anVar;
        Cursor cursorQuery;
        try {
            anVar = new an(str);
            try {
                String[] strArr = {str, "", String.valueOf(System.currentTimeMillis())};
                cursorQuery = c().query("dyn_wf_ad_source_filter", new String[]{"ad_source_id", "match_error_code", "count(request_id)"}, "placement_id = ? AND match_error_code IS NOT NULL AND match_error_code != ? AND expired_timestamp >= ?", strArr, "ad_source_id,match_error_code", null, "ad_source_id");
            } catch (Throwable unused) {
                cursorQuery = null;
            }
            try {
                HashMap map = new HashMap();
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(a(cursorQuery, "ad_source_id"));
                    String string2 = cursorQuery.getString(a(cursorQuery, "match_error_code"));
                    int i2 = cursorQuery.getInt(2);
                    List<an.a> arrayList = map.get(string);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(new an.a(string2, i2));
                    map.put(string, arrayList);
                }
                anVar.a(map);
            } catch (Throwable unused2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                anVar.b(c(str));
                return anVar;
            }
            cursorQuery.close();
            anVar.b(c(str));
        } catch (Throwable th) {
            throw th;
        }
        return anVar;
    }

    private static int a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("columnIndex must >= 0.");
    }
}
