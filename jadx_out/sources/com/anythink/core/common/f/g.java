package com.anythink.core.common.f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.h.ah;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class g extends c<ah> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3247a = "g";

    /* renamed from: b, reason: collision with root package name */
    private static volatile g f3248b;

    public static class a {

        /* renamed from: A, reason: collision with root package name */
        public static final String f3249A = "ad_source_id";

        /* renamed from: B, reason: collision with root package name */
        public static final String f3250B = "network_firm_id";

        /* renamed from: C, reason: collision with root package name */
        public static final String f3251C = "progress";

        /* renamed from: D, reason: collision with root package name */
        public static final String f3252D = "file_size";

        /* renamed from: E, reason: collision with root package name */
        public static final String f3253E = "apk_redownload";

        /* renamed from: F, reason: collision with root package name */
        public static final String f3254F = "apk_allow_install_in_bg";

        /* renamed from: G, reason: collision with root package name */
        public static final String f3255G = "offer_cache_time";

        /* renamed from: H, reason: collision with root package name */
        public static final String f3256H = "app_name";

        /* renamed from: I, reason: collision with root package name */
        public static final String f3257I = "downloading_scene";

        /* renamed from: J, reason: collision with root package name */
        public static final String f3258J = "recover_download_scene";

        /* renamed from: K, reason: collision with root package name */
        public static final String f3259K = "download_failed_scene_list";

        /* renamed from: L, reason: collision with root package name */
        public static final String f3260L = "dsp_id";

        /* renamed from: M, reason: collision with root package name */
        public static final String f3261M = "action_offer_download_tk";

        /* renamed from: N, reason: collision with root package name */
        public static final String f3262N = "app_desc";

        /* renamed from: O, reason: collision with root package name */
        public static final String f3263O = "CREATE TABLE IF NOT EXISTS download_task(unique_id TEXT ,click_id TEXT ,request_id TEXT ,offer_id TEXT ,pkg_name TEXT ,url TEXT ,title TEXT ,deeplink_click_action TEXT ,icon_url TEXT ,deeplink_url TEXT ,file_path TEXT ,placement_id TEXT ,ad_source_id TEXT ,network_firm_id TEXT ,app_name TEXT ,download_failed_scene_list TEXT ,dsp_id TEXT ,action_offer_download_tk TEXT ,app_desc TEXT ,apk_verify INTEGER ,enable_use_webview_ua INTEGER ,download_type INTEGER ,notification_type INTEGER ,int_open_switch INTEGER ,int_open_time INTEGER ,offer_source_type INTEGER ,part_count INTEGER ,enable_part_download INTEGER ,download_start_timestamp INTEGER ,download_end_timestamp INTEGER ,status INTEGER ,is_upload_installed_agentevent INTEGER ,progress INTEGER ,file_size INTEGER ,apk_redownload INTEGER ,apk_allow_install_in_bg INTEGER ,offer_cache_time INTEGER ,downloading_scene INTEGER ,recover_download_scene INTEGER)";

        /* renamed from: a, reason: collision with root package name */
        public static final String f3264a = "download_task";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3265b = "unique_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3266c = "click_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3267d = "request_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3268e = "offer_id";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3269f = "url";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3270g = "pkg_name";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3271h = "title";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3272i = "deeplink_click_action";

        /* renamed from: j, reason: collision with root package name */
        public static final String f3273j = "apk_verify";

        /* renamed from: k, reason: collision with root package name */
        public static final String f3274k = "enable_use_webview_ua";

        /* renamed from: l, reason: collision with root package name */
        public static final String f3275l = "download_type";

        /* renamed from: m, reason: collision with root package name */
        public static final String f3276m = "notification_type";

        /* renamed from: n, reason: collision with root package name */
        public static final String f3277n = "int_open_switch";

        /* renamed from: o, reason: collision with root package name */
        public static final String f3278o = "int_open_time";

        /* renamed from: p, reason: collision with root package name */
        public static final String f3279p = "icon_url";

        /* renamed from: q, reason: collision with root package name */
        public static final String f3280q = "deeplink_url";

        /* renamed from: r, reason: collision with root package name */
        public static final String f3281r = "offer_source_type";

        /* renamed from: s, reason: collision with root package name */
        public static final String f3282s = "file_path";

        /* renamed from: t, reason: collision with root package name */
        public static final String f3283t = "part_count";

        /* renamed from: u, reason: collision with root package name */
        public static final String f3284u = "enable_part_download";

        /* renamed from: v, reason: collision with root package name */
        public static final String f3285v = "download_start_timestamp";

        /* renamed from: w, reason: collision with root package name */
        public static final String f3286w = "download_end_timestamp";

        /* renamed from: x, reason: collision with root package name */
        public static final String f3287x = "status";

        /* renamed from: y, reason: collision with root package name */
        public static final String f3288y = "is_upload_installed_agentevent";

        /* renamed from: z, reason: collision with root package name */
        public static final String f3289z = "placement_id";
    }

    private g(d dVar) {
        super(dVar);
    }

    private static g a(Context context) {
        if (f3248b == null) {
            synchronized (g.class) {
                try {
                    if (f3248b == null) {
                        f3248b = new g(e.a(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3248b;
    }

    private synchronized void b(ah ahVar) {
        if (ahVar != null) {
            try {
                if (!TextUtils.isEmpty(ahVar.j())) {
                    SQLiteDatabase sQLiteDatabaseD = d();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("unique_id", ahVar.j());
                    contentValues.put("click_id", ahVar.k());
                    contentValues.put("request_id", ahVar.l());
                    contentValues.put("offer_id", ahVar.m());
                    contentValues.put(a.f3270g, ahVar.o());
                    contentValues.put("url", ahVar.n());
                    contentValues.put(a.f3271h, ahVar.p());
                    contentValues.put(a.f3272i, ahVar.q());
                    contentValues.put(a.f3279p, ahVar.v());
                    contentValues.put(a.f3280q, ahVar.w());
                    contentValues.put("file_path", ahVar.g());
                    contentValues.put(a.f3273j, Integer.valueOf(ahVar.B()));
                    contentValues.put(a.f3274k, Integer.valueOf(ahVar.x()));
                    contentValues.put(a.f3275l, Integer.valueOf(ahVar.r()));
                    contentValues.put(a.f3276m, Integer.valueOf(ahVar.s()));
                    contentValues.put(a.f3277n, Integer.valueOf(ahVar.t()));
                    contentValues.put(a.f3278o, Integer.valueOf(ahVar.u()));
                    contentValues.put(a.f3281r, Integer.valueOf(ahVar.y()));
                    contentValues.put(a.f3283t, Integer.valueOf(ahVar.h()));
                    contentValues.put(a.f3284u, Integer.valueOf(ahVar.i() ? 1 : 0));
                    contentValues.put(a.f3285v, Long.valueOf(ahVar.z()));
                    contentValues.put(a.f3286w, Long.valueOf(ahVar.A()));
                    contentValues.put("status", Integer.valueOf(ahVar.C()));
                    contentValues.put(a.f3288y, Integer.valueOf(ahVar.D()));
                    contentValues.put("placement_id", ahVar.d());
                    contentValues.put("ad_source_id", ahVar.e());
                    contentValues.put("network_firm_id", ahVar.f());
                    contentValues.put("progress", Long.valueOf(ahVar.E()));
                    contentValues.put(a.f3252D, Long.valueOf(ahVar.F()));
                    contentValues.put(a.f3253E, Integer.valueOf(ahVar.G()));
                    contentValues.put(a.f3254F, Integer.valueOf(ahVar.H()));
                    contentValues.put(a.f3255G, Long.valueOf(ahVar.I()));
                    contentValues.put("app_name", ahVar.J());
                    contentValues.put(a.f3257I, Integer.valueOf(ahVar.a()));
                    contentValues.put(a.f3258J, Integer.valueOf(ahVar.b()));
                    contentValues.put(a.f3259K, ahVar.c());
                    contentValues.put("dsp_id", ahVar.c());
                    contentValues.put(a.f3261M, ahVar.K());
                    contentValues.put(a.f3262N, ahVar.L());
                    if (c(ahVar)) {
                        sQLiteDatabaseD.update(a.f3264a, contentValues, "unique_id = ?", new String[]{ahVar.j()});
                    } else {
                        sQLiteDatabaseD.insertOrThrow(a.f3264a, null, contentValues);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private boolean c(ah ahVar) {
        Cursor cursorQuery = c().query(a.f3264a, new String[]{"unique_id"}, "unique_id = ?", new String[]{ahVar.j()}, null, null, null);
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

    private synchronized void e() {
        try {
            d().delete(a.f3264a, "download_start_timestamp <= " + System.currentTimeMillis() + " - offer_cache_time", null);
        } catch (Throwable unused) {
        }
    }

    private synchronized void a(ah ahVar) {
        if (ahVar == null) {
            return;
        }
        try {
            SQLiteDatabase sQLiteDatabaseD = d();
            if (c(ahVar)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("progress", Long.valueOf(ahVar.E()));
                sQLiteDatabaseD.update(a.f3264a, contentValues, "unique_id = ?", new String[]{ahVar.j()});
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized ah a(String str) {
        Cursor cursorQuery;
        ah ahVar;
        try {
            ahVar = new ah();
            cursorQuery = c().query(a.f3264a, null, "download_start_timestamp > " + System.currentTimeMillis() + " - offer_cache_time AND unique_id = '" + str + "'", null, null, null, a.f3285v);
        } catch (Throwable unused) {
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                ahVar = a(cursorQuery);
            }
            cursorQuery.close();
            return ahVar;
        } catch (Throwable unused2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
    }

    private synchronized List<ah> a() {
        ArrayList arrayList;
        Cursor cursorQuery;
        arrayList = new ArrayList();
        try {
            cursorQuery = c().query(a.f3264a, null, "download_start_timestamp <= " + System.currentTimeMillis() + " - offer_cache_time", null, null, null, a.f3285v);
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(a(cursorQuery));
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        cursorQuery.close();
        return arrayList;
    }

    private synchronized List<ah> a(List<Integer> list, int i2) {
        ArrayList arrayList;
        Cursor cursorQuery;
        arrayList = new ArrayList();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("status IN (");
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(list.get(i3));
                if (i3 != list.size() - 1) {
                    sb.append(",");
                }
            }
            sb.append(")");
            sb.append(" AND ");
            sb.append(a.f3285v);
            sb.append(" > ");
            sb.append(System.currentTimeMillis());
            sb.append(" - ");
            sb.append(a.f3255G);
            if (i2 > 0) {
                sb.append(" AND ");
                sb.append(a.f3253E);
                sb.append(" = ");
                sb.append(i2);
            }
            cursorQuery = c().query(a.f3264a, null, sb.toString(), null, null, null, a.f3285v);
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(a(cursorQuery));
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        cursorQuery.close();
        return arrayList;
    }

    private synchronized List<ah> b() {
        ArrayList arrayList;
        Cursor cursorQuery;
        arrayList = new ArrayList();
        try {
            cursorQuery = c().query(a.f3264a, null, "status = 5 AND is_upload_installed_agentevent != 1 AND download_end_timestamp >= " + (System.currentTimeMillis() - 604800000), null, null, null, a.f3285v);
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(a(cursorQuery));
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        cursorQuery.close();
        return arrayList;
    }

    private synchronized ah b(List<Integer> list, int i2) {
        Cursor cursorQuery;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("status IN (");
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(list.get(i3));
                if (i3 != list.size() - 1) {
                    sb.append(",");
                }
            }
            sb.append(")");
            sb.append(" AND ");
            sb.append(a.f3285v);
            sb.append(" > ");
            sb.append(System.currentTimeMillis());
            sb.append(" - ");
            sb.append(a.f3255G);
            cursorQuery = c().query(a.f3264a, null, sb.toString(), null, null, null, a.f3285v, String.valueOf(i2));
        } catch (Throwable unused) {
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                ah ahVarA = a(cursorQuery);
                cursorQuery.close();
                return ahVarA;
            }
        } catch (Throwable unused2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
        cursorQuery.close();
        return null;
    }

    private static ah a(Cursor cursor) {
        ah ahVar = new ah();
        try {
            ahVar.f(cursor.getString(a(cursor, "unique_id")));
            ahVar.g(cursor.getString(a(cursor, "click_id")));
            ahVar.h(cursor.getString(a(cursor, "request_id")));
            ahVar.i(cursor.getString(a(cursor, "offer_id")));
            ahVar.j(cursor.getString(a(cursor, "url")));
            ahVar.k(cursor.getString(a(cursor, a.f3270g)));
            ahVar.l(cursor.getString(a(cursor, a.f3271h)));
            ahVar.m(cursor.getString(a(cursor, a.f3272i)));
            ahVar.n(cursor.getString(a(cursor, a.f3279p)));
            ahVar.o(cursor.getString(a(cursor, a.f3280q)));
            ahVar.e(cursor.getString(a(cursor, "file_path")));
            ahVar.b(cursor.getString(a(cursor, "placement_id")));
            ahVar.c(cursor.getString(a(cursor, "ad_source_id")));
            ahVar.d(cursor.getString(a(cursor, "network_firm_id")));
            ahVar.p(cursor.getString(a(cursor, "app_name")));
            ahVar.a(cursor.getString(a(cursor, a.f3259K)));
            ahVar.q(cursor.getString(a(cursor, "dsp_id")));
            ahVar.r(cursor.getString(a(cursor, a.f3261M)));
            ahVar.s(cursor.getString(a(cursor, a.f3262N)));
            ahVar.j(cursor.getInt(a(cursor, a.f3273j)));
            ahVar.h(cursor.getInt(a(cursor, a.f3274k)));
            ahVar.d(cursor.getInt(a(cursor, a.f3275l)));
            ahVar.e(cursor.getInt(a(cursor, a.f3276m)));
            ahVar.f(cursor.getInt(a(cursor, a.f3277n)));
            ahVar.g(cursor.getInt(a(cursor, a.f3278o)));
            ahVar.i(cursor.getInt(a(cursor, a.f3281r)));
            ahVar.c(cursor.getInt(a(cursor, a.f3283t)));
            boolean z2 = true;
            if (cursor.getInt(a(cursor, a.f3284u)) != 1) {
                z2 = false;
            }
            ahVar.a(z2);
            ahVar.a(cursor.getLong(a(cursor, a.f3285v)));
            ahVar.b(cursor.getLong(a(cursor, a.f3286w)));
            ahVar.k(cursor.getInt(a(cursor, "status")));
            ahVar.l(cursor.getInt(a(cursor, a.f3288y)));
            ahVar.c(cursor.getLong(a(cursor, "progress")));
            ahVar.d(cursor.getLong(a(cursor, a.f3252D)));
            ahVar.m(cursor.getInt(a(cursor, a.f3253E)));
            ahVar.n(cursor.getInt(a(cursor, a.f3254F)));
            ahVar.e(cursor.getLong(a(cursor, a.f3255G)));
            ahVar.a(cursor.getInt(a(cursor, a.f3257I)));
            ahVar.b(cursor.getInt(a(cursor, a.f3258J)));
        } catch (Throwable unused) {
        }
        return ahVar;
    }

    private synchronized void b(String str) {
        try {
            d().delete(a.f3264a, "unique_id = ?", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    private static int a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("columnIndex must >= 0.");
    }
}
