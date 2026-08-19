package com.byazt.ir;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.ymw.u;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 402, 54})
/* loaded from: classes.dex */
public class a {
    public static int hp = 2000;

    /* renamed from: l, reason: collision with root package name */
    public static volatile a f21192l;

    /* renamed from: w, reason: collision with root package name */
    public volatile ConcurrentHashMap<String, com.byazt.gr.jx> f21195w;

    /* renamed from: j, reason: collision with root package name */
    public final Object f21194j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21193a = new AtomicBoolean(false);
    public LruCache<String, com.byazt.gr.l> eb = new LruCache<String, com.byazt.gr.l>(hp) { // from class: com.byazt.ir.a.1
        @Override // android.util.LruCache
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, com.byazt.gr.l lVar) {
            return 1;
        }
    };
    public Set<String> jx = Collections.synchronizedSet(new HashSet());

    private a() {
    }

    public static a hp() {
        if (f21192l == null) {
            synchronized (a.class) {
                try {
                    if (f21192l == null) {
                        f21192l = new a();
                    }
                } finally {
                }
            }
        }
        return f21192l;
    }

    private void j(String str) {
        LruCache<String, com.byazt.gr.l> lruCache;
        if (TextUtils.isEmpty(str) || (lruCache = this.eb) == null || lruCache.size() <= 0) {
            return;
        }
        synchronized (this.f21194j) {
            this.eb.remove(str);
        }
    }

    public void jx(String str) {
        com.byazt.gr.jx jxVar;
        try {
            if (this.f21195w != null && !this.f21195w.isEmpty() && (jxVar = this.f21195w.get(str)) != null) {
                String strHp = jxVar.hp();
                if (!TextUtils.isEmpty(strHp) && com.byazt.ui.hp.hp().a() != null) {
                    com.byazt.ui.hp.hp().a().delete(strHp, str);
                }
                this.f21195w.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Set<com.byazt.gr.l> l(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 != 0) goto Led
            com.byazt.ui.hp r0 = com.byazt.ui.hp.hp()
            com.byazt.ui.l r0 = r0.l()
            if (r0 != 0) goto L12
            goto Led
        L12:
            com.byazt.ui.hp r0 = com.byazt.ui.hp.hp()
            com.byazt.ui.l r1 = r0.l()
            java.lang.String r2 = "template_diff_new"
            java.lang.String r4 = "rit=?"
            java.lang.String[] r5 = new java.lang.String[]{r10}
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)
            if (r1 == 0) goto Le7
            int r0 = r1.getCount()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            if (r0 <= 0) goto Le7
            java.util.HashSet r0 = new java.util.HashSet     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            r0.<init>()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            if (r2 == 0) goto Ldb
        L3d:
            java.lang.String r2 = "id"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            if (r3 != 0) goto Ld5
            java.lang.Object r3 = r9.f21194j     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            android.util.LruCache<java.lang.String, com.byazt.gr.l> r4 = r9.eb     // Catch: java.lang.Throwable -> Ld1
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Throwable -> Ld1
            com.byazt.gr.l r4 = (com.byazt.gr.l) r4     // Catch: java.lang.Throwable -> Ld1
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Ld1
            if (r4 == 0) goto L64
            r0.add(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            goto Ld5
        L60:
            r0 = move-exception
            r10 = r0
            goto Ldf
        L64:
            java.lang.String r3 = "md5"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r4 = "url"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r5 = "data"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r5 = r1.getString(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r6 = "version"
            int r6 = r1.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r6 = r1.getString(r6)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.String r7 = "update_time"
            int r7 = r1.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            long r7 = r1.getLong(r7)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r8 = new com.byazt.gr.l     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            r8.<init>()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r8 = r8.hp(r10)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r8 = r8.l(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r3 = r8.jx(r3)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r3 = r3.j(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r3 = r3.w(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r3 = r3.a(r6)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            com.byazt.gr.l r3 = r3.hp(r7)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            r0.add(r3)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            java.lang.Object r4 = r9.f21194j     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            android.util.LruCache<java.lang.String, com.byazt.gr.l> r5 = r9.eb     // Catch: java.lang.Throwable -> Lcd
            r5.put(r2, r3)     // Catch: java.lang.Throwable -> Lcd
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Lcd
            java.util.Set<java.lang.String> r3 = r9.jx     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            r3.add(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            goto Ld5
        Lcd:
            r0 = move-exception
            r10 = r0
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Lcd
            throw r10     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
        Ld1:
            r0 = move-exception
            r10 = r0
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Ld1
            throw r10     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
        Ld5:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> Le3
            if (r2 != 0) goto L3d
        Ldb:
            r1.close()
            return r0
        Ldf:
            r1.close()
            throw r10
        Le3:
            r1.close()
            goto Lea
        Le7:
            if (r1 == 0) goto Lea
            goto Le3
        Lea:
            java.util.Set r10 = java.util.Collections.EMPTY_SET
            return r10
        Led:
            java.util.Set r10 = java.util.Collections.EMPTY_SET
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ir.a.l(java.lang.String):java.util.Set");
    }

    public static String jx() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)").toString();
    }

    public com.byazt.gr.l hp(String str) {
        com.byazt.gr.l lVar;
        com.byazt.gr.l lVarHp;
        if (TextUtils.isEmpty(str) || com.byazt.ui.hp.hp().l() == null) {
            return null;
        }
        synchronized (this.f21194j) {
            lVar = this.eb.get(String.valueOf(str));
        }
        if (lVar != null) {
            return lVar;
        }
        Cursor cursorQuery = com.byazt.ui.hp.hp().l().query("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("rit"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex(TKDownloadReason.KSAD_TK_MD5));
                        String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("url"));
                        String string5 = cursorQuery.getString(cursorQuery.getColumnIndex("data"));
                        String string6 = cursorQuery.getString(cursorQuery.getColumnIndex(cl.f49059n));
                        lVarHp = new com.byazt.gr.l().hp(string).l(string2).jx(string3).j(string4).w(string5).a(string6).hp(Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"))));
                        synchronized (this.f21194j) {
                            this.eb.put(string2, lVarHp);
                        }
                        this.jx.add(string2);
                    } while (cursorQuery.moveToNext());
                    return lVarHp;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<com.byazt.gr.l> l() {
        if (com.byazt.ui.hp.hp().l() == null) {
            return null;
        }
        boolean z2 = this.f21193a.get();
        this.f21193a.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = com.byazt.ui.hp.hp().l().query("template_diff_new", null, null, null, null, null, null);
        if (cursorQuery == null) {
            return arrayList;
        }
        while (cursorQuery.moveToNext()) {
            try {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("rit"));
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                String string3 = cursorQuery.getString(cursorQuery.getColumnIndex(TKDownloadReason.KSAD_TK_MD5));
                String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("url"));
                String string5 = cursorQuery.getString(cursorQuery.getColumnIndex("data"));
                String string6 = cursorQuery.getString(cursorQuery.getColumnIndex(cl.f49059n));
                arrayList.add(new com.byazt.gr.l().hp(string).l(string2).jx(string3).j(string4).w(string5).a(string6).hp(Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time")))));
                synchronized (this.f21194j) {
                    this.eb.put(string2, arrayList.get(arrayList.size() - 1));
                }
                this.jx.add(string2);
                if (!z2 && com.byazt.ui.hp.hp().a() != null) {
                    if (this.f21195w == null) {
                        this.f21195w = new ConcurrentHashMap<>();
                    }
                    if (string2 != null && !this.f21195w.contains(string2)) {
                        this.f21195w.put(string2, new com.byazt.gr.jx(string, string2, string3));
                    }
                }
            } catch (Throwable th) {
                try {
                    u.hp("TmplDbHelper", "getTemplate error", th);
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        }
        return arrayList;
    }

    public void hp(com.byazt.gr.l lVar, boolean z2) {
        if (lVar == null || com.byazt.ui.hp.hp().l() == null || TextUtils.isEmpty(lVar.l())) {
            return;
        }
        Cursor cursorQuery = com.byazt.ui.hp.hp().l().query("template_diff_new", null, "id=?", new String[]{lVar.l()}, null, null, null);
        boolean z3 = cursorQuery != null && cursorQuery.getCount() > 0;
        if (cursorQuery != null) {
            try {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndex("rit")) : null;
                cursorQuery.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", lVar.hp());
        contentValues.put("id", lVar.l());
        contentValues.put(TKDownloadReason.KSAD_TK_MD5, lVar.jx());
        contentValues.put("url", lVar.j());
        contentValues.put("data", lVar.w());
        contentValues.put(cl.f49059n, lVar.a());
        contentValues.put("update_time", lVar.eb());
        if (z3) {
            com.byazt.ui.hp.hp().l().update("template_diff_new", contentValues, "id=?", new String[]{lVar.l()});
        } else {
            com.byazt.ui.hp.hp().l().insert("template_diff_new", contentValues);
        }
        synchronized (this.f21194j) {
            this.eb.put(lVar.l(), lVar);
        }
        this.jx.add(lVar.l());
        if (z2) {
            return;
        }
        try {
            if (com.byazt.ui.hp.hp().a() == null) {
                return;
            }
            if (this.f21195w == null) {
                this.f21195w = new ConcurrentHashMap<>();
            }
            com.byazt.gr.jx jxVar = new com.byazt.gr.jx(lVar.hp(), lVar.l(), lVar.jx());
            this.f21195w.put(lVar.l(), jxVar);
            if (string != null) {
                com.byazt.ui.hp.hp().a().delete(string, jxVar.l());
            }
            com.byazt.ui.hp.hp().a().update(lVar.hp(), jxVar);
        } catch (Throwable unused2) {
        }
    }

    public void hp(Set<String> set) {
        if (set == null || set.isEmpty() || com.byazt.ui.hp.hp().l() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                j(strArr[i2]);
                com.byazt.ui.hp.hp().l().delete("template_diff_new", "id=?", new String[]{strArr[i2]});
                jx(strArr[i2]);
            }
        }
    }
}
