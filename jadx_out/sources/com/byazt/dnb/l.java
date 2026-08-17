package com.byazt.dnb;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.xci.mp;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1239, 34})
/* loaded from: classes2.dex */
public class l {
    public static boolean hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app");
        String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("package_name") : null;
        if (TextUtils.isEmpty(strOptString)) {
            strOptString = jSONObject.optString("package_name");
        }
        return hp(strOptString);
    }

    public static boolean hp(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        com.byazt.xci.w wVarV = mpVar.v();
        String strJ = wVarV != null ? wVarV.j() : null;
        if (TextUtils.isEmpty(strJ)) {
            strJ = mpVar.ks();
        }
        return hp(strJ);
    }

    private static boolean hp(String str) {
        List<DownloadInfo> listL;
        if (TextUtils.isEmpty(str) || (listL = com.byazt.yk.jx.di().l()) == null) {
            return false;
        }
        for (DownloadInfo downloadInfo : listL) {
            int status = downloadInfo.getStatus();
            if (str.equals(downloadInfo.getPackageName()) && status == -3) {
                return true;
            }
        }
        return false;
    }
}
