package com.umeng.commonsdk.config;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final long f49879a = 1000;

    /* renamed from: b, reason: collision with root package name */
    public static final String f49880b = "_LAST_FIELD";

    /* renamed from: c, reason: collision with root package name */
    public static final String f49881c = "3749699455";

    /* renamed from: d, reason: collision with root package name */
    public static final String f49882d = "2130669566";

    /* renamed from: e, reason: collision with root package name */
    public static final String f49883e = "262139";

    /* renamed from: f, reason: collision with root package name */
    public static final String f49884f = "1983";

    /* renamed from: g, reason: collision with root package name */
    public static final int f49885g = 64;

    /* renamed from: l, reason: collision with root package name */
    private static Map<String, String[]> f49890l = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public static String[] f49886h = new String[a.values().length];

    /* renamed from: i, reason: collision with root package name */
    public static String[] f49887i = new String[b.values().length];

    /* renamed from: j, reason: collision with root package name */
    public static String[] f49888j = new String[c.values().length];

    /* renamed from: k, reason: collision with root package name */
    public static String[] f49889k = new String[EnumC0860d.values().length];

    public enum a {
        header_utoken,
        header_cpu,
        header_mccmnc,
        header_sub_os_name,
        header_sub_os_version,
        header_device_type,
        header_device_id_imei,
        header_device_id_mac,
        header_device_id_android_id,
        header_device_id_serialNo,
        header_bulid,
        header_os_version,
        header_resolution,
        header_mc,
        header_timezone,
        header_local_info,
        header_carrier,
        header_access,
        header_tracking_imei,
        header_tracking_android_id,
        header_tracking_utdid,
        header_tracking_idmd5,
        header_tracking_idfa,
        header_tracking_mac,
        header_tracking_serial,
        header_tracking_uuid,
        header_tracking_uop,
        header_tracking_oldumid,
        header_tracking_newumid,
        header_ekv_send_on_exit,
        header_device_oaid,
        header_local_ip,
        header_foreground_count,
        header_first_resume,
        header_sub_os_info,
        header_ntf_switch,
        header_ringer_mode,
        _LAST_FIELD
    }

    public enum b {
        inner_rs,
        inner_by,
        inner_gp,
        inner_to,
        inner_mo,
        inner_ca,
        inner_fl,
        inner_gdf_r,
        inner_thm_z,
        inner_dsk_s,
        inner_sd,
        inner_build,
        inner_sr,
        inner_scr,
        inner_sinfo,
        inner_winfo,
        inner_input,
        inner_bt,
        inner_mem,
        inner_cpu,
        inner_rom,
        inner_bstn,
        inner_cam,
        inner_appls,
        inner_lbs,
        internal_run_server,
        internal_imsi,
        internal_meid,
        tp_tp,
        inner_imei2,
        inner_iccid,
        inner_batt2,
        inner_build2,
        inner_cpu2,
        ccg_switch,
        check_system_app,
        check_pus_permission,
        ekv_smart_check,
        _LAST_FIELD
    }

    public enum c {
        push_cpu,
        push_imei,
        push_mac,
        push_android_id,
        push_serialNo,
        push_settings_android_id,
        push_network_access_mode,
        push_on_line,
        push_time_zone,
        push_locale_info,
        push_resolution,
        push_operator,
        push_utdid,
        push_service_work,
        push_service_name,
        push_intent_exist,
        push_data_data,
        push_notification_enabled,
        _LAST_FIELD
    }

    /* renamed from: com.umeng.commonsdk.config.d$d, reason: collision with other inner class name */
    public enum EnumC0860d {
        share_device_id,
        share_imsi,
        share_iccid,
        share_sn,
        share_net_accmode,
        share_android_id,
        share_wifi_mac,
        share_sd_size,
        share_ssid,
        share_resolution,
        share_conn_type,
        _LAST_FIELD
    }

    static {
        String[] strArr = f49886h;
        if (strArr != null && strArr.length > 0) {
            for (int i2 = 0; i2 < a.values().length; i2++) {
                f49886h[i2] = a.values()[i2].toString();
            }
            Map<String, String[]> map = f49890l;
            if (map != null) {
                map.put(a.class.getName(), f49886h);
            }
        }
        String[] strArr2 = f49887i;
        if (strArr2 != null && strArr2.length > 0) {
            for (int i3 = 0; i3 < b.values().length; i3++) {
                f49887i[i3] = b.values()[i3].toString();
            }
            Map<String, String[]> map2 = f49890l;
            if (map2 != null) {
                map2.put(b.class.getName(), f49887i);
            }
        }
        String[] strArr3 = f49888j;
        if (strArr3 != null && strArr3.length > 0) {
            for (int i4 = 0; i4 < c.values().length; i4++) {
                f49888j[i4] = c.values()[i4].toString();
            }
            Map<String, String[]> map3 = f49890l;
            if (map3 != null) {
                map3.put(c.class.getName(), f49888j);
            }
        }
        String[] strArr4 = f49889k;
        if (strArr4 == null || strArr4.length <= 0) {
            return;
        }
        for (int i5 = 0; i5 < EnumC0860d.values().length; i5++) {
            f49889k[i5] = EnumC0860d.values()[i5].toString();
        }
        Map<String, String[]> map4 = f49890l;
        if (map4 != null) {
            map4.put(EnumC0860d.class.getName(), f49889k);
        }
    }

    public static boolean a(String str) {
        return (str == null || str.length() <= 0 || f49880b.equalsIgnoreCase(str)) ? false : true;
    }

    public static String[] b(String str) {
        if (str == null || str.length() <= 0 || !f49890l.containsKey(str)) {
            return null;
        }
        return f49890l.get(str);
    }
}
