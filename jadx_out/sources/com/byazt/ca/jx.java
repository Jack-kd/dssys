package com.byazt.ca;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_TCP_FAST_OPEN_SUCCESS, 30})
/* loaded from: classes2.dex */
public class jx {
    public static int hp = 20;

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f18704l;

    /* renamed from: w, reason: collision with root package name */
    public volatile ConcurrentHashMap<String, com.byazt.gr.jx> f18707w;
    public final Object jx = new Object();

    /* renamed from: j, reason: collision with root package name */
    public final LruCache<String, hp> f18706j = new LruCache<String, hp>(hp) { // from class: com.byazt.ca.jx.1
        @Override // android.util.LruCache
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, hp hpVar) {
            return 1;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f18705a = new AtomicBoolean(false);

    private jx() {
    }

    public static jx hp() {
        if (f18704l == null) {
            synchronized (jx.class) {
                try {
                    if (f18704l == null) {
                        f18704l = new jx();
                    }
                } finally {
                }
            }
        }
        return f18704l;
    }

    private void jx(String str) {
        if (!TextUtils.isEmpty(str) && this.f18706j.size() > 0) {
            synchronized (this.jx) {
                this.f18706j.remove(str);
            }
        }
    }

    public List<hp> l() {
        boolean z2 = this.f18705a.get();
        this.f18705a.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "ugen_template", null, null, null, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        int columnIndex = cursorQuery.getColumnIndex("id");
                        int columnIndex2 = cursorQuery.getColumnIndex(TKDownloadReason.KSAD_TK_MD5);
                        int columnIndex3 = cursorQuery.getColumnIndex("url");
                        int columnIndex4 = cursorQuery.getColumnIndex("data");
                        int columnIndex5 = cursorQuery.getColumnIndex("update_time");
                        if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                            int columnIndex6 = cursorQuery.getColumnIndex("rit");
                            String string = columnIndex6 != -1 ? cursorQuery.getString(columnIndex6) : null;
                            String string2 = cursorQuery.getString(columnIndex);
                            String string3 = cursorQuery.getString(columnIndex2);
                            String string4 = cursorQuery.getString(columnIndex3);
                            hp hpVarHp = new hp().hp(string2).l(string3).jx(string4).j(cursorQuery.getString(columnIndex4)).w(string).hp(Long.valueOf(cursorQuery.getLong(columnIndex5)));
                            arrayList.add(hpVarHp);
                            synchronized (this.jx) {
                                this.f18706j.put(string2, hpVarHp);
                            }
                            if (!z2) {
                                if (this.f18707w == null) {
                                    this.f18707w = new ConcurrentHashMap<>();
                                }
                                if (string2 != null && !this.f18707w.contains(string2)) {
                                    this.f18707w.put(string2, new com.byazt.gr.jx(string, string2, string3));
                                }
                            }
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    u.hp("UGTmplDbHelper", "getUgenTemplate error", th);
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        }
        if (cursorQuery != null) {
        }
        return arrayList;
    }

    public static String jx() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS ugen_template (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , rit TEXT , update_time TEXT)").toString();
    }

    public hp hp(String str, String str2) {
        hp hpVar;
        hp hpVarHp;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.jx) {
            hpVar = this.f18706j.get(str);
        }
        if (hpVar != null) {
            if (TextUtils.equals(str2, hpVar.l())) {
                return hpVar;
            }
            jx(str2);
            return null;
        }
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "ugen_template", null, "id=? AND md5=?", new String[]{str, str2}, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                do {
                    int columnIndex = cursorQuery.getColumnIndex("id");
                    int columnIndex2 = cursorQuery.getColumnIndex(TKDownloadReason.KSAD_TK_MD5);
                    int columnIndex3 = cursorQuery.getColumnIndex("url");
                    int columnIndex4 = cursorQuery.getColumnIndex("data");
                    int columnIndex5 = cursorQuery.getColumnIndex("update_time");
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = cursorQuery.getColumnIndex("rit");
                        String string = cursorQuery.getString(columnIndex);
                        String string2 = cursorQuery.getString(columnIndex2);
                        String string3 = cursorQuery.getString(columnIndex3);
                        String string4 = cursorQuery.getString(columnIndex4);
                        hpVarHp = new hp().hp(string).l(string2).j(string4).jx(string3).w(columnIndex6 != -1 ? cursorQuery.getString(columnIndex6) : null).hp(Long.valueOf(cursorQuery.getLong(columnIndex5)));
                        synchronized (this.jx) {
                            this.f18706j.put(string, hpVarHp);
                        }
                    }
                    return null;
                } while (cursorQuery.moveToNext());
                return hpVarHp;
            }
        } finally {
            try {
                return null;
            } finally {
            }
        }
        return null;
    }

    public void l(String str) {
        com.byazt.gr.jx jxVar;
        try {
            if (this.f18707w != null && !this.f18707w.isEmpty() && (jxVar = this.f18707w.get(str)) != null) {
                String strHp = jxVar.hp();
                if (!TextUtils.isEmpty(strHp)) {
                    com.byazt.lca.l.hp().delete(strHp, str, true);
                }
                this.f18707w.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(hp hpVar, boolean z2) {
        if (hpVar == null || TextUtils.isEmpty(hpVar.hp())) {
            return;
        }
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "ugen_template", null, "id=?", new String[]{hpVar.hp()}, null, null, null);
        boolean z3 = cursorQuery != null && cursorQuery.getCount() > 0;
        if (z3) {
            try {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndex("rit")) : null;
                cursorQuery.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", hpVar.hp());
        contentValues.put(TKDownloadReason.KSAD_TK_MD5, hpVar.l());
        contentValues.put("url", hpVar.jx());
        contentValues.put("data", hpVar.w());
        contentValues.put("rit", hpVar.a());
        contentValues.put("update_time", hpVar.j());
        if (z3) {
            com.byazt.jnq.hp.update(sz.getContext(), "ugen_template", contentValues, "id=?", new String[]{hpVar.hp()});
        } else {
            com.byazt.jnq.hp.insert(sz.getContext(), "ugen_template", contentValues);
        }
        synchronized (this.jx) {
            this.f18706j.put(hpVar.hp(), hpVar);
        }
        if (z2) {
            return;
        }
        try {
            if (this.f18707w == null) {
                this.f18707w = new ConcurrentHashMap<>();
            }
            com.byazt.gr.jx jxVar = new com.byazt.gr.jx(hpVar.a(), hpVar.hp(), hpVar.l());
            this.f18707w.put(hpVar.hp(), jxVar);
            if (string != null) {
                com.byazt.lca.l.hp().delete(string, jxVar.l(), true);
            }
            com.byazt.lca.l.hp().update(hpVar.a(), jxVar, true);
        } catch (Throwable unused2) {
        }
    }

    public Set<hp> hp(String str) {
        hp hpVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "ugen_template", null, "rit=?", new String[]{str}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        int columnIndex = cursorQuery.getColumnIndex("id");
                        if (columnIndex != -1) {
                            String string = cursorQuery.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                synchronized (this.jx) {
                                    hpVar = this.f18706j.get(string);
                                }
                                if (hpVar != null) {
                                    hashSet.add(hpVar);
                                } else {
                                    hp hpVar2 = new hp();
                                    int columnIndex2 = cursorQuery.getColumnIndex("data");
                                    if (columnIndex2 != -1) {
                                        String string2 = cursorQuery.getString(columnIndex2);
                                        if (!TextUtils.isEmpty(string2)) {
                                            hpVar2.j(string2);
                                            hpVar2.hp(string);
                                            hpVar2.w(str);
                                            int columnIndex3 = cursorQuery.getColumnIndex(TKDownloadReason.KSAD_TK_MD5);
                                            int columnIndex4 = cursorQuery.getColumnIndex("url");
                                            int columnIndex5 = cursorQuery.getColumnIndex("update_time");
                                            if (columnIndex3 != -1) {
                                                hpVar2.l(cursorQuery.getString(columnIndex3));
                                            }
                                            if (columnIndex4 != -1) {
                                                hpVar2.jx(cursorQuery.getString(columnIndex4));
                                            }
                                            if (columnIndex5 != -1) {
                                                hpVar2.hp(Long.valueOf(cursorQuery.getLong(columnIndex5)));
                                            }
                                            hashSet.add(hpVar2);
                                            synchronized (this.jx) {
                                                this.f18706j.put(string, hpVar2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    u.hp("UGTmplDbHelper", "getUgenTemplateFormRit error", th);
                    return hashSet;
                } finally {
                    cursorQuery.close();
                }
            }
        }
        if (cursorQuery != null) {
        }
        return hashSet;
    }

    public void hp(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                jx(strArr[i2]);
                com.byazt.jnq.hp.delete(sz.getContext(), "ugen_template", "id=?", new String[]{strArr[i2]});
                l(strArr[i2]);
            }
        }
    }
}
