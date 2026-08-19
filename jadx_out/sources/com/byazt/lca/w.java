package com.byazt.lca;

import android.content.SharedPreferences;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public volatile String f22443a;
    public volatile String eb;
    public String hp;

    /* renamed from: u, reason: collision with root package name */
    public volatile String f22450u;
    public volatile int jx = -1;

    /* renamed from: j, reason: collision with root package name */
    public volatile long f22445j = -1;

    /* renamed from: w, reason: collision with root package name */
    public volatile float f22452w = -1.0f;

    /* renamed from: s, reason: collision with root package name */
    public volatile int f22449s = -1;

    /* renamed from: q, reason: collision with root package name */
    public volatile int f22448q = -1;

    /* renamed from: e, reason: collision with root package name */
    public volatile int f22444e = -1;
    public volatile int gu = -1;
    public volatile int jl = 0;
    public volatile int zy = -1;

    /* renamed from: k, reason: collision with root package name */
    public volatile int f22446k = -1;

    /* renamed from: v, reason: collision with root package name */
    public volatile int f22451v = -1;

    /* renamed from: l, reason: collision with root package name */
    public volatile com.byazt.ctq.w f22447l = com.byazt.ry.j.l(com.byazt.el.hp.j(), xs());

    @com.byazt.kj.hp(hp = {0, 1, 957, 8})
    public static class hp {
        public static w hp = new w();
    }

    private static String xs() {
        return "sp_exec_getad_config_bst";
    }

    public void u() {
        try {
            this.f22447l.clear();
        } catch (Throwable unused) {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 957, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public static class l {
        public Map<String, Object> hp = new HashMap();

        public l a(int i2) {
            if (w.hp().f22448q == i2) {
                return this;
            }
            w.hp().f22448q = i2;
            this.hp.put("spl_cache_expired", Integer.valueOf(i2));
            return this;
        }

        public l eb(int i2) {
            if (w.hp().jl == i2) {
                return this;
            }
            w.hp().jl = i2;
            this.hp.put("splash_render_timeout_backup", Integer.valueOf(i2));
            return this;
        }

        public l hp(long j2) {
            if (w.hp().f22445j == j2) {
                return this;
            }
            w.hp().f22445j = j2;
            this.hp.put("duration", Long.valueOf(j2));
            return this;
        }

        public l j(int i2) {
            if (w.hp().f22444e == i2) {
                return this;
            }
            this.hp.put("spl_thread_conf", Integer.valueOf(i2));
            return this;
        }

        public l jx(int i2) {
            if (w.hp().f22449s == i2) {
                return this;
            }
            w.hp().f22449s = i2;
            this.hp.put("spl_cache_conf", Integer.valueOf(i2));
            return this;
        }

        public l l(String str) {
            if (str != null && str.equals(w.hp().eb)) {
                return this;
            }
            w.hp().eb = str;
            Map<String, Object> map = this.hp;
            if (str == null) {
                str = "";
            }
            map.put("ab_test_param", str);
            return this;
        }

        public l s(int i2) {
            if (w.hp().zy == i2) {
                return this;
            }
            w.hp().zy = i2;
            this.hp.put("dl_storage_internal", Integer.valueOf(i2));
            return this;
        }

        public l w(int i2) {
            if (w.hp().gu == i2) {
                return this;
            }
            w.hp().gu = i2;
            this.hp.put("spl_common_conf", Integer.valueOf(i2));
            return this;
        }

        public l j(String str) {
            if (str != null && str.equals(w.hp().f22450u)) {
                return this;
            }
            w.hp().f22450u = str;
            this.hp.put("cache_strategy_splash", str);
            return this;
        }

        public l hp(int i2) {
            if (w.hp().jx == i2) {
                return this;
            }
            w.hp().jx = i2;
            this.hp.put("max", Integer.valueOf(i2));
            return this;
        }

        public l jx(String str) {
            if (str != null && str.equals(w.hp().hp)) {
                return this;
            }
            w.hp().hp = str;
            Map<String, Object> map = this.hp;
            if (str == null) {
                str = "";
            }
            map.put("drop_cache_black_conf", str);
            return this;
        }

        public l l(int i2) {
            if (w.hp().f22446k == i2) {
                return this;
            }
            w.hp().f22446k = i2;
            this.hp.put("cypher_version", Integer.valueOf(i2));
            return this;
        }

        public l hp(float f2) {
            if (w.hp().f22452w == f2) {
                return this;
            }
            w.hp().f22452w = f2;
            this.hp.put("aggMultiple", Float.valueOf(f2));
            return this;
        }

        public l hp(String str) {
            if (str != null && str.equals(w.hp().f22443a)) {
                return this;
            }
            w.hp().f22443a = str;
            Map<String, Object> map = this.hp;
            if (str == null) {
                str = "";
            }
            map.put("ab_test_version", str);
            return this;
        }

        public l hp(boolean z2) {
            this.hp.put("is_spl_cache_remove_change", Boolean.valueOf(z2));
            return this;
        }

        public l hp(JSONObject jSONObject) {
            int iOptInt;
            if (jSONObject == null || w.hp().f22451v == (iOptInt = jSONObject.optInt("splash_policy", 0))) {
                return this;
            }
            w.hp().f22451v = iOptInt;
            this.hp.put("splash_policy", Integer.valueOf(iOptInt));
            return this;
        }

        public void hp() {
            try {
                com.byazt.ctq.w wVar = w.hp().f22447l;
                SharedPreferences.Editor editorEdit = wVar.edit();
                if (editorEdit == null) {
                    for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            wVar.put(key, ((Boolean) value).booleanValue());
                        } else if (value instanceof Long) {
                            wVar.put(key, ((Long) value).longValue());
                        } else if (value instanceof Float) {
                            wVar.put(key, ((Float) value).floatValue());
                        } else if (value instanceof Integer) {
                            wVar.put(key, ((Integer) value).intValue());
                        } else if (value instanceof String) {
                            wVar.put(key, (String) value);
                        }
                    }
                    return;
                }
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
                editorEdit.commit();
            } catch (Exception unused) {
            }
        }
    }

    public boolean e() {
        return hp("is_spl_cache_remove_change", false);
    }

    public int gu() {
        if (this.f22449s == -1) {
            this.f22449s = hp("spl_cache_conf", 30);
        }
        return this.f22449s;
    }

    public int jl() {
        if (this.f22444e == -1) {
            this.f22444e = hp("spl_thread_conf", 1);
        }
        return this.f22444e;
    }

    public int k() {
        if (this.jl <= 0) {
            this.jl = hp("splash_render_timeout_backup", 100);
        }
        return this.jl;
    }

    public int q() {
        if (this.f22446k == -1) {
            this.f22446k = hp("cypher_version", 40001);
        }
        return this.f22446k;
    }

    public String v() {
        if (this.f22450u == null) {
            this.f22450u = hp("cache_strategy_splash", "");
        }
        return this.f22450u;
    }

    public int zy() {
        if (this.gu == -1) {
            this.gu = hp("spl_common_conf", 0);
        }
        return this.gu;
    }

    public String a() {
        if (this.eb == null) {
            this.eb = hp("ab_test_param", "");
        }
        return this.eb;
    }

    public void eb() {
        this.eb = "";
        this.f22443a = "";
        this.f22447l.remove("ab_test_version");
        this.f22447l.remove("ab_test_param");
    }

    public float j() {
        if (this.f22452w == -1.0f) {
            this.f22452w = hp("aggMultiple", -1.0f);
        }
        return this.f22452w;
    }

    public boolean s() {
        if (this.zy == -1) {
            this.zy = hp("dl_storage_internal", 1);
        }
        return this.zy == 1;
    }

    public String w() {
        if (this.f22443a == null) {
            this.f22443a = hp("ab_test_version", "");
        }
        return this.f22443a;
    }

    public int jx() {
        if (this.jx == -1) {
            this.jx = hp("max", 50);
        }
        return this.jx;
    }

    public long l() {
        if (this.f22445j == -1) {
            this.f22445j = hp("duration", 10000L);
        }
        return this.f22445j;
    }

    public static w hp() {
        return hp.hp;
    }

    public boolean hp(String str, boolean z2) {
        try {
            return this.f22447l.getBoolean(str, z2);
        } catch (Throwable unused) {
            return z2;
        }
    }

    public long hp(String str, long j2) {
        try {
            return this.f22447l.getLong(str, j2);
        } catch (Throwable unused) {
            return j2;
        }
    }

    public float hp(String str, float f2) {
        try {
            return this.f22447l.getFloat(str, f2);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public int hp(String str, int i2) {
        try {
            return this.f22447l.getInt(str, i2);
        } catch (Throwable unused) {
            return i2;
        }
    }

    public String hp(String str, String str2) {
        try {
            return this.f22447l.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
