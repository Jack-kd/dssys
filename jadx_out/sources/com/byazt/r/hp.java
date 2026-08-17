package com.byazt.r;

import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.bu.j;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.v.jx;
import com.byazt.w.a;
import com.byazt.w.q;
import com.byazt.w.w;
import com.byazt.y.zy;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.mta.PointCategory;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 572, 28})
/* loaded from: classes3.dex */
public class hp {

    @com.byazt.kj.hp(hp = {0, 1, 572, 170})
    /* renamed from: com.byazt.r.hp$hp, reason: collision with other inner class name */
    public static class C0352hp {
        public static hp hp = new hp();
    }

    public static hp hp() {
        return C0352hp.hp;
    }

    public void l(long j2, int i2) throws JSONException {
        hp(j2, i2, (DownloadInfo) null);
    }

    private hp() {
    }

    public void hp(long j2, int i2) {
        w wVarW = a.hp().w(j2);
        if (wVarW.b()) {
            com.byazt.u.jx.hp().hp("sendClickEvent ModelBox notValid");
            return;
        }
        if (wVarW.jx.isEnableClickEvent()) {
            int i3 = 1;
            DownloadEventConfig downloadEventConfig = wVarW.jx;
            String clickItemTag = i2 == 1 ? downloadEventConfig.getClickItemTag() : downloadEventConfig.getClickButtonTag();
            String strHp = zy.hp(wVarW.jx.getClickLabel(), "click");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("download_click_type", Integer.valueOf(i2));
                jSONObject.putOpt("permission_notification", Integer.valueOf(j.hp() ? 1 : 2));
                if (!com.byazt.xq.a.jx(jl.getContext())) {
                    i3 = 2;
                }
                jSONObject.putOpt("network_available", Integer.valueOf(i3));
            } catch (JSONException unused) {
            }
            hp(clickItemTag, strHp, jSONObject, wVarW);
            if (!"click".equals(strHp) || wVarW.f26873l == null) {
                return;
            }
            jx.hp().hp(j2, wVarW.f26873l.getLogExtra());
        }
    }

    public void l(DownloadInfo downloadInfo, BaseException baseException) throws JSONException {
        if (downloadInfo == null) {
            return;
        }
        com.byazt.zv.l lVarHp = a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            com.byazt.u.jx.hp().hp("sendDownloadFailedEvent nativeModel null");
            return;
        }
        if (lVarHp.jx.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.y.a.jx(downloadInfo, jSONObject);
            com.byazt.l.hp.hp(jSONObject, downloadInfo);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
                lVarHp.j(baseException.getErrorCode());
                lVarHp.hp(baseException.getErrorMessage());
            }
            lVarHp.di();
            jSONObject.put("download_failed_times", lVarHp.b());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            jSONObject.put("has_send_download_failed_finally", lVarHp.f28617j.get() ? 1 : 2);
            com.byazt.y.a.hp(lVarHp, jSONObject);
            jSONObject.put("is_update_download", lVarHp.zx() ? 1 : 2);
        } catch (JSONException unused) {
        }
        hp(lVarHp.e(), PointCategory.DOWNLOAD_FAILED, jSONObject, lVarHp);
        q.hp().hp(lVarHp);
    }

    public void hp(long j2, int i2, DownloadInfo downloadInfo) throws JSONException {
        String strHp;
        w wVarW = a.hp().w(j2);
        if (wVarW.b()) {
            com.byazt.u.jx.hp().hp("sendEvent ModelBox notValid");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "download_scene", Integer.valueOf(wVarW.sz()));
        if (i2 == 1) {
            strHp = zy.hp(wVarW.jx.getStorageDenyLabel(), "storage_deny");
        } else if (i2 == 2) {
            strHp = zy.hp(wVarW.jx.getClickStartLabel(), "click_start");
            com.byazt.y.a.hp(downloadInfo, jSONObject);
        } else if (i2 == 3) {
            strHp = zy.hp(wVarW.jx.getClickPauseLabel(), "click_pause");
            com.byazt.y.a.l(downloadInfo, jSONObject);
        } else if (i2 == 4) {
            strHp = zy.hp(wVarW.jx.getClickContinueLabel(), "click_continue");
            com.byazt.y.a.jx(downloadInfo, jSONObject);
        } else if (i2 != 5) {
            strHp = null;
        } else {
            if (downloadInfo != null) {
                try {
                    com.byazt.y.a.hp(jSONObject, downloadInfo.getId());
                    com.byazt.l.hp.l(jSONObject, downloadInfo);
                } catch (Throwable unused) {
                }
            }
            strHp = zy.hp(wVarW.jx.getClickInstallLabel(), "click_install");
        }
        hp(null, strHp, jSONObject, 0L, 1, wVarW);
    }

    public void l(String str, long j2) {
        com.byazt.zv.l lVarJ = a.hp().j(j2);
        if (lVarJ != null) {
            l(str, lVarJ);
        } else {
            l(str, a.hp().w(j2));
        }
    }

    public void l(String str, com.byazt.zv.hp hpVar) {
        hp((String) null, str, hpVar);
    }

    public void l(String str, JSONObject jSONObject, com.byazt.zv.hp hpVar) {
        hp((String) null, str, jSONObject, hpVar);
    }

    public void hp(String str, int i2, w wVar) throws JSONException {
        hp(null, str, null, i2, 0, wVar);
    }

    public void hp(long j2, boolean z2, int i2) {
        w wVarW = a.hp().w(j2);
        if (wVarW.b()) {
            com.byazt.u.jx.hp().hp("sendQuickAppEvent ModelBox notValid");
            return;
        }
        if (wVarW.f26873l.getQuickAppModel() == null) {
            return;
        }
        DownloadModel downloadModel = wVarW.f26873l;
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_click_type", Integer.valueOf(i2));
        } catch (JSONException unused) {
        }
        l(z2 ? "deeplink_quickapp_success" : "deeplink_quickapp_failed", jSONObject, wVarW);
    }

    public void hp(long j2, BaseException baseException) {
        w wVarW = a.hp().w(j2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_time", 0);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
            }
        } catch (JSONException unused) {
        }
        l(PointCategory.DOWNLOAD_FAILED, jSONObject, wVarW);
    }

    public void hp(DownloadInfo downloadInfo) {
        com.byazt.zv.l lVarHp = a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            com.byazt.y.a.jx(downloadInfo, jSONObject);
            lVarHp.hp(System.currentTimeMillis());
            hp(lVarHp.e(), "download_resume", jSONObject, lVarHp);
            q.hp().hp(lVarHp);
        } catch (Throwable unused) {
        }
    }

    public void hp(JSONObject jSONObject, @NonNull com.byazt.zv.l lVar) {
        hp(lVar.e(), C1244a.f35654F, jSONObject, lVar);
    }

    public void hp(DownloadInfo downloadInfo, BaseException baseException) throws JSONException {
        com.byazt.zv.l lVarHp;
        if (downloadInfo == null || (lVarHp = a.hp().hp(downloadInfo)) == null || lVarHp.jx.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.l.hp.hp(jSONObject, downloadInfo);
            jSONObject.putOpt("fail_status", Integer.valueOf(lVarHp.nu()));
            jSONObject.putOpt("fail_msg", lVarHp.dy());
            jSONObject.put("download_failed_times", lVarHp.b());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (lVarHp.r() > 0) {
                jSONObject.put("time_from_start_download", jCurrentTimeMillis - lVarHp.r());
            }
            if (lVarHp.wv() > 0) {
                jSONObject.put("time_from_download_resume", jCurrentTimeMillis - lVarHp.wv());
            }
            jSONObject.put("is_update_download", lVarHp.zx() ? 1 : 2);
            jSONObject.put("can_show_notification", j.hp() ? 1 : 2);
            jSONObject.put("has_send_download_failed_finally", lVarHp.f28617j.get() ? 1 : 2);
        } catch (JSONException unused) {
        }
        hp(lVarHp.e(), "download_cancel", jSONObject, lVarHp);
    }

    public void hp(String str, long j2) throws JSONException {
        hp(str, (JSONObject) null, j2);
    }

    public void hp(String str, com.byazt.zv.hp hpVar) {
        hp(str, (JSONObject) null, hpVar);
    }

    public void hp(String str, JSONObject jSONObject, long j2) throws JSONException {
        com.byazt.zv.hp hpVarJ = a.hp().j(j2);
        if (hpVarJ != null) {
            hp(str, jSONObject, hpVarJ);
            return;
        }
        w wVarW = a.hp().w(j2);
        if (wVarW.b()) {
            com.byazt.u.jx.hp().hp("sendUnityEvent ModelBox notValid");
        } else {
            hp(str, jSONObject, wVarW);
        }
    }

    public void hp(String str, JSONObject jSONObject, com.byazt.zv.hp hpVar) {
        JSONObject jSONObject2 = new JSONObject();
        zy.hp(jSONObject2, "unity_label", str);
        hp(com.byazt.ih.l.AD_TAG_FEED, "ttdownloader_unity", zy.hp(jSONObject, jSONObject2), hpVar);
    }

    public void hp(String str, @NonNull DownloadModel downloadModel, @NonNull DownloadEventConfig downloadEventConfig, @NonNull DownloadController downloadController) {
        l(str, new w(downloadModel.getId(), downloadModel, downloadEventConfig, downloadController));
    }

    public void hp(String str, String str2, com.byazt.zv.hp hpVar) {
        hp(str, str2, (JSONObject) null, hpVar);
    }

    public void hp(String str, String str2, JSONObject jSONObject, com.byazt.zv.hp hpVar) {
        hp(str, str2, jSONObject, 0L, 0, hpVar);
    }

    private void hp(String str, String str2, JSONObject jSONObject, long j2, int i2, com.byazt.zv.hp hpVar) throws JSONException {
        if (hpVar == null) {
            com.byazt.u.jx.hp().hp("onEvent data null");
            return;
        }
        if ((hpVar instanceof w) && ((w) hpVar).b()) {
            com.byazt.u.jx.hp().hp("onEvent ModelBox notValid");
            return;
        }
        try {
            jx.hp hpVarJx = new jx.hp().hp(zy.hp(str, hpVar.e(), com.byazt.ih.l.AD_TAG_FEED)).l(str2).l(hpVar.jx()).hp(hpVar.l()).jx(hpVar.j());
            if (j2 <= 0) {
                j2 = hpVar.jl();
            }
            jx.hp hpVarHp = hpVarJx.l(j2).j(hpVar.q()).hp(hpVar.k()).hp(zy.hp(hp(hpVar), jSONObject)).l(hpVar.gu()).hp(hpVar.v());
            if (i2 <= 0) {
                i2 = 2;
            }
            hp(hpVarHp.hp(i2).hp(hpVar.zy()).hp());
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "onEvent");
        }
    }

    private JSONObject hp(com.byazt.zv.hp hpVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            zy.hp(hpVar.eb(), jSONObject);
            zy.hp(hpVar.u(), jSONObject);
            jSONObject.putOpt("download_url", hpVar.hp());
            jSONObject.putOpt("package_name", hpVar.w());
            jSONObject.putOpt("android_int", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt("rom_name", com.byazt.wm.w.s());
            jSONObject.putOpt("rom_version", com.byazt.wm.w.q());
            jSONObject.putOpt("ttdownloader", 1);
            jSONObject.putOpt("funnel_type", Integer.valueOf(hpVar.s()));
            if (hpVar.s() == 2) {
                com.byazt.y.a.l(jSONObject, hpVar);
            }
            if (com.byazt.wm.w.u()) {
                com.byazt.y.a.hp(jSONObject);
            }
            return jSONObject;
        } catch (Exception e2) {
            jl.sz().hp(e2, "getBaseJson");
            return jSONObject;
        }
    }

    private void hp(com.byazt.v.jx jxVar) {
        if (jl.hp() == null) {
            return;
        }
        if (jxVar.zy()) {
            jl.hp().hp(jxVar);
        } else {
            jl.hp().l(jxVar);
        }
    }
}
