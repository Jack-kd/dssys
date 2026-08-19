package com.byazt.et;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.gt.e;
import com.byazt.gt.w;
import com.byazt.gt.zy;
import com.byazt.hk.eb;
import com.byazt.kc.AbsServerManager;
import com.byazt.lxu.j;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 315, 34})
/* loaded from: classes2.dex */
public class l {
    public static final String[] hp = {"ab_version", bv.f48879F, "language", "os_api", bv.f48925z, "google_aid", "build_serial", bv.f48889P, "install_id", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version", "device_model", "udid", "density_dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f19502l = {"ab_version", bv.f48879F, "language", "os_api", bv.f48925z, "google_aid", "build_serial", bv.f48889P, "iid", "app_name", NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, bv.ac, "uuid", "dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};

    public static String hp(Context context, JSONObject jSONObject, String str, boolean z2, com.byazt.ub.l lVar) {
        HashMap<String, String> mapHp;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        HashMap map = new HashMap(hp.length + 10);
        int i2 = 0;
        while (true) {
            String[] strArr = hp;
            if (i2 >= strArr.length) {
                break;
            }
            String strOptString = jSONObject.optString(strArr[i2], null);
            if (!TextUtils.isEmpty(strOptString)) {
                map.put(f19502l[i2], strOptString);
            }
            i2++;
        }
        if (lVar != null) {
            try {
                mapHp = lVar.hp(context);
            } catch (Exception e2) {
                e.l(e2);
            }
        } else {
            mapHp = null;
        }
        if (zy.jx(context) && mapHp != null) {
            map.putAll(mapHp);
        }
        try {
            HashMap<String, String> mapHp2 = com.byazt.ub.hp.jx() == null ? null : com.byazt.ub.hp.jx().hp();
            if (mapHp2 != null) {
                map.putAll(mapHp2);
            }
        } catch (Exception e3) {
            e.l(e3);
        }
        if (com.byazt.ub.hp.jx.size() > 0) {
            map.putAll(com.byazt.ub.hp.jx);
        }
        if (z2) {
            map.put("ssmix", "a");
        }
        String strHp = w.hp(context);
        if (!TextUtils.isEmpty(strHp)) {
            map.put("ac", strHp);
        }
        String str2 = (String) com.byazt.ub.hp.hp("tweaked_channel", "");
        if (TextUtils.isEmpty(str2)) {
            str2 = (String) com.byazt.ub.hp.hp("channel", "");
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put("channel", str2);
        }
        String strOptString2 = jSONObject.optString(bv.f48924y, null);
        if (strOptString2 != null && strOptString2.length() > 10) {
            strOptString2 = strOptString2.substring(0, 10);
        }
        map.put(bv.f48924y, strOptString2);
        map.put("_rticket", String.valueOf(System.currentTimeMillis()));
        map.put("device_platform", "android");
        int iIntValue = ((Integer) com.byazt.ub.hp.hp("version_code", -1)).intValue();
        if (iIntValue != -1) {
            map.put("version_code", String.valueOf(iIntValue));
        }
        int iIntValue2 = ((Integer) com.byazt.ub.hp.hp("manifest_version_code", -1)).intValue();
        if (iIntValue2 != -1) {
            map.put("manifest_version_code", String.valueOf(iIntValue2));
        }
        int iIntValue3 = ((Integer) com.byazt.ub.hp.hp("update_version_code", -1)).intValue();
        if (iIntValue3 != -1) {
            map.put("update_version_code", String.valueOf(iIntValue3));
        }
        String strHp2 = eb.hp(jSONObject.optJSONObject("oaid"));
        if (!TextUtils.isEmpty(strHp2)) {
            map.put("oaid", strHp2);
        }
        String strOptString3 = jSONObject.optString("cdid");
        if (!TextUtils.isEmpty(strOptString3)) {
            map.put("cdid", strOptString3);
        }
        if (!str.endsWith(ServiceReference.DELIMITER)) {
            str = str + ServiceReference.DELIMITER;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str.indexOf(63) >= 0 ? '&' : '?');
        return zy.hp(sb.toString(), map, "UTF-8");
    }

    public static String[] hp(j jVar, Context context, JSONObject jSONObject) {
        String str;
        String[] strArrL = jVar.eb().l();
        String[] strArr = new String[strArrL.length];
        if (com.byazt.ub.hp.s()) {
            str = "?tt_data=a";
        } else {
            str = "?";
        }
        for (int i2 = 0; i2 < strArrL.length; i2++) {
            String strHp = hp(context, jSONObject, strArrL[i2] + str, true, com.byazt.ub.hp.j());
            strArr[i2] = strHp;
            strArr[i2] = hp.hp(strHp, hp.f19497l);
        }
        return strArr;
    }
}
