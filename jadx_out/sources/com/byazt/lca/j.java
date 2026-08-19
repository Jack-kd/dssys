package com.byazt.lca;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.jz.sz;
import com.byazt.rz.PluginConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public volatile String f22421a;
    public volatile String cx;

    /* renamed from: e, reason: collision with root package name */
    public volatile String f22423e;
    public volatile String eb;
    public volatile String ec;
    public volatile String hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile String f22424j;
    public volatile String jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile String f22425k;

    /* renamed from: l, reason: collision with root package name */
    public volatile String f22426l;

    /* renamed from: n, reason: collision with root package name */
    public volatile String f22427n;
    public volatile JSONArray ns;

    /* renamed from: q, reason: collision with root package name */
    public volatile String f22428q;

    /* renamed from: s, reason: collision with root package name */
    public volatile String f22429s;
    public volatile String sz;

    /* renamed from: v, reason: collision with root package name */
    public volatile String f22431v;
    public volatile String vv;

    /* renamed from: w, reason: collision with root package name */
    public volatile String f22432w;
    public volatile int jl = -1;
    public volatile int zy = -1;

    /* renamed from: u, reason: collision with root package name */
    public volatile int f22430u = -1;
    public volatile int xs = -1;

    /* renamed from: b, reason: collision with root package name */
    public volatile int f22422b = -1;
    public volatile SharedPreferences gu = com.byazt.rz.l.l(sz.getContext(), ec(), 0);

    @com.byazt.kj.hp(hp = {0, 1, 957, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public static j hp = new j();
    }

    public static j hp() {
        return hp.hp;
    }

    private void sz() throws JSONException {
        try {
            this.sz = com.byazt.jz.a.hp().w();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, 7643);
            jSONObject.put("log_version", this.sz);
            hp("logsdk_version", jSONObject.toString());
        } catch (JSONException unused) {
        }
    }

    public String a(String str) {
        if (this.vv == null) {
            this.vv = l("extra_data", str);
        }
        return this.vv;
    }

    public String e() {
        if (this.eb == null) {
            this.eb = l("dev17", (String) null);
        }
        return this.eb;
    }

    public boolean eb(int i2) {
        return i2 == 3 || i2 == 4;
    }

    public String ec() {
        return "sp_exec_getad_config";
    }

    public String gu() {
        if (this.f22429s == null) {
            this.f22429s = l("dev18", (String) null);
        }
        return this.f22429s;
    }

    public String j(String str) {
        if (this.f22431v == null) {
            this.f22431v = l("keywords", str);
        }
        return this.f22431v;
    }

    public String jl() {
        if (this.f22428q == null) {
            this.f22428q = l("dev09", (String) null);
        }
        return this.f22428q;
    }

    public int jx() {
        if (this.jl == -1) {
            this.jl = l("live_ad_clk_cnt", 0);
        }
        return this.jl;
    }

    public String k() {
        if (this.f22423e == null) {
            this.f22423e = l("dev11", (String) null);
        }
        return this.f22423e;
    }

    public SharedPreferences l() {
        return this.gu;
    }

    public String q(String str) {
        if (this.hp == null) {
            this.hp = l("dev01", str);
        }
        return this.hp;
    }

    public String s(String str) {
        if (this.ec == null) {
            this.ec = l("extra_internal_data", str);
        }
        return this.ec;
    }

    public int u() {
        return l("sp_device_app_direction", -1);
    }

    public JSONArray v() {
        String strL;
        if (this.ns == null && (strL = l("dev12", (String) null)) != null) {
            try {
                this.ns = new JSONArray(strL);
            } catch (JSONException unused) {
            }
        }
        return this.ns;
    }

    public void vv() {
        try {
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void w(String str) {
        if (str == null || !str.equals(this.vv)) {
            this.vv = str;
            hp("extra_data", str);
        }
    }

    public String xs() {
        if (this.cx == null) {
            this.cx = l("dev16", "");
        }
        return this.cx;
    }

    public String zy() {
        if (this.f22427n == null) {
            this.f22427n = l("dev10", (String) null);
        }
        return this.f22427n;
    }

    public void eb(String str) {
        if (str == null || !str.equals(this.ec)) {
            this.ec = str;
            hp("extra_internal_data", str);
        }
    }

    public void hp(int i2) {
        if (this.jl == i2) {
            return;
        }
        this.jl = i2;
        hp("live_ad_clk_cnt", i2);
    }

    public void l(String str) {
        this.f22425k = str;
        hp("dev03", str);
    }

    @com.byazt.kj.hp(hp = {0, 1, 957, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l {
        public Map<String, Object> hp = new HashMap();

        public l a(String str) {
            if (str == null || str.equals(j.hp().f22432w)) {
                return this;
            }
            j.hp().f22432w = str;
            this.hp.put("dev07", str);
            return this;
        }

        public l e(String str) {
            if (str == null || str.equals(j.hp().f22428q)) {
                return this;
            }
            j.hp().f22428q = str;
            this.hp.put("dev09", str);
            return this;
        }

        public l eb(String str) {
            if (str == null || str.equals(j.hp().f22421a)) {
                return this;
            }
            j.hp().f22421a = str;
            this.hp.put("dev08", str);
            return this;
        }

        public l hp(String str) {
            if (str == null || str.equals(j.hp().hp)) {
                return this;
            }
            j.hp().hp = str;
            this.hp.put("dev01", str);
            return this;
        }

        public l j(String str) {
            if (str == null || str.equals(j.hp().f22424j)) {
                return this;
            }
            j.hp().f22424j = str;
            this.hp.put("dev05", str);
            return this;
        }

        public l jx(String str) {
            if (str == null || str.equals(j.hp().jx)) {
                return this;
            }
            j.hp().jx = str;
            this.hp.put("dev04", str);
            return this;
        }

        public l l(String str) {
            if (str == null || str.equals(j.hp().f22426l)) {
                return this;
            }
            j.hp().f22426l = str;
            this.hp.put("dev02", com.byazt.ymw.hp.l(str));
            return this;
        }

        public l q(String str) {
            if (str == null || str.equals(j.hp().f22429s)) {
                return this;
            }
            j.hp().f22429s = str;
            this.hp.put("dev18", str);
            return this;
        }

        public l s(String str) {
            if (str == null || str.equals(j.hp().eb)) {
                return this;
            }
            j.hp().eb = str;
            this.hp.put("dev17", str);
            return this;
        }

        public l w(String str) {
            if (str == null || str.equals(j.hp().f22423e)) {
                return this;
            }
            j.hp().f22423e = str;
            this.hp.put("dev11", str);
            return this;
        }

        public void hp() {
            try {
                if (jx.hp().l()) {
                    String strEc = j.hp().ec();
                    for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            com.byazt.fgx.l.hp(strEc, key, (Boolean) value);
                        } else if (value instanceof Long) {
                            com.byazt.fgx.l.hp(strEc, key, (Long) value);
                        } else if (value instanceof Float) {
                            com.byazt.fgx.l.hp(strEc, key, (Float) value);
                        } else if (value instanceof Integer) {
                            com.byazt.fgx.l.hp(strEc, key, (Integer) value);
                        } else if (value instanceof String) {
                            com.byazt.fgx.l.hp(strEc, key, (String) value);
                        }
                    }
                    return;
                }
                SharedPreferences.Editor editorEdit = j.hp().l().edit();
                for (Map.Entry<String, Object> entry2 : this.hp.entrySet()) {
                    String key2 = entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof Boolean) {
                        editorEdit.putBoolean(key2, ((Boolean) value2).booleanValue());
                    } else if (value2 instanceof Long) {
                        editorEdit.putLong(key2, ((Long) value2).longValue());
                    } else if (value2 instanceof Float) {
                        editorEdit.putFloat(key2, ((Float) value2).floatValue());
                    } else if (value2 instanceof Integer) {
                        editorEdit.putInt(key2, ((Integer) value2).intValue());
                    } else if (value2 instanceof String) {
                        editorEdit.putString(key2, (String) value2);
                    }
                }
                editorEdit.apply();
            } catch (Exception unused) {
            }
        }
    }

    public String a() {
        if (this.jx == null) {
            this.jx = l("dev04", (String) null);
        }
        return this.jx;
    }

    public void e(String str) {
        if (str == null || str.equals(this.f22427n)) {
            return;
        }
        this.f22427n = str;
        hp("dev10", str);
    }

    public void gu(String str) {
        if (str == null || !str.equals(this.cx)) {
            this.cx = str;
            hp("dev16", str);
        }
    }

    public int j() {
        if (this.f22430u == -1) {
            this.f22430u = l("age_group", Integer.MIN_VALUE);
        }
        return this.f22430u;
    }

    public void jx(String str) {
        if (str == null || !str.equals(this.f22431v)) {
            this.f22431v = str;
            hp("keywords", str);
        }
    }

    public void l(int i2) {
        if (i2 == this.f22430u) {
            return;
        }
        this.f22430u = i2;
        hp("age_group", i2);
    }

    public String q() {
        if (this.f22421a == null) {
            this.f22421a = l("dev08", (String) null);
        }
        return this.f22421a;
    }

    public String s() {
        if (this.f22432w == null) {
            this.f22432w = l("dev07", (String) null);
        }
        return this.f22432w;
    }

    public String w(int i2) {
        if (TextUtils.isEmpty(this.sz)) {
            try {
                String strL = l("logsdk_version", "");
                if (!TextUtils.isEmpty(strL)) {
                    JSONObject jSONObject = new JSONObject(strL);
                    int iOptInt = jSONObject.optInt(PluginConstants.KEY_PLUGIN_VERSION);
                    this.sz = jSONObject.optString("log_version");
                    if (iOptInt != 7643 || TextUtils.isEmpty(this.sz)) {
                        sz();
                    }
                } else {
                    sz();
                }
            } catch (Exception unused) {
            }
        }
        return this.sz;
    }

    public String eb() {
        if (this.f22424j == null) {
            this.f22424j = l("dev05", (String) null);
        }
        return this.f22424j;
    }

    public String hp(String str) {
        if (this.f22425k == null) {
            this.f22425k = l("dev03", str);
        }
        return this.f22425k;
    }

    public void a(int i2) {
        hp("sp_device_app_direction", i2);
    }

    public int j(int i2) {
        if (this.xs == -1) {
            this.xs = l("sdk_theme_status", i2);
        }
        return this.xs;
    }

    public void jx(int i2) {
        if (i2 == this.xs) {
            return;
        }
        this.xs = i2;
        hp("sdk_theme_status", i2);
    }

    public void l(boolean z2) {
        int i2 = z2 ? 1 : 2;
        if (this.zy != i2) {
            this.zy = i2;
            hp("is_use_mediation", i2);
        }
    }

    public void s(int i2) {
        if (this.f22422b == i2) {
            return;
        }
        this.f22422b = i2;
        hp("dev_level", i2);
    }

    public void hp(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        if (jSONArray.toString().equals(this.ns == null ? null : this.ns.toString())) {
            return;
        }
        this.ns = jSONArray;
        hp("dev12", jSONArray.toString());
    }

    public String jx(String str, long j2) {
        String strL;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            strL = l(str, "");
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(strL);
        if (System.currentTimeMillis() - jSONObject.getLong("time") <= j2) {
            return jSONObject.getString(f.a.f3244d);
        }
        return null;
    }

    public boolean l(String str, boolean z2) {
        try {
            if (jx.hp().l()) {
                return com.byazt.fgx.l.hp(ec(), str, z2);
            }
            return l().getBoolean(str, z2);
        } catch (Throwable unused) {
            return z2;
        }
    }

    public boolean hp(boolean z2) {
        if (this.zy == -1) {
            this.zy = l("is_use_mediation", z2 ? 1 : 2);
        }
        return this.zy == 1;
    }

    public long l(String str, long j2) {
        try {
            if (jx.hp().l()) {
                return com.byazt.fgx.l.hp(ec(), str, j2);
            }
            return l().getLong(str, j2);
        } catch (Throwable unused) {
            return j2;
        }
    }

    public String w() {
        if (this.f22426l == null) {
            this.f22426l = com.byazt.ymw.hp.jx(l("dev02", (String) null));
        }
        return this.f22426l;
    }

    public void hp(String str, boolean z2) {
        try {
            if (jx.hp().l()) {
                com.byazt.fgx.l.hp(ec(), str, Boolean.valueOf(z2));
                return;
            }
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.putBoolean(str, z2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public int l(String str, int i2) {
        try {
            if (jx.hp().l()) {
                return com.byazt.fgx.l.hp(ec(), str, i2);
            }
            return l().getInt(str, i2);
        } catch (Throwable unused) {
            return i2;
        }
    }

    public void jx(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f.a.f3244d, str2);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("p_version", 7643);
            hp(str, jSONObject.toString());
        } catch (JSONException unused) {
        }
    }

    public String l(String str, String str2) {
        try {
            if (jx.hp().l()) {
                return com.byazt.fgx.l.l(ec(), str, str2);
            }
            return l().getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public void hp(String str, long j2) {
        try {
            if (jx.hp().l()) {
                com.byazt.fgx.l.hp(ec(), str, Long.valueOf(j2));
                return;
            }
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.putLong(str, j2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void hp(String str, int i2) {
        try {
            if (jx.hp().l()) {
                com.byazt.fgx.l.hp(ec(), str, Integer.valueOf(i2));
                return;
            }
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.putInt(str, i2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void hp(String str, String str2) {
        try {
            if (jx.hp().l()) {
                com.byazt.fgx.l.hp(ec(), str, str2);
                return;
            }
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }
}
