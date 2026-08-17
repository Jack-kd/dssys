package com.byazt.qfg;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.byazt.xci.f;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.ru;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 94})
/* loaded from: classes3.dex */
public class eb {
    public static volatile boolean hp = false;

    public static void hp(Context context, ru ruVar, mp mpVar, boolean z2, long j2) throws JSONException {
        if (context == null || mpVar == null || ruVar == null || !sz.l().df()) {
            return;
        }
        boolean z3 = ruVar.j() == 1;
        boolean z4 = ruVar.s() == 1;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("splash_load_type", ruVar.hp());
            jSONObject.put("server_load_type", ruVar.l());
            jSONObject.put("tmax_type", ruVar.lv());
            if (z2) {
                jSONObject.put("splash_final_type", "cache_ad");
            } else {
                jSONObject.put("splash_final_type", "real_time_ad");
            }
            jSONObject.put("active_type", ruVar.jx());
            jSONObject.put("splash_creative_type", ruVar.j());
            if (ruVar.cx() > 0) {
                if (ruVar.cx() == 22) {
                    jSONObject.put("check_cloud_error_code", ruVar.wv());
                }
                jSONObject.put("splash_get_cache_error_code", ruVar.cx());
            }
            if (z3) {
                if (z4) {
                    jSONObject.put("cache_image_duration", ruVar.eb());
                } else {
                    jSONObject.put("download_image_duration", ruVar.a());
                    jSONObject.put("download_client_start_time", ruVar.u());
                    jSONObject.put("download_net_time", ruVar.xs());
                    jSONObject.put("download_client_end_time", ruVar.vv());
                    jSONObject.put("img_conttype", ruVar.d());
                    jSONObject.put("img_net_bframe_time", ruVar.hq());
                    jSONObject.put("img_net_aframe_time", ruVar.ud());
                }
                if (!z2) {
                    jSONObject.put("client_start_time", ruVar.jl());
                    jSONObject.put("network_time", ruVar.zy());
                    jSONObject.put("sever_time", ruVar.k());
                    jSONObject.put("client_end_time", ruVar.v());
                }
                jSONObject.put("load_duration", ruVar.w());
                jSONObject.put("image_resolution", ruVar.e());
                jSONObject.put("image_cachetype", ruVar.s());
                jSONObject.put("image_size", ruVar.q());
            }
            if (ruVar.b() > 0) {
                jSONObject.put("real_user_duration", j2 - ruVar.b());
            }
            jSONObject.put("sdk_parallel_load", 1);
            jSONObject.put("switch_thread_time", ruVar.di());
            jSONObject.put("on_call_back_time", ruVar.o());
            jSONObject.put("load_suc_time", ruVar.nu());
            jSONObject.put("is_boost", com.byazt.wu.hp.w());
        } catch (Exception unused) {
        }
        com.byazt.jdb.j.hp(mpVar, "splash_ad", "splash_ad_loadtime", j2 - ruVar.sz(), jSONObject);
    }

    public static void j(ru ruVar, long j2) {
        if (ruVar != null) {
            ruVar.u(System.currentTimeMillis() - j2);
        }
    }

    public static void jx(ru ruVar, long j2) {
        if (ruVar == null) {
            return;
        }
        ruVar.gu(j2);
    }

    public static void l(ru ruVar, long j2) {
        if (ruVar == null) {
            return;
        }
        ruVar.jx(j2);
    }

    public static void l(mp mpVar, com.byazt.vu.j jVar) throws JSONException {
        if (mpVar == null || jVar == null || !sz.l().df()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_material_duration", jVar.j());
            jSONObject.put("load_resource_duration", jVar.w());
            jSONObject.put("render_duration", jVar.a());
            jSONObject.put("ren_seq", jVar.l());
            jSONObject.put("real_ren_seq", jVar.jx());
            jSONObject.put("final_t", jVar.s() ? "cache_ad" : "real_time_ad");
            jSONObject.put("load_t", jVar.q());
            jSONObject.put("meta_load_Optimization", mpVar.vt());
            jSONObject.put("serial_render", jVar.e());
        } catch (Exception unused) {
        }
        com.byazt.jdb.j.jx(mpVar, "splash_ad", "splash_total_duration", jVar.eb(), jSONObject);
    }

    public static void hp(ru ruVar) {
        if (ruVar == null) {
            return;
        }
        ruVar.hp(System.currentTimeMillis() - ruVar.sz());
    }

    public static void hp(ru ruVar, ru ruVar2) {
        if (ruVar == null || ruVar2 == null) {
            return;
        }
        ruVar.jl(System.currentTimeMillis());
        ruVar2.jl(System.currentTimeMillis());
        if (vv.jx.get()) {
            ruVar.jx(0);
            ruVar2.jx(0);
            vv.jx.set(false);
        } else {
            ruVar.jx(1);
            ruVar2.jx(1);
        }
    }

    public static void hp(ru ruVar, long j2) {
        if (ruVar == null) {
            return;
        }
        ruVar.l(j2);
    }

    public static void hp(ru ruVar, com.byazt.vu.s sVar) {
        if (ruVar == null || sVar == null) {
            return;
        }
        if (sVar.w()) {
            ruVar.j(2);
        } else {
            ruVar.j(1);
        }
    }

    public static void hp(ru ruVar, boolean z2) {
        if (ruVar == null) {
            return;
        }
        if (z2) {
            ruVar.w(1);
        } else {
            ruVar.w(2);
        }
    }

    public static void hp(ru ruVar, com.byazt.pjc.l lVar, Map<String, String> map) throws JSONException {
        if (lVar == null || ruVar == null) {
            return;
        }
        int iL = lVar.l();
        if (ruVar.q() == 0.0d) {
            ruVar.hp(iL / 1024.0f);
        }
        Bitmap bitmapHp = lVar.hp();
        if (bitmapHp != null && TextUtils.isEmpty(ruVar.e())) {
            ruVar.hp(bitmapHp.getWidth() + "X" + bitmapHp.getHeight());
        }
        if (map == null || map.size() <= 0 || ruVar.gu() != null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (Exception unused) {
                }
            }
        }
        ruVar.hp(jSONObject);
    }

    public static void hp(ru ruVar, com.byazt.vu.a aVar) {
        if (ruVar == null || aVar == null) {
            return;
        }
        long jA = aVar.a();
        long jS = aVar.s();
        long jEb = aVar.eb();
        long jQ = aVar.q();
        ruVar.j(jA);
        ruVar.w(jEb);
        ruVar.a(jS);
        ruVar.eb(jQ);
    }

    public static void hp(mp mpVar, ru ruVar, com.byazt.vu.s sVar) throws JSONException {
        if (mpVar == null || ruVar == null || sVar == null || sVar.w() || ruVar.s() == 1 || !sz.l().df()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("image_size", ruVar.q());
            jSONObject.put("image_resolution", ruVar.e());
            jSONObject.put("download_client_start_time", ruVar.u());
            jSONObject.put("download_net_time", ruVar.xs());
            jSONObject.put("download_client_end_time", ruVar.vv());
        } catch (Exception unused) {
        }
        com.byazt.jdb.j.hp(mpVar, "splash_ad", "download_image_duration", System.currentTimeMillis() - ruVar.ec(), jSONObject);
    }

    public static void hp(ru ruVar, com.byazt.vu.s sVar, long j2) {
        if (ruVar == null || sVar == null) {
            return;
        }
        long jEb = sVar.eb();
        ruVar.e(j2 - jEb);
        ruVar.sz(sVar.s() - jEb);
    }

    public static void hp(boolean z2, mp mpVar, com.byazt.jt.l lVar, final com.byazt.vu.eb ebVar) {
        if (lVar == null || ebVar == null) {
            return;
        }
        final com.byazt.jlb.l lVarHp = hp(lVar, z2 ? 4 : 3, mpVar);
        if (lVarHp == null) {
            return;
        }
        k.hp().jx(new com.byazt.fq.hp() { // from class: com.byazt.qfg.eb.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                int iEb;
                int iJ;
                JSONObject jSONObject = new JSONObject();
                com.byazt.vu.eb ebVar2 = ebVar;
                if (ebVar2 != null) {
                    iEb = ebVar2.eb();
                    iJ = ebVar.j();
                } else {
                    iEb = 1;
                    iJ = -1;
                }
                try {
                    jSONObject.put("if_have_cache", iEb);
                    jSONObject.put("if_have_rt_ads", iJ);
                } catch (Throwable unused) {
                }
                return lVarHp.l(jSONObject.toString());
            }
        });
    }

    private static com.byazt.jlb.l hp(com.byazt.jt.l lVar, int i2, mp mpVar) {
        String strJ;
        String strEb;
        String strW_;
        if (mpVar != null) {
            strJ = mpVar.j();
            strW_ = mpVar.w_();
            strEb = ky.xs(mpVar);
        } else {
            strJ = null;
            strEb = null;
            strW_ = null;
        }
        if (TextUtils.isEmpty(strEb)) {
            strEb = ky.eb();
        }
        com.byazt.jlb.l lVarJx = com.byazt.jlb.l.l().a(strEb).hp(i2).jx(lVar.j());
        if (strJ != null) {
            lVarJx.j(strJ);
        }
        if (strW_ != null) {
            lVarJx.s(strW_);
        }
        return lVarJx;
    }

    public static void hp(final com.byazt.jt.l lVar, final long j2) {
        if (lVar == null) {
            return;
        }
        k.hp().hp(new com.byazt.fq.hp() { // from class: com.byazt.qfg.eb.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("publisher_timeout_control", j2);
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp(3).jx(lVar.j()).a(ky.eb()).l(jSONObject.toString());
            }
        });
    }

    public static void hp(ru ruVar, com.byazt.vu.s sVar, long j2, mp mpVar) throws JSONException {
        if (sVar == null || ruVar == null || mpVar == null) {
            return;
        }
        if (!sVar.w()) {
            s.hp(j2, false, true, mpVar, 0L, "loadSuccess");
            if (!sVar.a()) {
                hp(ruVar, SystemClock.elapsedRealtime() - j2);
                com.byazt.jdb.j.hp(mpVar, "splash_ad", SystemClock.elapsedRealtime() - j2);
            } else {
                l(ruVar, SystemClock.elapsedRealtime() - j2);
            }
        }
        hp(ruVar, sVar.a());
        hp(ruVar, sVar.j(), sVar.q());
        hp(ruVar, sVar, System.currentTimeMillis());
        hp(ruVar, sVar.zy());
    }

    public static void hp(ru ruVar, String str) {
        if (ruVar == null) {
            return;
        }
        ruVar.l(str);
    }

    public static void hp(boolean z2, mp mpVar, com.byazt.jt.l lVar, final boolean z3, final boolean z4) {
        if (mpVar == null || lVar == null) {
            return;
        }
        final com.byazt.jlb.l lVarHp = hp(lVar, z2 ? 4 : 3, mpVar);
        if (lVarHp == null) {
            return;
        }
        k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.qfg.eb.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!z4) {
                        jSONObject.put("image_CacheType", z3 ? 1 : 2);
                    }
                } catch (Throwable unused) {
                }
                return lVarHp.l(jSONObject.toString());
            }
        });
    }

    public static void hp(boolean z2, mp mpVar, com.byazt.jt.l lVar) {
        if (mpVar == null || lVar == null) {
            return;
        }
        final com.byazt.jlb.l lVarHp = hp(lVar, z2 ? 4 : 3, mpVar);
        if (lVarHp == null) {
            return;
        }
        k.hp().j(new com.byazt.fq.hp() { // from class: com.byazt.qfg.eb.4
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return lVarHp;
            }
        });
    }

    public static void hp(mp mpVar, com.byazt.vu.j jVar) throws JSONException {
        if (jVar == null || mpVar == null || !sz.l().df()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_control", jVar.hp());
            jSONObject.put("render_sequence", jVar.l());
            jSONObject.put("real_render_sequence", jVar.jx());
        } catch (Exception unused) {
        }
        com.byazt.jdb.j.l(mpVar, "splash_ad", "splash_render_duration", jVar.a(), jSONObject);
    }

    public static void hp(mp mpVar, com.byazt.vu.j jVar, com.byazt.vu.q qVar) {
        if (mpVar == null || qVar == null) {
            return;
        }
        if (hd.hp(mpVar) == 1) {
            com.byazt.kl.hp.hp("Splash_FullLink", "自渲染 ");
            jVar.jx(99);
        } else if (qVar.l()) {
            com.byazt.kl.hp.hp("Splash_FullLink", "模版兜底 ");
            jVar.jx(99);
        } else {
            int iL = hd.l(mpVar);
            com.byazt.kl.hp.hp("Splash_FullLink", "模版渲染 ".concat(String.valueOf(iL)));
            jVar.jx(iL);
        }
    }

    public static void hp(ru ruVar, ru ruVar2, f fVar, int i2, int i3) {
        if (ruVar == null || ruVar2 == null) {
            return;
        }
        ruVar.hp(i2);
        ruVar.l(i3);
        ruVar.v(fVar.f27274q);
        ruVar2.hp(i2);
        ruVar2.l(i3);
        ruVar2.v(fVar.f27274q);
    }

    public static void hp(ru ruVar, int i2) {
        if (ruVar == null || ruVar.lv() >= i2) {
            return;
        }
        ruVar.eb(i2);
    }

    public static void hp(int i2, mp mpVar, String str, int i3) throws JSONException {
        if (i2 == 2) {
            if (hp) {
                return;
            } else {
                hp = true;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event_type", i2);
            if (i2 == 1) {
                jSONObject.put("show_cnt", i3);
            }
            com.byazt.jdb.j.j(mpVar, str, jSONObject);
        } catch (JSONException unused) {
        }
    }
}
