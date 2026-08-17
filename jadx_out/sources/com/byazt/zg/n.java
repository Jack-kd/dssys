package com.byazt.zg;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.kc.AbsServerManager;
import com.byazt.rz.PluginConstants;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n {
    public static JSONObject hp() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
            jSONObject.put(bv.f48923x, jlVar.getOs());
            String strHp = DeviceUtils.hp((Boolean) null);
            jSONObject.put("imei", strHp);
            jSONObject.put("imei_md5", sz.hp(strHp));
            jSONObject.put("oaid", jxVar.getOAID(false));
            jSONObject.put("applog_did", jxVar.getDid());
            jSONObject.put("device_model", jlVar.getDeviceModel());
            jSONObject.put("vendor", jlVar.getVendor());
            jSONObject.put("ua", jlVar.getUserAgent());
            jSONObject.put("ip", com.byazt.zn.ec.hp());
            jSONObject.put("package_name", nu.hp());
            jSONObject.put("publisher_did", com.byazt.di.hp.jl().vv());
            jSONObject.put("android_id", DeviceUtils.l());
            jSONObject.put(bv.f48924y, jlVar.getOsVersion());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
            String strHp = DeviceUtils.hp((Boolean) null);
            jSONObject.put("imei", strHp);
            jSONObject.put("imei_md5", sz.hp(strHp));
            jSONObject.put("applog_did", jxVar.getDid());
            jSONObject.put("publisher_did", com.byazt.di.hp.jl().vv());
            jSONObject.put("android_id", DeviceUtils.l());
            jSONObject.put("oaid", jxVar.getOAID(false));
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Context context = com.byazt.di.l.getContext();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            String did = ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid();
            jSONObject.put("device_id", did);
            if (TextUtils.isEmpty(did)) {
                did = UUID.randomUUID().toString();
            }
            jSONObject.put("user_unique_id", did);
            jSONObject.put("sdk_version", com.byazt.rt.l.l());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
            jSONObject.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
            jSONObject.put(bv.f48924y, jlVar.getOsVersion());
            jSONObject.put("device_model", jlVar.getDeviceModel());
            jSONObject.put(bv.f48925z, com.byazt.aw.a.jx(com.byazt.di.l.getContext()) + "x" + com.byazt.aw.a.l(com.byazt.di.l.getContext()));
            jSONObject.put("language", jlVar.getLanguage());
            jSONObject.put("timezone", jlVar.getTimeZoneInt());
            jSONObject.put(bv.f48890Q, ns.jx());
            jSONObject.put("openudid", DeviceUtils.l());
            jSONObject.put("aid", "5685");
            jSONObject.put(bv.f48918s, eb.l());
            jSONObject.put("app_version", eb.hp());
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, nu.hp());
            jSONObject.put("region", Locale.getDefault().getCountry());
            jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
            jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
            jSONObject.put("rom", jlVar.getRom());
            jSONObject.put(bv.f48881H, Build.MANUFACTURER);
            hp(context, jSONObject);
            jSONObject.put("display_density", xh.a());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("density_dpi", com.byazt.aw.a.w(context));
            jSONObject.put(bv.f48879F, Build.BRAND);
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", jlVar.getBuildSerial());
            jSONObject.put("version_code", nu.l());
            jSONObject.put("udid", DeviceUtils.hp((Boolean) null));
            jSONObject.put("custom", jx());
            String strHp = com.byazt.zn.ec.hp();
            if (TextUtils.isEmpty(strHp)) {
                strHp = "127.0.0.1";
            } else if (strHp.contains(",")) {
                strHp = hp(strHp);
            }
            jSONObject.put("ip", strHp);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject hp(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            jSONObject.put("imei", DeviceUtils.hp((Boolean) null));
            jSONObject.put("android_id", DeviceUtils.l());
            jSONObject.put("uuid", com.byazt.lca.hp.jx());
            jSONObject.put("ssid", jlVar.getSSID(null));
            jSONObject.put("wifi_mac", jlVar.getWifiMac(null));
            jSONObject.put("imsi", jlVar.getImsi(null));
            StringBuilder sb = new StringBuilder();
            sb.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb.toString());
            jSONObject.put("rom_version", di.hp());
            jSONObject.put("sys_compiling_time", jlVar.getCompilingTime());
            jSONObject.put("type", jlVar.getDeviceType(false));
            jSONObject.put(bv.f48923x, jlVar.getOs());
            jSONObject.put(bv.f48924y, jlVar.getOsVersion());
            jSONObject.put("vendor", jlVar.getVendor());
            jSONObject.put("device_model", jlVar.getDeviceModel());
            jSONObject.put("language", jlVar.getLanguage());
            jSONObject.put("conn_type", com.byazt.zn.ns.hp());
            jSONObject.put("mac", jlVar.getMacAddress(null));
            jSONObject.put("screen_width", com.byazt.aw.a.l(context));
            jSONObject.put("screen_height", com.byazt.aw.a.jx(context));
            jSONObject.put("oaid", ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false));
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static void hp(Context context, JSONObject jSONObject) throws JSONException {
        ArrayList<String> arrayListHp;
        if (context == null || jSONObject == null || (arrayListHp = s.hp(context, "MD5")) == null || arrayListHp.isEmpty()) {
            return;
        }
        try {
            jSONObject.put("sig_hash", Build.MANUFACTURER);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static String hp(String str) {
        String[] strArrSplit = str.split(",");
        if (strArrSplit != null && strArrSplit.length > 0 && !TextUtils.isEmpty(strArrSplit[0])) {
            return strArrSplit[0].trim();
        }
        return "127.0.0.1";
    }
}
