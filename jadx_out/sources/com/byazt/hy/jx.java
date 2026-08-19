package com.byazt.hy;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ff.q;
import com.byazt.jz.d;
import com.byazt.jz.n;
import com.byazt.jz.s;
import com.byazt.lf.k;
import com.byazt.pu.TTDownloadField;
import com.byazt.wi.j;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.xci.w;
import com.byazt.ymw.u;
import com.byazt.yrp.eb;
import com.byazt.zn.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.sigmob.sdk.base.mta.PointCategory;
import com.umeng.analytics.pro.cl;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1000, 30})
/* loaded from: classes2.dex */
public class jx {
    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final Map<String, Object> map, mp mpVar) {
        q.hp(new Runnable() { // from class: com.byazt.hy.jx.3
            @Override // java.lang.Runnable
            public void run() {
                if (s.u().xh() != null) {
                    s.u().xh().apply(j.hp().hp(12).hp(Boolean.class).hp(0, map).l());
                }
            }
        }, mpVar);
    }

    public static void hp(String str, String str2, mp mpVar, JSONObject jSONObject, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        if (mpVar == null) {
            hp(true, functionXh, str2, mpVar, jSONObject, str, "", null, i2);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            hp(true, functionXh, str2, mpVar, jSONObject, str, "", null, i2);
            return;
        }
        String strKs = mpVar.ks();
        if (TextUtils.isEmpty(strKs) && mpVar.vv() != null) {
            strKs = mpVar.vv().zy();
        }
        hp(false, functionXh, str2, mpVar, jSONObject, str, "", strKs, i2);
    }

    public static void l(int i2, int i3) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        functionXh.apply(j.hp().hp(30).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i3)).hp("downloadScene", Integer.valueOf(i2))).l());
    }

    public static void hp(String str, mp mpVar, JSONObject jSONObject, int i2) {
        String str2;
        String str3;
        String strJ;
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        if (mpVar == null) {
            hp(true, functionXh, str, mpVar, jSONObject, null, null, null, i2);
            return;
        }
        w wVarV = mpVar.v();
        if (wVarV != null) {
            String strL = wVarV.l();
            String strJx = wVarV.jx();
            strJ = wVarV.j();
            str2 = strL;
            str3 = strJx;
        } else {
            str2 = "";
            str3 = str2;
            strJ = str3;
        }
        hp(false, functionXh, str, mpVar, jSONObject, str2, str3, strJ, i2);
    }

    private static void hp(boolean z2, Function<SparseArray<Object>, Object> function, String str, mp mpVar, JSONObject jSONObject, String str2, String str3, String str4, int i2) throws JSONException {
        boolean z3;
        String strV_;
        String strL;
        boolean zHp;
        if (function == null) {
            return;
        }
        if (z2) {
            function.apply(j.hp().hp(23).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i2)).hp("mateIsEmpty", Boolean.valueOf(z2))).l());
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("open_ad_sdk_download_extra", l.hp().hp(str).l(jSONObject).hp(mpVar).l());
        } catch (Exception unused) {
        }
        long jLongValue = Double.valueOf(mpVar.j()).longValue();
        String strHp = mpVar.nq() == null ? null : mpVar.nq().hp();
        boolean zUd = s.u().ud();
        boolean z4 = !s.u().ud();
        String strW_ = mpVar.w_();
        JSONObject jSONObjectHp = q.hp();
        JSONObject jSONObject3 = new JSONObject();
        try {
            int iOptInt = jSONObjectHp.optInt("notification_opt_2", 0);
            if (iOptInt != 1) {
                iOptInt = 0;
            }
            int iU = sz.u(mpVar);
            if (d.s()) {
                z3 = z4;
            } else {
                z3 = z4;
                try {
                    jSONObject3.put("cancel_pause_optimise_switch", iU);
                    jSONObject3.put("cancel_pause_optimise_wifi_retain_switch", iU);
                    jSONObject3.put("cancel_pause_optimise_apk_retain_switch", iU);
                    jSONObject3.put("cancel_pause_optimise_download_percent_retain_switch", iU);
                } catch (JSONException unused2) {
                }
            }
            jSONObject3.put("show_pause_continue_toast", iU);
            if (iU == 1) {
                hp(true, i2);
                jSONObject3.put("download_start_toast_text", jSONObjectHp.optString("download_start_toast_text", "已开始下载，再次点击可暂停或取消该下载任务。"));
            } else if (com.byazt.jz.sz.l().gy()) {
                hp(true, i2);
                jSONObject3.put("enable_notification_ui", 1);
                jSONObject3.put("download_start_toast_text", "下载中，可在通知栏暂停或取消");
            }
            jSONObject3.put("notification_opt_2", iOptInt);
            jSONObject3.put("is_use_obm_convert", sz.l(mpVar));
        } catch (JSONException unused3) {
            z3 = z4;
        }
        String strS = "";
        if (mpVar.k() != null) {
            strL = mpVar.k().l();
            strV_ = mpVar.v_();
            if (mpVar.k().w() != 2 || mp.jx(mpVar)) {
                if (mpVar.k().w() == 1) {
                    strS = mpVar.k().j();
                } else {
                    strS = mpVar.s();
                }
            }
        } else {
            strV_ = "";
            strS = mpVar.s();
            strL = strV_;
        }
        int i3 = d.f21856j;
        if (i3 >= 7000 && i3 < 7300) {
            boolean zHp2 = com.byazt.ymw.sz.hp(com.byazt.jz.sz.getContext());
            zHp = com.byazt.jz.sz.l().di();
            if (!zHp2) {
                zHp = com.byazt.ton.l.hp();
            }
        } else {
            zHp = com.byazt.ton.l.hp();
        }
        String strHp2 = com.byazt.fy.s.hp(mpVar, str2, false);
        if (!TextUtils.isEmpty(strHp2)) {
            com.byazt.fy.s.hp(sz.k(mpVar), jSONObject3);
        }
        function.apply(j.hp().hp(23).hp(Void.class).hp(0, new dy().hp("mateIsEmpty", Boolean.FALSE).hp("id", Long.valueOf(jLongValue)).hp("appIcon", strHp).hp("isShowNotification", Boolean.valueOf(zUd)).hp("isAutoInstallWithoutNotification", Boolean.valueOf(z3)).hp("logExtra", strW_).hp("extraJson", jSONObject2).hp("downloadSettings", jSONObject3).hp("filePath", strHp2).hp(cl.f49061p, str3).hp("downloadUrl", str2).hp("packageName", str4).hp("isNeedIndependentProcess", Boolean.valueOf(zHp)).hp("openUrl", strL).hp("webTitle", strV_).hp("hashCode", Integer.valueOf(i2)).hp("webUrl", strS)).l());
    }

    public static void hp(mp mpVar, int i2, boolean z2) {
        boolean zL;
        boolean zHp;
        boolean z3;
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        int iJ = sz.j(mpVar);
        int iW = sz.w(mpVar);
        if (mpVar != null && (!TextUtils.isEmpty(mpVar.b()) || z2)) {
            iW = 2;
        }
        if (mpVar == null || mpVar.yt() == null) {
            zL = false;
            zHp = false;
            z3 = false;
        } else {
            zHp = mpVar.yt().hp();
            zL = mpVar.yt().l();
            z3 = true;
        }
        functionXh.apply(j.hp().hp(25).hp(Void.class).hp(0, new dy().hp("autoOpen", Integer.valueOf(iJ)).hp("downloadMode", Integer.valueOf(iW)).hp("isHaveDownloadSdkConfig", Boolean.valueOf(z3)).hp("hashCode", Integer.valueOf(i2)).hp("isEnableAH", Boolean.valueOf(zHp)).hp("isEnableAM", Boolean.valueOf(zL))).l());
    }

    public static void hp(int i2, int i3) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        functionXh.apply(j.hp().hp(26).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i3)).hp("downloadMode", Integer.valueOf(i2))).l());
    }

    public static void hp(boolean z2, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        functionXh.apply(j.hp().hp(31).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i2)).hp("isShowToast", Boolean.valueOf(z2))).l());
    }

    public static int hp(Function<SparseArray<Object>, Object> function, int i2) {
        if (function == null) {
            return 0;
        }
        Object objApply = function.apply(j.hp().hp(27).hp(Integer.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i2))).l());
        if (objApply != null) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    public static void hp(boolean z2, com.byazt.ve.jx jxVar, int i2) {
        try {
            Function<SparseArray<Object>, Object> functionXh = s.u().xh();
            if (functionXh == null) {
                return;
            }
            functionXh.apply(j.hp().hp(28).hp(Void.class).hp(0, new dy().hp("isEnableOppoAutoDownload", Boolean.valueOf(z2)).hp("hashCode", Integer.valueOf(i2)).hp("downloadMarketInterceptor", jxVar)).l());
        } catch (Throwable th) {
            u.hp("xgc_dof", "throwable", th);
        }
    }

    public static void hp(com.byazt.ve.jx jxVar, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        functionXh.apply(j.hp().hp(MediaPlayer.MEDIA_PLAYER_OPTION_REUSE_SOCKET).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(i2)).hp("downloadMarketInterceptor", jxVar)).l());
    }

    public static void hp(hp hpVar, String str, int i2, Bitmap bitmap) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null || hpVar == null) {
            return;
        }
        functionXh.apply(j.hp().hp(160).hp(Void.class).hp(0, new dy().hp("install_app_name", hpVar.hp()).hp("install_icon_bitmap", bitmap).hp("install_action_type", str).hp("install_click_type", Integer.valueOf(i2)).hp("install_enable_target_34", Boolean.valueOf(Build.VERSION.SDK_INT >= 31 && com.byazt.jz.sz.l().pn() > 0)).hp("install_package_name", hpVar.jx()).hp("install_tag", hpVar.eb()).hp("install_value", hpVar.s()).hp("install_log_extra", hpVar.w()).hp("install_download_id", Integer.valueOf(hpVar.j()))).l());
    }

    public static com.byazt.ve.jx hp(eb ebVar, final boolean z2) {
        if (ebVar == null) {
            return null;
        }
        String strN = ebVar.n();
        if (!TextUtils.isEmpty(strN) && d.f21856j >= 6400) {
            final String strNs = ebVar.ns();
            final String strCx = ebVar.cx();
            final com.byazt.gu.l lVar = (com.byazt.gu.l) n.hp(strN, com.byazt.gu.l.class);
            if (lVar != null && !TextUtils.isEmpty(ebVar.b()) && ebVar.u_().a() == 1) {
                return new com.byazt.ve.jx() { // from class: com.byazt.hy.jx.1
                    @Override // com.byazt.b.DownloadMarketInterceptor
                    public Map<String, Object> interceptObmMarket(Map<String, Object> map) {
                        if (map == null) {
                            k kVarHp = k.hp();
                            Boolean bool = Boolean.FALSE;
                            kVarHp.hp(bool, bool, "param is null", strNs, strCx);
                            return map;
                        }
                        if (!z2) {
                            map.put("is_button", Boolean.FALSE);
                        }
                        Object obj = map.get("is_button");
                        lVar.hp(100, map);
                        jx.hp(map, obj, strNs, strCx);
                        return map;
                    }
                };
            }
        }
        return null;
    }

    public static boolean hp(Uri uri, mp mpVar, Context context, String str, int i2) {
        if (s.u().xh() == null || mpVar == null) {
            return false;
        }
        hp(str, mpVar, (JSONObject) null, i2);
        hp(mpVar, i2, false);
        hp(str, i2);
        dy<String, Object> dyVarHp = new dy().hp("hashCode", Integer.valueOf(i2)).hp(TTDownloadField.TT_ACTIVITY, context).hp("open_market_in_app", Boolean.valueOf(sz.ec(mpVar))).hp(ContentProviderManager.PROVIDER_URI, uri);
        com.byazt.zbc.jx jxVar = new com.byazt.zbc.jx(context, mpVar);
        jxVar.hp(new com.byazt.zbc.w());
        if (hp(mpVar, str, dyVarHp, jxVar)) {
            return true;
        }
        l(dyVarHp, mpVar);
        return true;
    }

    private static boolean hp(final mp mpVar, String str, final Map<String, Object> map, com.byazt.zbc.jx jxVar) throws JSONException {
        if (!jxVar.j(false)) {
            return false;
        }
        jxVar.hp(str, new com.byazt.cb.l() { // from class: com.byazt.hy.jx.2
            @Override // com.byazt.cb.l
            public void hp() {
                jx.l((Map<String, Object>) map, mpVar);
            }
        });
        return true;
    }

    public static void hp(Map<String, Object> map, Object obj, String str, String str2) {
        Object obj2 = map.get("convert_result");
        if (obj2 != null) {
            k.hp().hp(obj, obj2, cb.f11292o, str, str2);
            return;
        }
        k kVarHp = k.hp();
        Boolean bool = Boolean.FALSE;
        kVarHp.hp(bool, bool, "no intercept result", str, str2);
    }

    public static void hp(String str, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return;
        }
        functionXh.apply(j.hp().hp(29).hp(Void.class).hp(0, new dy().hp("clickButtonTag", str).hp("clickItemTag", str).hp("hashCode", Integer.valueOf(i2)).hp("clickStartLabel", "click_start").hp("clickContinueLabel", "click_continue").hp("clickPauseLabel", "click_pause").hp("storageDenyLabel", PointCategory.DOWNLOAD_FAILED).hp("clickInstallLabel", "click_install").hp("isEnableClickEvent", Boolean.TRUE).hp("isEnableV3Event", Boolean.FALSE)).l());
    }

    public static void hp(String str, String str2, JSONObject jSONObject, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null || jSONObject == null) {
            return;
        }
        functionXh.apply(j.hp().hp(29).hp(Void.class).hp(0, new dy().hp("clickButtonTag", str).hp("clickItemTag", str2).hp("clickStartLabel", "click_start").hp("clickContinueLabel", "click_continue").hp("clickPauseLabel", "click_pause").hp("storageDenyLabel", PointCategory.DOWNLOAD_FAILED).hp("clickInstallLabel", "click_install").hp("isEnableClickEvent", Boolean.TRUE).hp("hashCode", Integer.valueOf(i2)).hp("isEnableV3Event", Boolean.FALSE).hp("extraEventObject", jSONObject)).l());
    }

    public static void hp(Map<String, Object> map, com.byazt.ve.hp hpVar) {
        if (map == null || hpVar == null || map.get("downloadButtonClickListener") != null) {
            return;
        }
        map.put("downloadButtonClickListener", hpVar);
    }

    public static boolean hp(String str, String str2, mp mpVar, int i2) {
        Function<SparseArray<Object>, Object> functionXh = s.u().xh();
        if (functionXh == null) {
            return false;
        }
        Object objApply = functionXh.apply(j.hp().hp(2).hp(Boolean.class).hp(0, new dy().hp("tagIntercept", str).hp("label", str2).hp("hashCode", Integer.valueOf(i2)).hp("meta", mpVar.ij().toString())).l());
        return objApply != null && ((Boolean) objApply).booleanValue();
    }
}
