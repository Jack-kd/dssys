package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.sigmob.sdk.base.common.C1244a;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1626})
/* loaded from: classes3.dex */
public class ea {
    public static long hp = 27000;
    public static int jx;

    /* renamed from: l, reason: collision with root package name */
    public static int f27246l;

    /* renamed from: a, reason: collision with root package name */
    public boolean f27247a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f27248b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f27249d;
    public ArrayList<bu> di;
    public int dy;

    /* renamed from: e, reason: collision with root package name */
    public double f27250e;
    public boolean eb;
    public double ec;
    public String gu;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public String f27251j;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public int f27252k;
    public int lv;

    /* renamed from: n, reason: collision with root package name */
    public int f27253n;
    public int ns;
    public float nu;

    /* renamed from: o, reason: collision with root package name */
    public su f27254o;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27255q;

    /* renamed from: s, reason: collision with root package name */
    public double f27256s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f27257u;
    public boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public int f27258v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public int f27259w;
    public boolean wv;
    public double xs;
    public int zy;

    public ea(JSONObject jSONObject) {
        this.ns = 0;
        this.cx = false;
        this.f27248b = false;
        this.di = new ArrayList<>();
        this.nu = 1.0f;
        this.lv = 0;
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward");
        if (jSONObjectOptJSONObject != null) {
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("retain_dialog_config");
            if (jSONArrayOptJSONArray != null) {
                this.di = new ArrayList<>();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject2 != null) {
                        this.di.add(new bu(jSONObjectOptJSONObject2));
                    }
                }
            }
            this.f27254o = new su(jSONObjectOptJSONObject);
            this.wv = jSONObjectOptJSONObject.optBoolean("endcard_transform_enabled", false);
            this.lv = jSONObjectOptJSONObject.optInt("video_no_play_start", 0);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("reward_data");
        if (jSONObjectOptJSONObject3 != null) {
            this.f27259w = jSONObjectOptJSONObject3.optInt("reward_amount", 0);
            this.f27251j = jSONObjectOptJSONObject3.optString("reward_name", "");
            this.f27247a = jSONObjectOptJSONObject3.optBoolean("reward_info_show", false);
            this.zy = jSONObjectOptJSONObject3.optInt("reward_back_type", 0);
            this.f27252k = jSONObjectOptJSONObject3.optInt("reward_backup_timing", 0);
            this.f27258v = jSONObjectOptJSONObject3.optInt("reward_backup_duration", Integer.MAX_VALUE);
            this.hq = jSONObjectOptJSONObject3.optInt("reward_is_callback", 0);
            this.ud = jSONObjectOptJSONObject3.optBoolean("reward_need_click", false);
            this.nu = (float) jSONObjectOptJSONObject3.optDouble("reward_speed_time", 1.0d);
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("reward_advanced_config");
            if (jSONObjectOptJSONObject4 != null) {
                JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("easy_playable");
                if (jSONObjectOptJSONObject5 != null) {
                    this.eb = jSONObjectOptJSONObject5.optBoolean(cl.f49062q);
                    double dOptDouble = jSONObjectOptJSONObject5.optDouble("propose_reward", 0.0d);
                    this.f27256s = dOptDouble;
                    if (dOptDouble < 0.0d) {
                        this.f27256s = 0.0d;
                    }
                }
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject4.optJSONObject(C1244a.f35687o);
                if (jSONObjectOptJSONObject6 != null) {
                    this.f27255q = jSONObjectOptJSONObject6.optBoolean(cl.f49062q);
                    double dOptDouble2 = jSONObjectOptJSONObject6.optDouble("propose_reward", 0.0d);
                    this.f27250e = dOptDouble2;
                    if (dOptDouble2 < 0.0d) {
                        this.f27250e = 0.0d;
                    }
                    this.gu = jSONObjectOptJSONObject6.optString("tip_toast");
                    this.jl = jSONObjectOptJSONObject6.optInt("min_duration");
                }
                JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("playable_interactive");
                if (jSONObjectOptJSONObject7 != null) {
                    this.f27257u = jSONObjectOptJSONObject7.optBoolean(cl.f49062q);
                    this.xs = jSONObjectOptJSONObject7.optDouble("propose_reward", 0.0d);
                }
                JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("click_landing");
                if (jSONObjectOptJSONObject8 != null) {
                    this.vv = jSONObjectOptJSONObject8.optBoolean(cl.f49062q);
                    this.ec = jSONObjectOptJSONObject8.optDouble("propose_reward", 0.0d);
                    this.sz = jSONObjectOptJSONObject8.optInt("landing_view_time", 5);
                }
            }
        }
        this.f27253n = jSONObject.optInt("reward_full_play_time", 30);
        this.ns = jSONObject.optInt("reward_full_time_type", 0);
        this.f27249d = jSONObject.optBoolean("interstitial_bg_transparent", false);
        this.dy = jSONObject.optInt("template_sign", 0);
        this.cx = jSONObject.optBoolean("__is_use_local_time", false);
        this.f27248b = jSONObject.optBoolean("__is_click_landing_reward", false);
    }

    public static double a(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0.0d;
        }
        return eaVarHq.f27256s;
    }

    public static boolean b(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.wv;
    }

    public static boolean cx(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null) {
            return eaVarHq.f27249d;
        }
        return false;
    }

    public static boolean d(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.ud;
    }

    public static boolean di(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq != null && eaVarHq.hq == 1;
    }

    public static int e(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return KSImageLoader.InnerImageLoadingListener.MAX_DURATION;
        }
        int iMax = Math.max(eaVarHq.jl, 30);
        return (iMax <= 60 ? iMax : 30) * 1000;
    }

    public static boolean eb(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.f27255q;
    }

    public static boolean ec(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null && eaVarHq.f27248b) {
            return zy(mpVar);
        }
        return false;
    }

    public static boolean gu(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.f27257u;
    }

    public static void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                hp = jSONObjectOptJSONObject.optLong("reward_time_limited", 27000L);
                f27246l = jSONObjectOptJSONObject.optInt("reward_force_close_max_count", 0);
                jx = jSONObjectOptJSONObject.optInt("reward_local_countdown_close_style", 0);
            } catch (Exception unused) {
            }
        }
    }

    private static ea hq(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.df();
    }

    public static boolean j(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq != null && eaVarHq.zy == 1;
    }

    public static double jl(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0.0d;
        }
        return eaVarHq.xs;
    }

    public static boolean jx(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.f27247a;
    }

    public static int k(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 5;
        }
        return Math.max(5, eaVarHq.sz);
    }

    public static void l(com.byazt.ctq.w wVar) {
        hp = wVar.get("reward_time_limited", 27000L);
        f27246l = wVar.get("reward_force_close_max_count", 0);
        jx = wVar.get("reward_local_countdown_close_style", 0);
    }

    public static boolean n(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq != null && eaVarHq.f27252k == 1;
    }

    public static su ns(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null) {
            return eaVarHq.f27254o;
        }
        return null;
    }

    public static float o(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 1.0f;
        }
        return eaVarHq.nu;
    }

    public static String q(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq == null ? "" : TextUtils.isEmpty(eaVarHq.gu) ? "别急着跳过，继续观看完整视频，可获得更多额外奖励～" : eaVarHq.gu;
    }

    public static double s(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0.0d;
        }
        return eaVarHq.f27250e;
    }

    public static ArrayList<bu> sz(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq != null ? eaVarHq.di : new ArrayList<>();
    }

    public static int u(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0;
        }
        return eaVarHq.ns;
    }

    public static int v(mp mpVar) {
        int i2;
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null && (i2 = eaVarHq.f27253n) >= 10 && i2 <= 60) {
            return i2;
        }
        return 30;
    }

    public static boolean vv(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        return eaVarHq != null && eaVarHq.cx && u(mpVar) == 1;
    }

    public static boolean w(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.eb;
    }

    public static int wv(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0;
        }
        return eaVarHq.dy;
    }

    public static boolean xs(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null && eaVarHq.cx) {
            return ec.j(mpVar) || u(mpVar) == 1 || u(mpVar) == 2;
        }
        return false;
    }

    public static boolean zy(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return false;
        }
        return eaVarHq.vv;
    }

    public static boolean jx() {
        return jx == 1;
    }

    public static boolean jx(mp mpVar, boolean z2) {
        ea eaVarHq = hq(mpVar);
        return (eaVarHq != null && z2 && eaVarHq.lv == 1) ? false : true;
    }

    public void l(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            ArrayList<bu> arrayList = this.di;
            if (arrayList != null && arrayList.size() != 0) {
                ArrayList<bu> arrayList2 = this.di;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    bu buVar = arrayList2.get(i2);
                    i2++;
                    jSONArray.put(buVar.hp());
                }
            }
            jSONObject2.put("retain_dialog_config", jSONArray);
            su suVar = this.f27254o;
            if (suVar != null) {
                suVar.hp(jSONObject2);
            }
            jSONObject2.put("endcard_transform_enabled", this.wv);
            jSONObject2.put("video_no_play_start", this.lv);
            jSONObject.put("reward", jSONObject2);
        } catch (JSONException unused) {
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("reward_name", this.f27251j);
            jSONObject3.put("reward_amount", this.f27259w);
            jSONObject3.put("reward_info_show", this.f27247a);
            jSONObject3.put("reward_back_type", this.zy);
            jSONObject3.put("reward_backup_timing", this.f27252k);
            jSONObject3.put("reward_backup_duration", this.f27258v);
            jSONObject3.put("reward_is_callback", this.hq);
            jSONObject3.put("reward_need_click", this.ud);
            jSONObject3.put("reward_speed_time", this.nu);
            JSONObject jSONObject4 = new JSONObject();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(cl.f49062q, this.eb);
            jSONObject5.put("propose_reward", this.f27256s);
            jSONObject4.put("easy_playable", jSONObject5);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(cl.f49062q, this.f27255q);
            jSONObject6.put("propose_reward", this.f27250e);
            jSONObject6.put("tip_toast", this.gu);
            jSONObject6.put("min_duration", this.jl);
            jSONObject4.put(C1244a.f35687o, jSONObject6);
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put(cl.f49062q, this.f27257u);
            jSONObject7.put("propose_reward", this.xs);
            jSONObject4.put("playable_interactive", jSONObject7);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put(cl.f49062q, this.vv);
            jSONObject8.put("propose_reward", this.ec);
            jSONObject8.put("landing_view_time", this.sz);
            jSONObject4.put("click_landing", jSONObject8);
            jSONObject3.put("reward_advanced_config", jSONObject4);
            jSONObject.put("reward_data", jSONObject3);
        } catch (JSONException unused2) {
        }
        try {
            jSONObject.put("reward_full_play_time", this.f27253n);
            jSONObject.put("reward_full_time_type", this.ns);
            jSONObject.put("interstitial_bg_transparent", this.f27249d);
            jSONObject.put("template_sign", this.dy);
            jSONObject.put("__is_use_local_time", this.cx);
            jSONObject.put("__is_click_landing_reward", this.f27248b);
        } catch (JSONException unused3) {
        }
    }

    public static void hp(com.byazt.ctq.w wVar) {
        wVar.put("reward_time_limited", hp);
        wVar.put("reward_force_close_max_count", f27246l);
        wVar.put("reward_local_countdown_close_style", jx);
    }

    public static String hp(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return "";
        }
        return eaVarHq.f27251j;
    }

    public static long hp() {
        return hp;
    }

    public static float hp(mp mpVar, int i2) {
        double dA;
        if (i2 == 0) {
            return 1.0f;
        }
        if (i2 == 1) {
            dA = a(mpVar);
        } else if (i2 == 2) {
            dA = s(mpVar);
        } else {
            if (i2 != 3) {
                return 0.0f;
            }
            dA = jl(mpVar);
        }
        return (float) dA;
    }

    public static void hp(mp mpVar, boolean z2) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null) {
            eaVarHq.cx = z2;
        }
    }

    public static int l(mp mpVar) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq == null) {
            return 0;
        }
        return eaVarHq.f27259w;
    }

    public static long l() {
        return f27246l;
    }

    public static void l(mp mpVar, boolean z2) {
        ea eaVarHq = hq(mpVar);
        if (eaVarHq != null) {
            eaVarHq.f27248b = z2;
        }
    }

    public static int l(mp mpVar, int i2) {
        int i3;
        ea eaVarHq = hq(mpVar);
        return (eaVarHq != null && (i3 = eaVarHq.f27258v) > 0) ? Math.min(i2, i3) : i2;
    }
}
