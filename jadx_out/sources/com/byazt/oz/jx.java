package com.byazt.oz;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.jz.sz;
import com.kuaishou.weapon.p0.bg;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bz;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 854, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String hp = "SettingRitRepertoryImpl";

    /* renamed from: j, reason: collision with root package name */
    public static long f24297j = 0;
    public static Map<Integer, String> jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f24298l = false;

    public static void delete(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.jnq.hp.delete(sz.getContext(), "setting_rit", "rit=?", new String[]{str});
    }

    public static boolean hp() {
        return f24298l;
    }

    private static Map<Integer, String> j() {
        HashMap map = new HashMap();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "setting_global_info", new String[]{bz.f48985d, f.a.f3244d}, null, null, null, null, null);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (Exception unused) {
            if (0 != 0) {
            }
        }
        if (cursorQuery == null) {
            if (cursorQuery != null) {
                cursorQuery.close();
                return map;
            }
            return map;
        }
        while (cursorQuery.moveToNext()) {
            try {
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex(bz.f48985d));
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                Integer numValueOf = Integer.valueOf(i2);
                if (string == null) {
                    string = "";
                }
                map.put(numValueOf, string);
            } catch (Exception unused2) {
            }
        }
        cursorQuery.close();
        return map;
    }

    public static String jx() {
        return "CREATE TABLE IF NOT EXISTS setting_rit (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT UNIQUE,value TEXT,slot TEXT,config TEXT,preview_ads TEXT)";
    }

    public static void l() {
        f24298l = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean w(java.lang.String r8) {
        /*
            android.content.Context r0 = com.byazt.jz.sz.getContext()
            java.lang.String[] r4 = new java.lang.String[]{r8}
            r6 = 0
            r7 = 0
            java.lang.String r1 = "setting_rit"
            r2 = 0
            java.lang.String r3 = "rit=?"
            r5 = 0
            android.database.Cursor r8 = com.byazt.jnq.hp.query(r0, r1, r2, r3, r4, r5, r6, r7)
            if (r8 == 0) goto L23
            int r0 = r8.getCount()     // Catch: java.lang.Throwable -> L1e
            if (r0 <= 0) goto L23
            r0 = 1
            goto L24
        L1e:
            r0 = move-exception
            r8.close()
            throw r0
        L23:
            r0 = 0
        L24:
            if (r8 == 0) goto L29
            r8.close()
        L29:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oz.jx.w(java.lang.String):boolean");
    }

    public static String hp(int i2, String str) {
        if (jx == null || System.currentTimeMillis() - f24297j > 2000) {
            f24297j = System.currentTimeMillis();
            jx = j();
        }
        Map<Integer, String> map = jx;
        if (map == null || map.containsKey(Integer.valueOf(i2))) {
            try {
                String strJx = com.byazt.ymw.hp.jx(map.get(Integer.valueOf(i2)));
                return "null".equals(strJx) ? "" : strJx;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    public static JSONObject jx(String str) throws JSONException {
        int columnIndex;
        if (!hp()) {
            return null;
        }
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
        try {
            String string = (!cursorQuery.moveToNext() || (columnIndex = cursorQuery.getColumnIndex("preview_ads")) < 0) ? "" : cursorQuery.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(string));
                try {
                    cursorQuery.close();
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        } catch (Throwable unused2) {
        }
        try {
            cursorQuery.close();
        } catch (Throwable unused3) {
        }
        return null;
    }

    public static JSONObject l(String str) throws JSONException {
        int columnIndex;
        if (!hp()) {
            return null;
        }
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
        try {
            String string = (!cursorQuery.moveToNext() || (columnIndex = cursorQuery.getColumnIndex("config")) < 0) ? "" : cursorQuery.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(string));
                try {
                    cursorQuery.close();
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        } catch (Throwable unused2) {
        }
        try {
            cursorQuery.close();
        } catch (Throwable unused3) {
        }
        return null;
    }

    public static Map<String, String> hp(String str) throws JSONException {
        JSONObject jSONObjectL = l(str);
        if (jSONObjectL == null) {
            return null;
        }
        String strOptString = jSONObjectL.optString(n.f36450m);
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            try {
                JSONObject jSONObjectOptJSONObject = new JSONObject(strOptString).optJSONObject("headers");
                if (jSONObjectOptJSONObject == null) {
                    return null;
                }
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObjectOptJSONObject.optString(next));
                }
                return map;
            } catch (Exception unused) {
                return map;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void j(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("preview_ads", "");
            com.byazt.jnq.hp.update(sz.getContext(), "setting_rit", contentValues, "rit=?", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public static void jx(int i2, String str) {
        if (hp()) {
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "setting_global_info", null, "_id=?", new String[]{String.valueOf(i2)}, null, null, null);
            boolean z2 = cursorQuery != null && cursorQuery.getCount() > 0;
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused) {
                }
            }
            String strL = com.byazt.ymw.hp.l(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put(bz.f48985d, Integer.valueOf(i2));
            contentValues.put(f.a.f3244d, strL);
            if (z2) {
                com.byazt.jnq.hp.update(sz.getContext(), "setting_global_info", contentValues, "_id=?", new String[]{String.valueOf(i2)});
            } else {
                com.byazt.jnq.hp.insert(sz.getContext(), "setting_global_info", contentValues);
            }
        }
    }

    public static void l(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObjectJx;
        if ((jSONObject == null && TextUtils.isEmpty(str)) || (jSONObjectJx = jx(str)) == null) {
            return;
        }
        if (jSONObjectJx.has("preview_ads_save_time") && System.currentTimeMillis() - jSONObjectJx.optLong("preview_ads_save_time") > bg.f30873s) {
            j(str);
            return;
        }
        if (jSONObjectJx.has("image_mode")) {
            jSONObject.put("image_mode", jSONObjectJx.optString("image_mode"));
        }
        if (jSONObjectJx.has("preview_extra")) {
            jSONObject.put("preview_extra", jSONObjectJx.optString("preview_extra"));
        }
        if (jSONObjectJx.has("preview_ads")) {
            jSONObject.put("preview_ads", jSONObjectJx.optJSONObject("preview_ads"));
        }
    }

    public static void hp(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObjectL = l(str);
        if (jSONObjectL == null) {
            return;
        }
        String strOptString = jSONObjectL.optString("aid");
        String strOptString2 = jSONObjectL.optString("cid");
        String strOptString3 = jSONObjectL.optString(n.f36450m);
        if (!TextUtils.isEmpty(strOptString)) {
            jSONObject.put("ad_id", strOptString);
        }
        if (!TextUtils.isEmpty(strOptString2)) {
            jSONObject.put("creative_id", strOptString2);
        }
        if (TextUtils.isEmpty(strOptString3)) {
            return;
        }
        jSONObject.put(n.f36450m, strOptString3);
    }

    public static void l(int i2, String str) {
        if (hp()) {
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            try {
                com.byazt.jnq.hp.hp(sz.getContext(), "INSERT OR REPLACE INTO setting_base_info (_id, value) VALUES (" + i2 + ", '" + com.byazt.ymw.hp.l(str) + "')", "setting_base_info");
            } catch (Exception unused) {
            }
        }
    }

    public static void hp(String str, JSONObject jSONObject) {
        if (!hp() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        boolean z2 = cursorQuery != null && cursorQuery.getCount() > 0;
        if (cursorQuery != null) {
            try {
                cursorQuery.close();
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObjectHp = com.byazt.ymw.hp.hp(jSONObject);
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", str);
        contentValues.put(f.a.f3244d, jSONObjectHp.toString());
        if (z2) {
            com.byazt.jnq.hp.update(sz.getContext(), "setting_rit", contentValues, "rit=?", new String[]{str});
        } else {
            com.byazt.jnq.hp.insert(sz.getContext(), "setting_rit", contentValues);
        }
    }

    public static void hp(com.byazt.jt.l lVar) {
        if (hp()) {
            String strJ = lVar.j();
            if (w(strJ)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("img_width", lVar.a());
                    jSONObject.put("img_height", lVar.eb());
                    jSONObject.put("express_width", lVar.s());
                    jSONObject.put("express_height", lVar.q());
                    jSONObject.put(PointParamKey.AD_COUNT, lVar.jl());
                } catch (JSONException unused) {
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("rit", strJ);
                contentValues.put("slot", com.byazt.ymw.hp.l(jSONObject.toString()));
                com.byazt.jnq.hp.update(sz.getContext(), "setting_rit", contentValues, "rit=?", new String[]{strJ});
            }
        }
    }
}
