package com.byazt.rw;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.anythink.core.common.d.i;
import com.byazt.aj.s;
import com.byazt.kw.e;
import com.byazt.kw.q;
import com.byazt.kw.zy;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1658, 34})
/* loaded from: classes3.dex */
public final class l {
    public static final String[] hp = {"version_code", "manifest_version_code", "aid", "update_version_code"};
    public JSONObject jx = new JSONObject();

    /* renamed from: l, reason: collision with root package name */
    public Context f25391l;

    public l(Context context) {
        this.f25391l = context;
    }

    private void a(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put(bv.f48890Q, q.hp(this.f25391l));
        } catch (JSONException unused) {
        }
    }

    private void eb(JSONObject jSONObject) throws JSONException {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.f25391l.getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put(bv.f48889P, networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (TextUtils.isEmpty(networkOperator)) {
                    return;
                }
                jSONObject.put("mcc_mnc", networkOperator);
            }
        } catch (Exception unused) {
        }
    }

    public static l hp(Context context) throws JSONException {
        l lVar = new l(context);
        JSONObject jSONObjectHp = lVar.hp();
        lVar.hp(jSONObjectHp);
        lVar.jx(jSONObjectHp);
        lVar.j(jSONObjectHp);
        lVar.w(jSONObjectHp);
        lVar.a(jSONObjectHp);
        lVar.eb(jSONObjectHp);
        lVar.l(jSONObjectHp);
        return lVar;
    }

    private void j(JSONObject jSONObject) throws JSONException {
        try {
            String language = this.f25391l.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put("language", language);
            }
            String country = Locale.getDefault().getCountry();
            if (!TextUtils.isEmpty(country)) {
                jSONObject.put("region", country);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put("timezone", rawOffset);
        } catch (Exception unused) {
        }
    }

    private String jx() {
        String str = Build.VERSION.RELEASE;
        if (str.contains(i.f2495E)) {
            return str;
        }
        return str + ".0";
    }

    private String l() {
        try {
            StringBuilder sb = new StringBuilder();
            if (Build.SUPPORTED_ABIS.length > 0) {
                int i2 = 0;
                while (true) {
                    String[] strArr = Build.SUPPORTED_ABIS;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    sb.append(strArr[i2]);
                    if (i2 != strArr.length - 1) {
                        sb.append(", ");
                    }
                    i2++;
                }
            } else {
                sb = new StringBuilder(Build.CPU_ABI);
            }
            return TextUtils.isEmpty(sb.toString()) ? "unknown" : sb.toString();
        } catch (Exception e2) {
            e.l(e2);
            return "unknown";
        }
    }

    private void w(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        try {
            if (com.byazt.kw.jx.jx()) {
                sb.append("MIUI-");
            } else if (com.byazt.kw.jx.j()) {
                sb.append("FLYME-");
            } else {
                String strHp = com.byazt.kw.jx.hp();
                if (com.byazt.kw.jx.hp(strHp)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strHp)) {
                    sb.append(strHp);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
            if (sb.length() > 0) {
                jSONObject.put("rom", sb.toString());
            }
            jSONObject.put("rom_version", zy.hp());
        } catch (Throwable unused) {
        }
    }

    private void jx(JSONObject jSONObject) throws JSONException {
        String str;
        try {
            DisplayMetrics displayMetrics = this.f25391l.getResources().getDisplayMetrics();
            int i2 = displayMetrics.densityDpi;
            if (i2 == 120) {
                str = "ldpi";
            } else if (i2 == 240) {
                str = "hdpi";
            } else if (i2 != 320) {
                str = "mdpi";
            } else {
                str = "xhdpi";
            }
            jSONObject.put("density_dpi", i2);
            jSONObject.put("display_density", str);
            jSONObject.put(bv.f48925z, displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
        } catch (Exception unused) {
        }
    }

    @SuppressLint({"MissingPermission"})
    private void hp(JSONObject jSONObject) throws JSONException {
        int i2;
        try {
            ApplicationInfo applicationInfo = this.f25391l.getPackageManager().getPackageInfo(this.f25391l.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null && (i2 = applicationInfo.labelRes) > 0) {
                jSONObject.put(bv.f48918s, this.f25391l.getString(i2));
            }
            jSONObject.put("sdk_version", MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME);
            jSONObject.put("sdk_version_name", "0.0.1-alpha.18-cloud");
            jSONObject.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
            jSONObject.put(bv.f48924y, jx());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(bv.f48879F, Build.BRAND);
            jSONObject.put(bv.f48881H, Build.MANUFACTURER);
            jSONObject.put("cpu_abi", l());
        } catch (Exception unused) {
        }
    }

    private void l(JSONObject jSONObject) throws JSONException {
        Map<String, Object> mapL;
        Object obj;
        com.byazt.bb.hp hpVarHp = s.hp();
        if (hpVarHp == null || jSONObject == null || (mapL = hpVarHp.l()) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (String str : mapL.keySet()) {
                if (!TextUtils.isEmpty(str) && (obj = mapL.get(str)) != null) {
                    jSONObject2.put(str, obj);
                }
            }
            jSONObject.put("custom", jSONObject2);
        } catch (Exception e2) {
            e.l(e2);
        }
    }

    public JSONObject l(String str) throws JSONException {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.jx.put("user_id", str);
            }
        } catch (JSONException unused) {
        }
        return this.jx;
    }

    public JSONObject hp(@Nullable Map<String, Object> map) {
        if (map == null) {
            return this.jx;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!this.jx.has(entry.getKey())) {
                this.jx.put(entry.getKey(), entry.getValue());
            }
        }
        for (String str : hp) {
            if (map.containsKey(str)) {
                try {
                    this.jx.put(str, Integer.parseInt((String) map.get(str)));
                } catch (Exception unused) {
                    this.jx.put(str, map.get(str));
                }
            }
        }
        if (map.containsKey("version_code") && !map.containsKey("manifest_version_code")) {
            this.jx.put("manifest_version_code", Integer.parseInt((String) map.get("version_code")));
        }
        if (map.containsKey("iid")) {
            this.jx.put("udid", map.get("iid"));
            this.jx.remove("iid");
        }
        return this.jx;
    }

    public JSONObject hp(String str) throws JSONException {
        try {
            this.jx.put("device_id", str);
        } catch (JSONException unused) {
        }
        return this.jx;
    }

    public JSONObject hp() {
        return this.jx;
    }
}
