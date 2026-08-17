package com.byazt.j;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.b.sz;
import com.byazt.dg.AdDownloadController;
import com.byazt.dg.AdDownloadModel;
import com.byazt.rx.BaseConstants;
import com.byazt.t.jl;
import com.byazt.v.DeepLink;
import com.byazt.y.zy;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.sigmob.sdk.base.mta.PointCategory;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 38, 28})
/* loaded from: classes.dex */
public class hp {
    public static final String hp = "hp";

    public static boolean hp(@NonNull com.byazt.w.w wVar) throws JSONException {
        boolean z2;
        DeepLink deepLink = wVar.f26873l.getDeepLink();
        String openUrl = deepLink == null ? null : deepLink.getOpenUrl();
        JSONObject jSONObjectHp = com.byazt.y.a.hp(new JSONObject(), wVar);
        zy.hp(jSONObjectHp, "applink_source", "click_by_sdk");
        com.byazt.r.hp.hp().l("applink_click", jSONObjectHp, wVar);
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(openUrl, wVar);
        if (ebVarHp.getType() == 2) {
            if (!TextUtils.isEmpty(openUrl)) {
                l("by_url", ebVarHp, jSONObjectHp, wVar);
            }
            ebVarHp = com.byazt.y.q.hp(jl.getContext(), wVar.f26873l.getPackageName(), wVar);
        }
        boolean z3 = false;
        if (hp(wVar.hp) && jl.q().optInt("link_ad_click_event") == 1) {
            DownloadModel downloadModel = wVar.f26873l;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(4);
            }
            com.byazt.r.hp.hp().hp(wVar.hp, 0);
            z2 = true;
        } else {
            z2 = false;
        }
        int type = ebVarHp.getType();
        if (type == 1) {
            l("by_url", jSONObjectHp, wVar);
        } else {
            if (type != 3) {
                if (type != 4) {
                    com.byazt.u.jx.hp().l("AppLinkClick default");
                } else {
                    hp("by_package", ebVarHp, jSONObjectHp, wVar);
                }
                if (z3 && !z2 && ((com.byazt.r.jx.hp().l() && !com.byazt.r.jx.hp().l(wVar.hp, wVar.f26873l.getLogExtra())) || com.byazt.r.jx.hp().jx())) {
                    com.byazt.r.hp.hp().hp(wVar.hp, 2);
                }
                return z3;
            }
            hp("by_package", jSONObjectHp, wVar);
        }
        z3 = true;
        if (z3) {
            com.byazt.r.hp.hp().hp(wVar.hp, 2);
        }
        return z3;
    }

    public static void l(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return;
        }
        String strA = com.byazt.jb.hp.jx().l("app_link_opt") == 1 ? lVar.a() : null;
        JSONObject jSONObjectHp = com.byazt.y.a.hp(new JSONObject(), lVar);
        zy.hp(jSONObjectHp, "applink_source", "dialog_click_by_sdk");
        com.byazt.r.hp.hp().l("applink_click", jSONObjectHp, lVar);
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(strA, lVar);
        if (ebVarHp.getType() == 2) {
            if (!TextUtils.isEmpty(strA)) {
                l("dialog_by_url", ebVarHp, jSONObjectHp, lVar);
            }
            ebVarHp = com.byazt.y.q.hp(jl.getContext(), lVar.w(), lVar);
        }
        int type = ebVarHp.getType();
        if (type == 1) {
            l("dialog_by_url", jSONObjectHp, lVar);
            return;
        }
        if (type == 3) {
            hp("dialog_by_package", jSONObjectHp, lVar);
        } else if (type != 4) {
            com.byazt.u.jx.hp().l("AppLinkClickDialog default");
        } else {
            hp("dialog_by_package", ebVarHp, jSONObjectHp, lVar);
        }
    }

    public static void l(String str, @NonNull final JSONObject jSONObject, @NonNull final com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, "applink_source", str);
        zy.hp(jSONObject, "download_scene", Integer.valueOf(hpVar.sz()));
        com.byazt.r.hp.hp().l("deeplink_url_open", jSONObject, hpVar);
        str.getClass();
        switch (str) {
            case "auto_by_url":
            case "by_url":
            case "notify_by_url":
            case "dialog_by_url":
                if ((jl.q().optInt("check_applink_mode") & 1) != 0) {
                    zy.hp(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    w.hp().hp(new j() { // from class: com.byazt.j.hp.2
                        @Override // com.byazt.j.j
                        public void hp(boolean z2) {
                            com.byazt.r.hp.hp().l(z2 ? "deeplink_success" : "deeplink_failed", jSONObject, hpVar);
                            if (z2) {
                                jl.n().hp(jl.getContext(), hpVar.n(), hpVar.cx(), hpVar.ns(), hpVar.w(), 0);
                            }
                        }
                    });
                    break;
                } else {
                    jl.l().hp(jl.getContext(), hpVar.n(), hpVar.cx(), hpVar.ns(), hpVar.w(), str);
                    break;
                }
        }
    }

    public static void hp(@NonNull com.byazt.zv.l lVar) throws JSONException {
        String strA = lVar.a();
        JSONObject jSONObjectHp = com.byazt.y.a.hp(new JSONObject(), lVar);
        zy.hp(jSONObjectHp, "applink_source", "notify_click_by_sdk");
        com.byazt.r.hp.hp().l("applink_click", jSONObjectHp, lVar);
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(strA, lVar);
        if (ebVarHp.getType() == 2) {
            if (!TextUtils.isEmpty(strA)) {
                l("notify_by_url", ebVarHp, jSONObjectHp, lVar);
            }
            ebVarHp = com.byazt.y.q.hp(jl.getContext(), lVar.w(), lVar);
        }
        int type = ebVarHp.getType();
        if (type == 1) {
            l("notify_by_url", jSONObjectHp, lVar);
            return;
        }
        if (type == 3) {
            hp("notify_by_package", jSONObjectHp, lVar);
        } else if (type != 4) {
            com.byazt.u.jx.hp().l("AppLinkClickNotification default");
        } else {
            hp("notify_by_package", ebVarHp, jSONObjectHp, lVar);
        }
    }

    public static void l(String str, @NonNull com.byazt.w.eb ebVar, @NonNull JSONObject jSONObject, @NonNull com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, "applink_source", str);
        zy.hp(jSONObject, "error_code", Integer.valueOf(ebVar.hp()));
        zy.hp(jSONObject, "download_scene", Integer.valueOf(hpVar.sz()));
        com.byazt.r.hp.hp().l("deeplink_url_open_fail", jSONObject, hpVar);
    }

    public static boolean hp(String str, @NonNull com.byazt.zv.l lVar) throws JSONException {
        if (!com.byazt.t.q.l(lVar.mp())) {
            return false;
        }
        if (TextUtils.isEmpty(lVar.a()) && TextUtils.isEmpty(str)) {
            return false;
        }
        com.byazt.li.l.hp().a(lVar.ec());
        JSONObject jSONObject = new JSONObject();
        com.byazt.y.a.hp(jSONObject, lVar);
        zy.hp(jSONObject, "applink_source", "auto_click");
        com.byazt.r.hp.hp().l("applink_click", lVar);
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(lVar, lVar.a(), lVar.w());
        int type = ebVarHp.getType();
        if (type == 1) {
            l("auto_by_url", jSONObject, lVar);
            return true;
        }
        if (type == 2) {
            l("auto_by_url", ebVarHp, jSONObject, lVar);
            return false;
        }
        if (type == 3) {
            hp("auto_by_package", jSONObject, lVar);
            return true;
        }
        if (type != 4) {
            return false;
        }
        hp("auto_by_package", ebVarHp, jSONObject, lVar);
        return false;
    }

    public static void hp(String str, @NonNull final JSONObject jSONObject, @NonNull final com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, "applink_source", str);
        zy.hp(jSONObject, "download_scene", Integer.valueOf(hpVar.sz()));
        com.byazt.r.hp.hp().l("deeplink_app_open", jSONObject, hpVar);
        str.getClass();
        switch (str) {
            case "notify_by_package":
            case "auto_by_package":
            case "by_package":
            case "dialog_by_package":
                if ((jl.q().optInt("check_applink_mode") & 1) != 0) {
                    zy.hp(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    w.hp().hp(new j() { // from class: com.byazt.j.hp.1
                        @Override // com.byazt.j.j
                        public void hp(boolean z2) {
                            com.byazt.r.hp.hp().l(z2 ? "deeplink_success" : "deeplink_failed", jSONObject, hpVar);
                            if (z2) {
                                jl.n().hp(jl.getContext(), hpVar.n(), hpVar.cx(), hpVar.ns(), hpVar.w(), 0);
                            }
                        }
                    });
                    break;
                } else {
                    jl.l().hp(jl.getContext(), hpVar.n(), hpVar.cx(), hpVar.ns(), hpVar.w(), str);
                    break;
                }
        }
    }

    public static void hp(String str, @NonNull com.byazt.w.eb ebVar, @NonNull JSONObject jSONObject, @NonNull com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, "applink_source", str);
        zy.hp(jSONObject, "error_code", Integer.valueOf(ebVar.hp()));
        zy.hp(jSONObject, "download_scene", Integer.valueOf(hpVar.sz()));
        com.byazt.r.hp.hp().l("deeplink_app_open_fail", jSONObject, hpVar);
    }

    public static boolean hp(@NonNull com.byazt.w.w wVar, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
        com.byazt.yy.l marketStatusChangeListener = wVar.f26872j.getMarketStatusChangeListener();
        com.byazt.r.hp.hp().l("market_click_open", jSONObject, wVar);
        DownloadController downloadController = wVar.f26872j;
        Context context = jl.getContext();
        if (downloadController instanceof AdDownloadController) {
            AdDownloadController adDownloadController = (AdDownloadController) downloadController;
            if (adDownloadController.getWeakActivity() != null) {
                context = adDownloadController.getWeakActivity();
            }
        }
        com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(context, wVar, wVar.f26873l.getPackageName());
        String strHp = zy.hp(ebVarHp.l(), PointCategory.OPEN_MARKET);
        int type = ebVarHp.getType();
        if (type == 5) {
            hp(strHp, jSONObject, wVar, true);
        } else {
            if (type == 6) {
                zy.hp(jSONObject, "error_code", Integer.valueOf(ebVarHp.hp()));
                zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
                if (marketStatusChangeListener != null) {
                    marketStatusChangeListener.l();
                }
                com.byazt.r.hp.hp().l("market_open_failed", jSONObject, wVar);
                return false;
            }
            if (type != 7) {
                return false;
            }
        }
        com.byazt.r.hp.hp().hp(wVar.hp, i2);
        return true;
    }

    public static void hp(final String str, @Nullable final JSONObject jSONObject, final com.byazt.w.w wVar, boolean z2) throws JSONException {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception e2) {
                com.byazt.u.jx.hp().hp(e2, "onMarketSuccess");
                return;
            }
        }
        zy.hp(jSONObject, "applink_source", str);
        zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
        if (z2) {
            com.byazt.yy.l marketStatusChangeListener = wVar.f26872j.getMarketStatusChangeListener();
            if (marketStatusChangeListener != null) {
                marketStatusChangeListener.hp();
            }
            com.byazt.r.hp.hp().l("market_open_success", jSONObject, wVar);
        }
        if ((jl.q().optInt("check_applink_mode") & 4) != 0) {
            w.hp().l(new j() { // from class: com.byazt.j.hp.3
                @Override // com.byazt.j.j
                public void hp(boolean z3) throws JSONException {
                    if (!z3 && !PointCategory.OPEN_MARKET.equals(str)) {
                        hp.hp(com.byazt.y.q.hp(jl.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + wVar.w())), wVar, false);
                    }
                    com.byazt.r.hp.hp().hp(z3 ? "market_delay_success" : "market_delay_failed", jSONObject, wVar);
                    if (z3) {
                        sz szVarN = jl.n();
                        Context context = jl.getContext();
                        com.byazt.w.w wVar2 = wVar;
                        DownloadModel downloadModel = wVar2.f26873l;
                        szVarN.hp(context, downloadModel, wVar2.f26872j, wVar2.jx, downloadModel.getPackageName(), 2);
                    }
                }
            });
        } else {
            com.byazt.b.jx jxVarL = jl.l();
            Context context = jl.getContext();
            DownloadModel downloadModel = wVar.f26873l;
            jxVarL.hp(context, downloadModel, wVar.f26872j, wVar.jx, downloadModel.getPackageName(), str);
        }
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(wVar.f26873l.getPackageName());
        if (lVarHp != null) {
            com.byazt.y.jl.hp().hp(hp, "onMarketSuccess", "商店场景,缓存中已有NativeDownloadModel记录,进行复用");
        } else {
            com.byazt.y.jl.hp().hp(hp, "onMarketSuccess", "商店场景,缓存中没有相应的NativeDownloadModel,需要新建");
            lVarHp = new com.byazt.zv.l(wVar.f26873l, wVar.jx, wVar.f26872j);
        }
        lVarHp.w(2);
        lVarHp.a(System.currentTimeMillis());
        lVarHp.s(4);
        lVarHp.q(2);
        com.byazt.w.a.hp().hp(lVarHp);
        com.byazt.y.jl.hp().hp(hp, "onMarketSuccess", "检测到跳商店成功事件,准备开始检测安装行为");
        com.byazt.l.q.hp().hp(wVar, lVarHp);
    }

    public static void hp(com.byazt.w.eb ebVar, com.byazt.w.w wVar, boolean z2) throws JSONException {
        String strHp = zy.hp(ebVar.l(), PointCategory.OPEN_MARKET);
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "ttdownloader_type", LiveConfigKey.BACKUP);
        int type = ebVar.getType();
        if (type == 5) {
            hp(strHp, jSONObject, wVar, z2);
        } else {
            if (type != 6) {
                return;
            }
            zy.hp(jSONObject, "error_code", Integer.valueOf(ebVar.hp()));
            zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
            wVar.f26872j.getMarketStatusChangeListener();
            com.byazt.r.hp.hp().l("market_open_failed", jSONObject, wVar);
        }
    }

    public static boolean hp(long j2) {
        return com.byazt.w.a.hp().j(j2) == null;
    }
}
