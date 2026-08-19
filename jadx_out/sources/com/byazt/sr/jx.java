package com.byazt.sr;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.LruCache;
import com.byazt.jz.sz;
import com.byazt.rx.BaseConstants;
import com.byazt.uid.eb;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 21, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final LruCache<String, Integer> hp = new LruCache<>(20);

    /* renamed from: l, reason: collision with root package name */
    public static final Map<Integer, l> f25548l = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 21, 219})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public com.byazt.jt.l f25551a;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f25552j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public String f25553l;

        /* renamed from: w, reason: collision with root package name */
        public int f25554w = 0;

        public hp(int i2, String str, int i3, long j2, com.byazt.jt.l lVar) {
            this.hp = i2;
            this.f25553l = str;
            this.f25552j = i3;
            this.jx = j2;
            this.f25551a = lVar;
        }

        public void hp(int i2) {
            this.f25554w = i2;
        }
    }

    public static JSONObject hp(int i2, String str) {
        Map<Integer, l> map = f25548l;
        if (map.get(Integer.valueOf(i2)) == null) {
            map.put(Integer.valueOf(i2), new l());
        }
        l lVar = map.get(Integer.valueOf(i2));
        if (lVar != null) {
            return lVar.hp(i2, str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject j(int i2, String str) throws JSONException, NumberFormatException {
        JSONObject jSONObject;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iK = s.hp(i2).k();
        JSONObject jSONObject2 = null;
        if (iK <= 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - (iK * 60000);
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "meta_req_record_v1", null, "slot_type = ? and create_time >= ? and event_type = 1 and appid = ?", new String[]{String.valueOf(i2), String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        int i10 = 2;
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            jSONObject = null;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        } else {
            int i11 = 0;
            int i12 = 0;
            i5 = 0;
            int i13 = 0;
            i6 = 0;
            while (true) {
                int i14 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                jSONObject = jSONObject2;
                if (i14 == 1) {
                    i11 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                } else if (i14 == i10) {
                    i12 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                    i5 += cursorQuery.getInt(cursorQuery.getColumnIndex("response_count"));
                } else if (i14 == 3) {
                    i13 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                    i6 += cursorQuery.getInt(cursorQuery.getColumnIndex("response_count"));
                }
                if (!cursorQuery.moveToNext()) {
                    break;
                }
                jSONObject2 = jSONObject;
                i10 = 2;
            }
            i4 = i11 + i12 + i13;
            i3 = i5 + i6;
        }
        Cursor cursorQuery2 = com.byazt.jnq.hp.query(sz.getContext(), "meta_req_record_v1", null, "slot_type = ? and create_time >= ? and event_type = 2 and appid = ?", new String[]{String.valueOf(i2), String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        if (cursorQuery2 == null || !cursorQuery2.moveToFirst()) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
        } else {
            int i15 = 0;
            int i16 = 0;
            do {
                int i17 = Integer.parseInt(cursorQuery2.getString(cursorQuery2.getColumnIndex("status")));
                if (i17 == 1) {
                    i15++;
                } else if (i17 == 2) {
                    i16++;
                }
            } while (cursorQuery2.moveToNext());
            i8 = i15;
            i9 = i15 + i16;
            i7 = i16;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        if (cursorQuery2 != null) {
            cursorQuery2.close();
        }
        int i18 = i4 <= 0 ? -1 : (int) ((i3 * 100.0f) / i4);
        int i19 = i3 <= 0 ? -1 : (int) ((i5 * 100.0f) / i3);
        int i20 = i3 <= 0 ? -1 : (int) ((i6 * 100.0f) / i3);
        int i21 = (i9 <= 0 || i3 <= 0) ? -1 : (int) ((i9 * 100.0f) / i3);
        int i22 = i9 <= 0 ? -1 : (int) ((i7 * 100.0f) / i9);
        int i23 = i9 > 0 ? (int) ((i8 * 100.0f) / i9) : -1;
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("send_request_sum", i4);
            jSONObject3.put("send_response_sum", i3);
            jSONObject3.put("send_fill_rate", i18);
            jSONObject3.put("send_net_rate", i19);
            jSONObject3.put("send_cache_rate", i20);
            jSONObject3.put("show_sum", i9);
            jSONObject3.put("show_rate", i21);
            jSONObject3.put("show_cache_rate", i22);
            jSONObject3.put("show_net_rate", i23);
            jSONObject3.put("interval_minute", iK);
            return jSONObject3;
        } catch (Exception unused) {
            return jSONObject;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.String] */
    public static JSONObject l(int i2, String str) {
        long jL;
        JSONObject jSONObject = new JSONObject();
        boolean zHp = 3;
        try {
            try {
                if (i2 != 3 && i2 != 4) {
                    com.byazt.fe.w wVarHp = com.byazt.fe.w.hp(i2);
                    zHp = wVarHp.j(str);
                    jL = wVarHp.w(str);
                } else if ((com.byazt.lca.w.hp().gu() & 16) == 16) {
                    com.byazt.fe.w wVarHp2 = com.byazt.fe.w.hp(3);
                    zHp = wVarHp2.j(str);
                    jL = wVarHp2.w(str);
                } else {
                    com.byazt.ocx.j jVar = new com.byazt.ocx.j();
                    zHp = jVar.hp(str);
                    jL = jVar.l(str);
                }
            } catch (Throwable unused) {
                zHp = 0;
                jL = 0;
            }
        } catch (Throwable unused2) {
            jL = 0;
        }
        try {
            jSONObject.put("has_cache", zHp);
            zHp = "cache_exp_ts";
            jSONObject.put("cache_exp_ts", Math.max(0L, jL));
        } catch (Throwable unused3) {
        }
        return jSONObject;
    }

    @com.byazt.kj.hp(hp = {0, 1, 21, 224})
    public static class l {
        public long hp;

        /* renamed from: l, reason: collision with root package name */
        public JSONObject f25555l;

        public JSONObject hp(int i2, String str) {
            if (!hp(i2)) {
                this.f25555l = jx.j(i2, str);
                this.hp = System.currentTimeMillis();
            }
            return this.f25555l;
        }

        private boolean hp(int i2) {
            return System.currentTimeMillis() - this.hp <= ((long) (Math.max(0, s.hp(i2).v()) * BaseConstants.Time.MINUTE)) && this.f25555l != null;
        }
    }

    public static void hp(final hp hpVar, final int i2) {
        if (hpVar != null && s.hp(hpVar.hp).k() > 0) {
            com.byazt.dnb.s.hp(new eb("cacheDataCenter-recordSend") { // from class: com.byazt.sr.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("rit", hpVar.f25553l);
                    contentValues.put("appid", hpVar.f25551a == null ? "" : hpVar.f25551a.lv());
                    contentValues.put("slot_type", Integer.valueOf(hpVar.hp));
                    contentValues.put("create_time", Long.valueOf(hpVar.jx));
                    contentValues.put("status", Integer.valueOf(i2));
                    contentValues.put("request_count", Integer.valueOf(hpVar.f25552j));
                    contentValues.put("response_count", Integer.valueOf(hpVar.f25554w));
                    contentValues.put("event_type", (Integer) 1);
                    com.byazt.jnq.hp.insert(sz.getContext(), "meta_req_record_v1", contentValues);
                }
            });
        }
    }

    public static void hp(final mp mpVar) {
        LruCache<String, Integer> lruCache = hp;
        if (lruCache.get(mpVar.sq()) != null) {
            return;
        }
        lruCache.put(mpVar.sq(), 1);
        final int iJl = ky.jl(mpVar);
        if (s.hp(iJl).k() <= 0) {
            return;
        }
        com.byazt.dnb.s.hp(new eb("cacheDataCenter-recordShow") { // from class: com.byazt.sr.jx.2
            @Override // java.lang.Runnable
            public void run() {
                String strHp = ky.hp(mpVar, "");
                ContentValues contentValues = new ContentValues();
                contentValues.put("rit", strHp);
                contentValues.put("appid", mpVar.xq());
                contentValues.put("slot_type", Integer.valueOf(iJl));
                contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("status", Integer.valueOf(mpVar.uj() ? 2 : 1));
                contentValues.put("event_type", (Integer) 2);
                com.byazt.jnq.hp.insert(sz.getContext(), "meta_req_record_v1", contentValues);
            }
        });
    }

    public static void hp() {
        com.byazt.dnb.s.hp(new eb("cacheDataCenter-clearOldData") { // from class: com.byazt.sr.jx.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.jnq.hp.delete(sz.getContext(), "meta_req_record_v1", "create_time < ?", new String[]{String.valueOf(System.currentTimeMillis() - 86400000)});
            }
        });
    }
}
