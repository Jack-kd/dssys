package com.byazt.t;

import com.byazt.fu.DownloadInfo;
import com.byazt.yk.vv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 42})
/* loaded from: classes3.dex */
public class k implements vv {
    @Override // com.byazt.yk.vv
    public void hp(DownloadInfo downloadInfo, int i2, int i3) throws JSONException {
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("reserve_wifi_source", Integer.valueOf(i3));
            jSONObject.putOpt("reserve_wifi_status", Integer.valueOf(i2));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("pause_reserve_wifi", jSONObject, lVarHp);
    }
}
