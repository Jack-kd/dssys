package com.anythink.core.d.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.d.s;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class e extends com.anythink.core.common.f.c<com.anythink.core.d.a.a> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8596a = "PlacementStatisticsDao";

    /* renamed from: b, reason: collision with root package name */
    private static final int f8597b = 50;

    /* renamed from: c, reason: collision with root package name */
    private static volatile e f8598c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f8599a = "user_value_placement";

        /* renamed from: b, reason: collision with root package name */
        public static final String f8600b = "type";

        /* renamed from: c, reason: collision with root package name */
        public static final String f8601c = "placement_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f8602d = "request_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f8603e = "network_firm_id";

        /* renamed from: f, reason: collision with root package name */
        public static final String f8604f = "ad_source_id";

        /* renamed from: g, reason: collision with root package name */
        public static final String f8605g = "dsp_id";

        /* renamed from: h, reason: collision with root package name */
        public static final String f8606h = "price";

        /* renamed from: i, reason: collision with root package name */
        public static final String f8607i = "record_time";

        /* renamed from: j, reason: collision with root package name */
        public static final String f8608j = "ps_id";

        /* renamed from: k, reason: collision with root package name */
        public static final String f8609k = "segment_id";

        /* renamed from: l, reason: collision with root package name */
        public static final String f8610l = "CREATE TABLE IF NOT EXISTS user_value_placement(type INTEGER, placement_id TEXT, request_id TEXT, network_firm_id INTEGER, ad_source_id TEXT, dsp_id TEXT, price DOUBLE, record_time INTEGER, ps_id TEXT )";

        /* renamed from: m, reason: collision with root package name */
        public static final String f8611m = "ALTER TABLE user_value_placement ADD COLUMN segment_id INTEGER";

        /* renamed from: n, reason: collision with root package name */
        public static final String f8612n = "CREATE INDEX placement_id ON user_value_placement (placement_id)";
    }

    private e(com.anythink.core.common.f.d dVar) {
        super(dVar);
    }

    public static e a() {
        if (f8598c == null) {
            synchronized (e.class) {
                try {
                    if (f8598c == null) {
                        f8598c = new e(com.anythink.core.common.f.e.a(s.b().g()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8598c;
    }

    public final synchronized void a(com.anythink.core.d.a.a aVar) {
        int iK = aVar.k();
        Cursor cursor = null;
        try {
            String strJ = aVar.j();
            String strB = aVar.b();
            SQLiteDatabase sQLiteDatabaseD = d();
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(iK));
            contentValues.put("placement_id", strJ);
            contentValues.put("request_id", strB);
            contentValues.put("ad_source_id", aVar.d());
            contentValues.put("network_firm_id", Integer.valueOf(aVar.c()));
            contentValues.put("dsp_id", aVar.e());
            contentValues.put("price", Double.valueOf(aVar.f()));
            contentValues.put(a.f8607i, Long.valueOf(aVar.g()));
            contentValues.put("ps_id", aVar.h());
            contentValues.put("segment_id", Integer.valueOf(aVar.a()));
            Cursor cursorQuery = c().query(a.f8599a, new String[]{"placement_id", "request_id"}, "placement_id=? AND request_id=? AND type=?", new String[]{strJ, strB, String.valueOf(iK)}, null, null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.close();
                d().update(a.f8599a, contentValues, "placement_id = ? AND request_id = ? AND type = ?", new String[]{strJ, strB, String.valueOf(iK)});
                return;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            Cursor cursorQuery2 = sQLiteDatabaseD.query(a.f8599a, new String[]{a.f8607i}, "type = ? AND placement_id = ?", new String[]{String.valueOf(iK), strJ}, null, null, "record_time ASC");
            try {
                if (cursorQuery2.getCount() > 50) {
                    long j2 = cursorQuery2.moveToNext() ? cursorQuery2.getLong(cursorQuery2.getColumnIndexOrThrow(a.f8607i)) : 0L;
                    if (j2 != 0) {
                        sQLiteDatabaseD.delete(a.f8599a, "record_time = ?", new String[]{String.valueOf(j2)});
                    }
                }
                sQLiteDatabaseD.insertOrThrow(a.f8599a, null, contentValues);
                cursorQuery2.close();
            } catch (Exception unused) {
                cursor = cursorQuery2;
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean a(String str, String str2, int i2) {
        Cursor cursorQuery = c().query(a.f8599a, new String[]{"placement_id", "request_id"}, "placement_id=? AND request_id=? AND type=?", new String[]{str, str2, String.valueOf(i2)}, null, null, null);
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

    public final synchronized List<com.anythink.core.d.a.a> a(String str, int i2, long j2, int i3) {
        ArrayList arrayList;
        String[] strArr;
        String str2;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                if (i2 == -1) {
                    strArr = new String[]{str, String.valueOf(j2), "0"};
                    str2 = "placement_id = ? AND record_time > ? AND price > ?";
                } else {
                    strArr = new String[]{str, String.valueOf(i2), String.valueOf(j2), "0"};
                    str2 = "placement_id = ? AND segment_id = ? AND record_time > ? AND price > ?";
                }
                cursorQuery = c().query(a.f8599a, null, str2, strArr, null, null, null, String.valueOf(i3));
                while (cursorQuery.moveToNext()) {
                    arrayList.add(a(cursorQuery));
                }
                cursorQuery.close();
            } catch (Exception unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            }
        } finally {
        }
        return arrayList;
    }

    public final synchronized List<com.anythink.core.d.a.a> a(int i2, String str, int i3) {
        Throwable th;
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            ArrayList arrayList = new ArrayList();
            cursorQuery = c().query(a.f8599a, null, "type = ? AND placement_id = ?", new String[]{String.valueOf(i2), str}, null, null, "record_time DESC", String.valueOf(i3));
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(a(cursorQuery));
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                        throw th;
                    }
                    throw th;
                }
            }
            cursorQuery.close();
            return arrayList;
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static com.anythink.core.d.a.a a(Cursor cursor) {
        com.anythink.core.d.a.a aVar = new com.anythink.core.d.a.a();
        int i2 = cursor.getInt(cursor.getColumnIndexOrThrow("type"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("placement_id"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("request_id"));
        int i3 = cursor.getInt(cursor.getColumnIndexOrThrow("network_firm_id"));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("ad_source_id"));
        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("dsp_id"));
        double d2 = cursor.getDouble(cursor.getColumnIndexOrThrow("price"));
        long j2 = cursor.getLong(cursor.getColumnIndexOrThrow(a.f8607i));
        String string5 = cursor.getString(cursor.getColumnIndexOrThrow("ps_id"));
        int i4 = cursor.getInt(cursor.getColumnIndexOrThrow("segment_id"));
        aVar.c(i2);
        aVar.e(string);
        aVar.a(string2);
        aVar.b(i3);
        aVar.b(string3);
        aVar.c(string4);
        aVar.a(d2);
        aVar.a(j2);
        aVar.d(string5);
        aVar.a(i4);
        return aVar;
    }

    public final synchronized void a(String str) {
        try {
            d().delete(a.f8599a, "placement_id = ?", new String[]{str});
        } catch (Exception unused) {
        }
    }

    public final synchronized double[] a(String[] strArr, String str) {
        double[] dArr;
        try {
            dArr = new double[2];
            Cursor cursorQuery = null;
            try {
                cursorQuery = c().query(str, strArr, null, null, null, null, null, null);
                if (cursorQuery.moveToNext()) {
                    dArr[0] = cursorQuery.getDouble(0);
                    dArr[1] = cursorQuery.getInt(1);
                }
            } catch (Exception unused) {
                if (cursorQuery != null) {
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    throw th;
                }
                throw th;
            }
            cursorQuery.close();
        } catch (Throwable th2) {
            throw th2;
        }
        return dArr;
    }
}
