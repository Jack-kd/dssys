package com.smartdigimkt.k3;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class g extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile g f41375b;

    public g(d dVar) {
        super(dVar);
    }

    public static g a(Context context) {
        if (f41375b == null) {
            synchronized (g.class) {
                try {
                    if (f41375b == null) {
                        f41375b = new g(d.a(context));
                    }
                } finally {
                }
            }
        }
        return f41375b;
    }

    public final boolean b(com.smartdigimkt.m3.f fVar) {
        SQLiteDatabase sQLiteDatabaseA;
        synchronized (this) {
            sQLiteDatabaseA = this.f41366a.a();
        }
        Cursor cursorQuery = sQLiteDatabaseA.query(g.a.f3264a, new String[]{"unique_id"}, "unique_id = ?", new String[]{fVar.f42006a}, null, null, null);
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

    public final synchronized void c() {
        try {
            b().delete(g.a.f3264a, "download_start_timestamp <= " + System.currentTimeMillis() + " - offer_cache_time", null);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final synchronized ArrayList d() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(g.a.f3264a, null, "download_start_timestamp <= " + System.currentTimeMillis() + " - offer_cache_time", null, null, null, g.a.f3285v);
            while (cursorQuery.moveToNext()) {
                arrayList.add(a(cursorQuery));
            }
        } catch (Throwable th) {
            try {
                th.getMessage();
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
        return arrayList;
    }

    public final synchronized void a(com.smartdigimkt.m3.f fVar) {
        try {
        } finally {
        }
        if (TextUtils.isEmpty(fVar.f42006a)) {
            return;
        }
        SQLiteDatabase sQLiteDatabaseB = b();
        ContentValues contentValues = new ContentValues();
        contentValues.put("unique_id", fVar.f42006a);
        contentValues.put("click_id", fVar.f42007b);
        contentValues.put("request_id", fVar.f42008c);
        contentValues.put("offer_id", fVar.f42009d);
        contentValues.put(g.a.f3270g, fVar.f42011f);
        contentValues.put("url", fVar.f42010e);
        contentValues.put(g.a.f3271h, fVar.f42012g);
        contentValues.put(g.a.f3272i, fVar.f42013h);
        contentValues.put(g.a.f3279p, fVar.f42022q);
        contentValues.put(g.a.f3280q, fVar.f42023r);
        contentValues.put("file_path", fVar.f42028w);
        contentValues.put(f.f41371a, Integer.valueOf(fVar.f42019n));
        contentValues.put(g.a.f3274k, Integer.valueOf(fVar.f42014i));
        contentValues.put(g.a.f3275l, Integer.valueOf(fVar.f42015j));
        contentValues.put(g.a.f3276m, Integer.valueOf(fVar.f42016k));
        contentValues.put(g.a.f3277n, Integer.valueOf(fVar.f42017l));
        contentValues.put(g.a.f3278o, Integer.valueOf(fVar.f42018m));
        contentValues.put(g.a.f3281r, Integer.valueOf(fVar.f42024s));
        contentValues.put(g.a.f3283t, Integer.valueOf(fVar.f42029x));
        contentValues.put(g.a.f3284u, Integer.valueOf(fVar.f42030y ? 1 : 0));
        contentValues.put(g.a.f3285v, Long.valueOf(fVar.f42031z));
        contentValues.put(g.a.f3286w, Long.valueOf(fVar.f41993A));
        contentValues.put("status", Integer.valueOf(fVar.f41994B));
        contentValues.put(g.a.f3288y, Integer.valueOf(fVar.f41995C));
        contentValues.put("placement_id", fVar.f42000H);
        contentValues.put("ad_source_id", fVar.f42001I);
        contentValues.put("network_firm_id", fVar.f42002J);
        contentValues.put("progress", Long.valueOf(fVar.f42003K));
        contentValues.put(g.a.f3252D, Long.valueOf(fVar.f42004L));
        contentValues.put(f.f41372b, Integer.valueOf(fVar.f42020o));
        contentValues.put(f.f41373c, Integer.valueOf(fVar.f42021p));
        contentValues.put(g.a.f3255G, Long.valueOf(fVar.f42005M));
        contentValues.put("app_name", fVar.f42025t);
        contentValues.put(g.a.f3257I, Integer.valueOf(fVar.f41996D));
        contentValues.put(g.a.f3258J, Integer.valueOf(fVar.f41997E));
        contentValues.put(g.a.f3259K, fVar.f41998F);
        contentValues.put("dsp_id", fVar.f41998F);
        contentValues.put(g.a.f3261M, fVar.f41999G);
        contentValues.put(g.a.f3262N, fVar.f42027v);
        if (b(fVar)) {
            sQLiteDatabaseB.update(g.a.f3264a, contentValues, "unique_id = ?", new String[]{fVar.f42006a});
        } else {
            sQLiteDatabaseB.insertOrThrow(g.a.f3264a, null, contentValues);
        }
    }

    public final synchronized com.smartdigimkt.m3.f a(String str) {
        Cursor cursorQuery;
        try {
            com.smartdigimkt.m3.f fVar = new com.smartdigimkt.m3.f();
            cursorQuery = a().query(g.a.f3264a, null, "download_start_timestamp > " + System.currentTimeMillis() + " - offer_cache_time AND unique_id = '" + str + "'", null, null, null, g.a.f3285v);
            try {
                if (cursorQuery.moveToFirst()) {
                    fVar = a(cursorQuery);
                }
                cursorQuery.close();
                return fVar;
            } catch (Throwable th) {
                th = th;
                try {
                    th.getMessage();
                    return null;
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    public static com.smartdigimkt.m3.f a(Cursor cursor) {
        com.smartdigimkt.m3.f fVar = new com.smartdigimkt.m3.f();
        try {
            int columnIndex = cursor.getColumnIndex("unique_id");
            if (columnIndex >= 0) {
                fVar.f42006a = cursor.getString(columnIndex);
                int columnIndex2 = cursor.getColumnIndex("click_id");
                if (columnIndex2 >= 0) {
                    fVar.f42007b = cursor.getString(columnIndex2);
                    int columnIndex3 = cursor.getColumnIndex("request_id");
                    if (columnIndex3 >= 0) {
                        fVar.f42008c = cursor.getString(columnIndex3);
                        int columnIndex4 = cursor.getColumnIndex("offer_id");
                        if (columnIndex4 >= 0) {
                            fVar.f42009d = cursor.getString(columnIndex4);
                            int columnIndex5 = cursor.getColumnIndex("url");
                            if (columnIndex5 >= 0) {
                                fVar.f42010e = cursor.getString(columnIndex5);
                                int columnIndex6 = cursor.getColumnIndex(g.a.f3270g);
                                if (columnIndex6 >= 0) {
                                    fVar.f42011f = cursor.getString(columnIndex6);
                                    int columnIndex7 = cursor.getColumnIndex(g.a.f3271h);
                                    if (columnIndex7 >= 0) {
                                        fVar.f42012g = cursor.getString(columnIndex7);
                                        int columnIndex8 = cursor.getColumnIndex(g.a.f3272i);
                                        if (columnIndex8 >= 0) {
                                            fVar.f42013h = cursor.getString(columnIndex8);
                                            int columnIndex9 = cursor.getColumnIndex(g.a.f3279p);
                                            if (columnIndex9 >= 0) {
                                                fVar.f42022q = cursor.getString(columnIndex9);
                                                int columnIndex10 = cursor.getColumnIndex(g.a.f3280q);
                                                if (columnIndex10 >= 0) {
                                                    fVar.f42023r = cursor.getString(columnIndex10);
                                                    int columnIndex11 = cursor.getColumnIndex("file_path");
                                                    if (columnIndex11 >= 0) {
                                                        fVar.f42028w = cursor.getString(columnIndex11);
                                                        int columnIndex12 = cursor.getColumnIndex("placement_id");
                                                        if (columnIndex12 >= 0) {
                                                            fVar.f42000H = cursor.getString(columnIndex12);
                                                            int columnIndex13 = cursor.getColumnIndex("ad_source_id");
                                                            if (columnIndex13 >= 0) {
                                                                fVar.f42001I = cursor.getString(columnIndex13);
                                                                int columnIndex14 = cursor.getColumnIndex("network_firm_id");
                                                                if (columnIndex14 >= 0) {
                                                                    fVar.f42002J = cursor.getString(columnIndex14);
                                                                    int columnIndex15 = cursor.getColumnIndex("app_name");
                                                                    if (columnIndex15 >= 0) {
                                                                        fVar.f42025t = cursor.getString(columnIndex15);
                                                                        int columnIndex16 = cursor.getColumnIndex(g.a.f3259K);
                                                                        if (columnIndex16 >= 0) {
                                                                            fVar.f41998F = cursor.getString(columnIndex16);
                                                                            int columnIndex17 = cursor.getColumnIndex("dsp_id");
                                                                            if (columnIndex17 >= 0) {
                                                                                fVar.f42026u = cursor.getString(columnIndex17);
                                                                                int columnIndex18 = cursor.getColumnIndex(g.a.f3261M);
                                                                                if (columnIndex18 >= 0) {
                                                                                    fVar.f41999G = cursor.getString(columnIndex18);
                                                                                    int columnIndex19 = cursor.getColumnIndex(g.a.f3262N);
                                                                                    if (columnIndex19 >= 0) {
                                                                                        fVar.f42027v = cursor.getString(columnIndex19);
                                                                                        int columnIndex20 = cursor.getColumnIndex(f.f41371a);
                                                                                        if (columnIndex20 >= 0) {
                                                                                            fVar.f42019n = cursor.getInt(columnIndex20);
                                                                                            int columnIndex21 = cursor.getColumnIndex(g.a.f3274k);
                                                                                            if (columnIndex21 >= 0) {
                                                                                                fVar.f42014i = cursor.getInt(columnIndex21);
                                                                                                int columnIndex22 = cursor.getColumnIndex(g.a.f3275l);
                                                                                                if (columnIndex22 >= 0) {
                                                                                                    fVar.f42015j = cursor.getInt(columnIndex22);
                                                                                                    int columnIndex23 = cursor.getColumnIndex(g.a.f3276m);
                                                                                                    if (columnIndex23 >= 0) {
                                                                                                        fVar.f42016k = cursor.getInt(columnIndex23);
                                                                                                        int columnIndex24 = cursor.getColumnIndex(g.a.f3277n);
                                                                                                        if (columnIndex24 >= 0) {
                                                                                                            fVar.f42017l = cursor.getInt(columnIndex24);
                                                                                                            int columnIndex25 = cursor.getColumnIndex(g.a.f3278o);
                                                                                                            if (columnIndex25 >= 0) {
                                                                                                                fVar.f42018m = cursor.getInt(columnIndex25);
                                                                                                                int columnIndex26 = cursor.getColumnIndex(g.a.f3281r);
                                                                                                                if (columnIndex26 >= 0) {
                                                                                                                    fVar.f42024s = cursor.getInt(columnIndex26);
                                                                                                                    int columnIndex27 = cursor.getColumnIndex(g.a.f3283t);
                                                                                                                    if (columnIndex27 >= 0) {
                                                                                                                        fVar.f42029x = cursor.getInt(columnIndex27);
                                                                                                                        int columnIndex28 = cursor.getColumnIndex(g.a.f3284u);
                                                                                                                        if (columnIndex28 >= 0) {
                                                                                                                            boolean z2 = true;
                                                                                                                            if (cursor.getInt(columnIndex28) != 1) {
                                                                                                                                z2 = false;
                                                                                                                            }
                                                                                                                            fVar.f42030y = z2;
                                                                                                                            int columnIndex29 = cursor.getColumnIndex(g.a.f3285v);
                                                                                                                            if (columnIndex29 >= 0) {
                                                                                                                                fVar.f42031z = cursor.getLong(columnIndex29);
                                                                                                                                int columnIndex30 = cursor.getColumnIndex(g.a.f3286w);
                                                                                                                                if (columnIndex30 >= 0) {
                                                                                                                                    fVar.f41993A = cursor.getLong(columnIndex30);
                                                                                                                                    int columnIndex31 = cursor.getColumnIndex("status");
                                                                                                                                    if (columnIndex31 >= 0) {
                                                                                                                                        fVar.f41994B = cursor.getInt(columnIndex31);
                                                                                                                                        int columnIndex32 = cursor.getColumnIndex(g.a.f3288y);
                                                                                                                                        if (columnIndex32 >= 0) {
                                                                                                                                            fVar.f41995C = cursor.getInt(columnIndex32);
                                                                                                                                            int columnIndex33 = cursor.getColumnIndex("progress");
                                                                                                                                            if (columnIndex33 >= 0) {
                                                                                                                                                fVar.f42003K = cursor.getLong(columnIndex33);
                                                                                                                                                int columnIndex34 = cursor.getColumnIndex(g.a.f3252D);
                                                                                                                                                if (columnIndex34 >= 0) {
                                                                                                                                                    fVar.f42004L = cursor.getLong(columnIndex34);
                                                                                                                                                    int columnIndex35 = cursor.getColumnIndex(f.f41372b);
                                                                                                                                                    if (columnIndex35 >= 0) {
                                                                                                                                                        fVar.f42020o = cursor.getInt(columnIndex35);
                                                                                                                                                        int columnIndex36 = cursor.getColumnIndex(f.f41373c);
                                                                                                                                                        if (columnIndex36 >= 0) {
                                                                                                                                                            fVar.f42021p = cursor.getInt(columnIndex36);
                                                                                                                                                            int columnIndex37 = cursor.getColumnIndex(g.a.f3255G);
                                                                                                                                                            if (columnIndex37 >= 0) {
                                                                                                                                                                fVar.f42005M = cursor.getLong(columnIndex37);
                                                                                                                                                                int columnIndex38 = cursor.getColumnIndex(g.a.f3257I);
                                                                                                                                                                if (columnIndex38 >= 0) {
                                                                                                                                                                    fVar.f41996D = cursor.getInt(columnIndex38);
                                                                                                                                                                    int columnIndex39 = cursor.getColumnIndex(g.a.f3258J);
                                                                                                                                                                    if (columnIndex39 >= 0) {
                                                                                                                                                                        fVar.f41997E = cursor.getInt(columnIndex39);
                                                                                                                                                                        return fVar;
                                                                                                                                                                    }
                                                                                                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                                                }
                                                                                                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                                            }
                                                                                                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                                        }
                                                                                                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                                    }
                                                                                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                                }
                                                                                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                            }
                                                                                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                        }
                                                                                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                    }
                                                                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                                }
                                                                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                            }
                                                                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                        }
                                                                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                    }
                                                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                                }
                                                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                            }
                                                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                        }
                                                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                    }
                                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                                }
                                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                            }
                                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                        }
                                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                    }
                                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                                }
                                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                            }
                                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                        }
                                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                    }
                                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                                }
                                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                                            }
                                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                                        }
                                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                                    }
                                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                                }
                                                throw new IllegalArgumentException("columnIndex must >= 0.");
                                            }
                                            throw new IllegalArgumentException("columnIndex must >= 0.");
                                        }
                                        throw new IllegalArgumentException("columnIndex must >= 0.");
                                    }
                                    throw new IllegalArgumentException("columnIndex must >= 0.");
                                }
                                throw new IllegalArgumentException("columnIndex must >= 0.");
                            }
                            throw new IllegalArgumentException("columnIndex must >= 0.");
                        }
                        throw new IllegalArgumentException("columnIndex must >= 0.");
                    }
                    throw new IllegalArgumentException("columnIndex must >= 0.");
                }
                throw new IllegalArgumentException("columnIndex must >= 0.");
            }
            throw new IllegalArgumentException("columnIndex must >= 0.");
        } catch (Throwable th) {
            th.getMessage();
            return fVar;
        }
    }
}
