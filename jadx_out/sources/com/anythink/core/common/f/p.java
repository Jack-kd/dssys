package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ag;
import com.anythink.core.common.h.bi;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class p extends c<com.anythink.core.common.a.l> {

    /* renamed from: b, reason: collision with root package name */
    private static volatile p f3371b = null;

    /* renamed from: c, reason: collision with root package name */
    private static final int f3372c = 500;

    /* renamed from: a, reason: collision with root package name */
    private final String f3373a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3374a = "offer_data_cache";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3375b = "placement_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3376c = "bid_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3377d = "adsource_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3378e = "network_firm_id";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3379f = "bid_result";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3380g = "offer_data";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3381h = "out_date_timestamp";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3382i = "vast_parse_result";

        /* renamed from: j, reason: collision with root package name */
        public static final String f3383j = "CREATE TABLE IF NOT EXISTS offer_data_cache(placement_id TEXT ,bid_id TEXT ,adsource_id TEXT ,network_firm_id INTEGER ,bid_result TEXT ,offer_data TEXT ,out_date_timestamp INTEGER ,vast_parse_result TEXT)";
    }

    private p(d dVar) {
        super(dVar);
        this.f3373a = p.class.getName();
    }

    public static p a(d dVar) {
        if (f3371b == null) {
            synchronized (p.class) {
                try {
                    if (f3371b == null) {
                        f3371b = new p(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3371b;
    }

    private synchronized boolean e(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(a.f3374a, new String[]{"placement_id"}, "bid_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.close();
                        cursorQuery.close();
                        return true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized ag b(String str) {
        ag agVar;
        Cursor cursorQuery;
        agVar = new ag();
        try {
            cursorQuery = c().query(a.f3374a, new String[]{"placement_id", "adsource_id", a.f3379f, a.f3376c, a.f3381h}, "placement_id=?", new String[]{str}, null, null, null);
            try {
                ArrayList arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex(a.f3376c));
                    if (System.currentTimeMillis() >= cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3381h))) {
                        arrayList.add(string);
                    } else {
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("adsource_id"));
                        ad adVarA = ad.a(cursorQuery.getString(cursorQuery.getColumnIndex(a.f3379f)));
                        if (adVarA != null) {
                            agVar.a(string2, adVarA);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    a(arrayList);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            try {
                cursorQuery.close();
            } catch (Throwable unused3) {
            }
        }
        return agVar;
    }

    public final synchronized bi c(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(a.f3374a, new String[]{a.f3380g, a.f3381h}, "bid_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToNext();
                        bi biVar = new bi(cursorQuery.getString(0), cursorQuery.getLong(1));
                        cursorQuery.close();
                        cursorQuery.close();
                        return biVar;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final synchronized String d(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(a.f3374a, new String[]{a.f3382i}, "bid_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToNext();
                        String string = cursorQuery.getString(0);
                        cursorQuery.close();
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final synchronized void a(String str) {
        try {
            d().delete(a.f3374a, "bid_id = ? ", new String[]{str});
        } catch (Throwable th) {
            com.anythink.core.common.u.f.b("Error_SQL_DELETE", th.getMessage(), com.anythink.core.common.d.s.b().r());
        }
    }

    private synchronized void a(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        int i2 = 0;
        while (i2 < list.size()) {
            try {
                int i3 = i2 + 500;
                List<String> listSubList = list.subList(i2, Math.min(i3, list.size()));
                StringBuilder sb = new StringBuilder();
                sb.append("bid_id IN (");
                for (int i4 = 0; i4 < listSubList.size(); i4++) {
                    if (i4 > 0) {
                        sb.append(",");
                    }
                    sb.append("?");
                }
                sb.append(")");
                d().delete(a.f3374a, sb.toString(), (String[]) listSubList.toArray(new String[0]));
                i2 = i3;
            } catch (Throwable th) {
                com.anythink.core.common.u.f.b("Error_SQL_DELETE_2", th.getMessage(), com.anythink.core.common.d.s.b().r());
                return;
            }
        }
    }

    public final synchronized long b(String str, String str2) {
        if (d() == null) {
            return -1L;
        }
        try {
            new ContentValues().put(a.f3382i, str2);
            if (!e(str)) {
                return -1L;
            }
            return d().update(a.f3374a, r0, "bid_id = ? ", new String[]{str});
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized long a(String str, ad adVar) {
        if (d() == null || adVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("placement_id", str);
            contentValues.put("adsource_id", adVar.f3678k);
            contentValues.put("network_firm_id", Integer.valueOf(adVar.f3671d));
            contentValues.put(a.f3376c, adVar.token);
            contentValues.put(a.f3379f, adVar.b());
            contentValues.put(a.f3381h, Long.valueOf(adVar.f3673f));
            if (e(adVar.token)) {
                return d().update(a.f3374a, contentValues, "bid_id = ? ", new String[]{adVar.token});
            }
            return d().insert(a.f3374a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized int a(ad adVar) {
        if (e(adVar.token)) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(a.f3379f, adVar.b());
                return d().update(a.f3374a, contentValues, "bid_id = ? ", new String[]{adVar.token});
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public final synchronized long a(String str, String str2) {
        if (d() == null) {
            return -1L;
        }
        try {
            new ContentValues().put(a.f3380g, str2);
            if (!e(str)) {
                return -1L;
            }
            return d().update(a.f3374a, r0, "bid_id = ? ", new String[]{str});
        } catch (Exception unused) {
            return -1L;
        }
    }
}
