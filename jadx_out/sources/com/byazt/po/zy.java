package com.byazt.po;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.jz.sz;
import com.byazt.po.q;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import com.byazt.yy.DownloadModel;
import com.byazt.zn.xh;
import com.sigmob.sdk.base.n;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 212, 302})
/* loaded from: classes3.dex */
public class zy implements j {
    private zy() {
    }

    public static j j() {
        return new zy();
    }

    @Override // com.byazt.po.j
    public boolean hp(DownloadModel downloadModel, DownloadInfo downloadInfo) {
        return true;
    }

    @Override // com.byazt.po.j
    public boolean jx() {
        return com.byazt.jz.s.u().hp();
    }

    @Override // com.byazt.po.j
    public eb l() {
        return null;
    }

    @Override // com.byazt.po.j
    public void hp(JSONObject jSONObject, String str) {
        com.byazt.hy.l lVarHp;
        mp mpVar;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("open_ad_sdk_download_extra");
        if (jSONObjectOptJSONObject == null || !xh.hp() || (lVarHp = com.byazt.hy.l.hp(jSONObjectOptJSONObject)) == null || (mpVar = lVarHp.hp) == null) {
            return;
        }
        com.byazt.ff.q.hp(str, mpVar);
    }

    @Override // com.byazt.po.j
    public void l(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ymw.s.jx(new File(str));
    }

    @Override // com.byazt.po.j
    public boolean l(DownloadModel downloadModel, DownloadInfo downloadInfo) {
        String str;
        JSONObject jSONObjectOptJSONObject;
        if (downloadModel == null || downloadInfo == null) {
            return false;
        }
        String logExtra = downloadModel.getLogExtra();
        String appIcon = downloadModel.getAppIcon();
        String name = downloadModel.getName();
        String packageName = downloadModel.getPackageName();
        String targetFilePath = downloadInfo.getTargetFilePath();
        long id = downloadModel.getId();
        int id2 = downloadInfo.getId();
        com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(id);
        String savePath = downloadInfo.getSavePath();
        String url = downloadInfo.getUrl();
        JSONObject jSONObjectEb = lVarJ.eb();
        String strOptString = null;
        if (jSONObjectEb == null || (jSONObjectOptJSONObject = jSONObjectEb.optJSONObject("open_ad_sdk_download_extra")) == null) {
            str = null;
        } else {
            String strOptString2 = jSONObjectOptJSONObject.optString("tag");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("material_meta");
            if (jSONObjectOptJSONObject2 != null) {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("download_conf");
                iOptInt = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optInt("enable_notification", 0) : 0;
                strOptString = jSONObjectOptJSONObject2.optString("ad_id");
            }
            if (TextUtils.isEmpty(logExtra)) {
                logExtra = jSONObjectOptJSONObject2.optString(n.f36450m);
            }
            str = strOptString;
            strOptString = strOptString2;
        }
        com.byazt.ff.a aVar = new com.byazt.ff.a();
        com.byazt.hy.hp hpVar = new com.byazt.hy.hp();
        hpVar.hp(name);
        hpVar.l(appIcon);
        hpVar.jx(packageName);
        hpVar.hp(id2);
        hpVar.j(logExtra);
        hpVar.w(targetFilePath);
        hpVar.l(iOptInt);
        hpVar.a(strOptString);
        hpVar.eb(str);
        hpVar.s(savePath);
        hpVar.q(url);
        return aVar.hp(hpVar);
    }

    @Override // com.byazt.po.j
    public JSONObject hp() throws JSONException {
        JSONObject jSONObjectHp = com.byazt.ff.q.hp();
        try {
            if (!sz.l().mp()) {
                jSONObjectHp.put("enable_app_install_receiver", 0);
            }
            if (jSONObjectHp.optInt("enable_target_34", -1) == -1) {
                jSONObjectHp.put("enable_target_34", sz.l().pn());
            }
            if (!jSONObjectHp.has("use_network_callback")) {
                jSONObjectHp.put("use_network_callback", 1);
            }
        } catch (Exception unused) {
        }
        return jSONObjectHp;
    }

    @Override // com.byazt.po.j
    public String hp(boolean z2) {
        return com.byazt.ff.q.hp(z2);
    }

    @Override // com.byazt.po.j
    public void hp(Activity activity, String[] strArr, a aVar) {
        jl.hp(activity, strArr, aVar);
    }

    @Override // com.byazt.po.j
    public boolean hp(Context context, String str) {
        return jl.hp(context, str);
    }

    @Override // com.byazt.po.j
    public void hp(int i2, String str, Map<String, Object> map, w wVar) {
        e.hp(i2, str, map, wVar);
    }

    @Override // com.byazt.po.j
    public void hp(String str, byte[] bArr, String str2, w wVar) {
        e.hp(str, bArr, str2, 0, wVar);
    }

    @Override // com.byazt.po.j
    public AlertDialog hp(Activity activity, boolean z2, hp hpVar) {
        return gu.hp(activity, z2, hpVar);
    }

    @Override // com.byazt.po.j
    public void hp(WeakReference<Context> weakReference, boolean z2, hp hpVar) {
        gu.hp(weakReference, z2, hpVar);
    }

    @Override // com.byazt.po.j
    public boolean hp(String str) {
        return q.hp(str);
    }

    @Override // com.byazt.po.j
    public void hp(s sVar, boolean z2) {
        if (hp(sVar)) {
            try {
                com.byazt.uid.w.hp(q.hp.hp(sVar, z2), 5);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.po.j
    public boolean hp(DownloadModel downloadModel) {
        String str;
        JSONObject jSONObjectOptJSONObject;
        if (downloadModel == null) {
            return true;
        }
        String logExtra = downloadModel.getLogExtra();
        String appIcon = downloadModel.getAppIcon();
        String name = downloadModel.getName();
        String packageName = downloadModel.getPackageName();
        JSONObject jSONObjectEb = com.byazt.w.a.hp().j(downloadModel.getId()).eb();
        String strOptString = null;
        if (jSONObjectEb == null || (jSONObjectOptJSONObject = jSONObjectEb.optJSONObject("open_ad_sdk_download_extra")) == null) {
            str = null;
        } else {
            String strOptString2 = jSONObjectOptJSONObject.optString("tag");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("material_meta");
            if (jSONObjectOptJSONObject2 != null) {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("download_conf");
                iOptInt = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optInt("enable_notification", 0) : 0;
                strOptString = jSONObjectOptJSONObject2.optString("ad_id");
            }
            if (TextUtils.isEmpty(logExtra)) {
                logExtra = jSONObjectOptJSONObject2.optString(n.f36450m);
            }
            str = strOptString;
            strOptString = strOptString2;
        }
        com.byazt.ff.a aVar = new com.byazt.ff.a();
        com.byazt.hy.hp hpVar = new com.byazt.hy.hp();
        hpVar.hp(name);
        hpVar.l(appIcon);
        hpVar.jx(packageName);
        hpVar.j(logExtra);
        hpVar.l(iOptInt);
        hpVar.a(strOptString);
        hpVar.eb(str);
        return aVar.l(hpVar);
    }

    private boolean hp(s sVar) {
        JSONObject jSONObjectJ;
        if (sVar == null || (jSONObjectJ = sVar.j()) == null) {
            return false;
        }
        String strOptString = jSONObjectJ.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
        if (TextUtils.isEmpty(strOptString)) {
            return false;
        }
        try {
            return new JSONObject(strOptString).optJSONObject("open_ad_sdk_download_extra") != null;
        } catch (Throwable unused) {
            return false;
        }
    }
}
