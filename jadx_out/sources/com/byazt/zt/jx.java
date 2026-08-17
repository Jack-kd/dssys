package com.byazt.zt;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.f.f;
import com.byazt.uid.s;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1879, 30})
/* loaded from: classes3.dex */
public final class jx {

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f28606l;
    public final SparseArray<Map<String, hp>> hp;

    /* renamed from: j, reason: collision with root package name */
    public final Executor f28607j;
    public final j jx;

    /* renamed from: w, reason: collision with root package name */
    public volatile SQLiteStatement f28608w;

    private jx(Context context) {
        SparseArray<Map<String, hp>> sparseArray = new SparseArray<>(2);
        this.hp = sparseArray;
        this.f28607j = new com.byazt.shx.j(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new s("/VideoProxyDB"));
        this.jx = new j(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    public void delete(final String str, final int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, hp> map = this.hp.get(i2);
        if (map != null) {
            map.remove(str);
        }
        this.f28607j.execute(new Runnable() { // from class: com.byazt.zt.jx.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jx.this.jx.getWritableDatabase().delete("video_http_header_t", "key=? AND flag=?", new String[]{str, String.valueOf(i2)});
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void insert(final hp hpVar) {
        if (hpVar != null) {
            Map<String, hp> map = this.hp.get(hpVar.f28603j);
            if (map != null) {
                map.put(hpVar.hp, hpVar);
            }
            this.f28607j.execute(new Runnable() { // from class: com.byazt.zt.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (jx.this.f28608w == null) {
                            jx jxVar = jx.this;
                            jxVar.f28608w = jxVar.jx.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            jx.this.f28608w.clearBindings();
                        }
                        jx.this.f28608w.bindString(1, hpVar.hp);
                        jx.this.f28608w.bindString(2, hpVar.f28604l);
                        jx.this.f28608w.bindLong(3, hpVar.jx);
                        jx.this.f28608w.bindLong(4, hpVar.f28603j);
                        jx.this.f28608w.bindString(5, hpVar.f28605w);
                        jx.this.f28608w.executeInsert();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public hp query(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, hp> map = this.hp.get(i2);
        hp hpVar = map == null ? null : map.get(str);
        if (hpVar != null) {
            return hpVar;
        }
        try {
            Cursor cursorQuery = this.jx.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i2)}, null, null, null, "1");
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0 && cursorQuery.moveToNext()) {
                    int columnIndex = cursorQuery.getColumnIndex(f.a.f3242b);
                    String string = columnIndex != -1 ? cursorQuery.getString(columnIndex) : null;
                    int columnIndex2 = cursorQuery.getColumnIndex("mime");
                    String string2 = columnIndex2 != -1 ? cursorQuery.getString(columnIndex2) : null;
                    int columnIndex3 = cursorQuery.getColumnIndex("contentLength");
                    int i3 = columnIndex3 != -1 ? cursorQuery.getInt(columnIndex3) : -1;
                    int columnIndex4 = cursorQuery.getColumnIndex("extra");
                    hpVar = new hp(string, string2, i3, i2, columnIndex4 != -1 ? cursorQuery.getString(columnIndex4) : null);
                }
                cursorQuery.close();
            }
            if (hpVar != null && map != null) {
                map.put(str, hpVar);
            }
            return hpVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String l(int i2) {
        if (i2 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i2 << 1);
        sb.append("?");
        for (int i3 = 1; i3 < i2; i3++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public static jx hp(Context context) {
        if (f28606l == null) {
            synchronized (jx.class) {
                try {
                    if (f28606l == null) {
                        f28606l = new jx(context);
                    }
                } finally {
                }
            }
        }
        return f28606l;
    }

    public void hp(Collection<String> collection, int i2) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        int size = collection.size() + 1;
        String[] strArr = new String[size];
        Map<String, hp> map = this.hp.get(i2);
        int i3 = -1;
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i3++;
            strArr[i3] = str;
        }
        strArr[i3 + 1] = String.valueOf(i2);
        try {
            this.jx.getWritableDatabase().delete("video_http_header_t", "key IN(" + l(size) + ") AND flag=?", strArr);
        } catch (Throwable unused) {
        }
    }

    public void hp(final int i2) {
        Map<String, hp> map = this.hp.get(i2);
        if (map != null) {
            map.clear();
        }
        this.f28607j.execute(new Runnable() { // from class: com.byazt.zt.jx.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jx.this.jx.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i2)});
                } catch (Throwable unused) {
                }
            }
        });
    }
}
