package com.byazt.zy;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.aj.s;
import com.byazt.kc.AbsServerManager;
import com.byazt.kw.e;
import com.byazt.ms.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 302, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile JSONObject hp;

    public static void hp(l lVar) {
        Map<String, Object> mapHp = s.hp().hp();
        if (mapHp == null && mapHp.get("aid") == null) {
            return;
        }
        try {
            com.byazt.ms.l.hp(new w.hp().hp(com.byazt.ms.l.l(mapHp) + "?device_platform=android&version_code=138&iid=iid&aid=" + mapHp.get("aid")).hp(true).hp(hp(mapHp).toString().getBytes("UTF-8")).hp());
        } catch (Throwable unused) {
        }
    }

    private static String hp() {
        String str = Build.VERSION.RELEASE;
        if (str.contains(i.f2495E)) {
            return str;
        }
        return str + ".0";
    }

    private static JSONObject hp(Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        if (hp == null) {
            Context contextJ = s.j();
            try {
                JSONObject jSONObject2 = new JSONObject();
                hp = jSONObject2;
                jSONObject2.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
                hp.put("platform", AnalyticsConstants.SDK_TYPE);
                hp.put("sdk_lib", AnalyticsConstants.SDK_TYPE);
                hp.put(bv.f48924y, hp());
                hp.put("os_api", Build.VERSION.SDK_INT);
                hp.put("use_apm_sdk", "1");
                hp.put("sdk_version", MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME);
                hp.put("sdk_version_code", MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME);
                hp.put("sdk_version_name", "0.0.1-alpha.18-cloud");
                String str = Build.MODEL;
                String str2 = Build.BRAND;
                if (str == null) {
                    str = str2;
                } else if (str2 != null && !str.contains(str2)) {
                    str = str2 + ' ' + str;
                }
                hp.put("device_model", str);
                hp.put(bv.f48879F, str2);
                hp.put(bv.f48881H, Build.MANUFACTURER);
                if (map != null) {
                    hp.put("aid", String.valueOf(map.get("aid")));
                    hp.put("app_version", map.get("app_version"));
                    hp.put("version_code", map.get("version_code"));
                    hp.put("update_version_code", map.get("update_version_code"));
                    hp.put("manifest_version_code", map.get("version_code"));
                    hp.put("channel", map.get("channel"));
                }
                hp.put("bd_did", s.jx().hp());
                hp.put(AbsServerManager.PACKAGE_QUERY_BINDER, contextJ.getPackageName());
                hp.put(bv.f48918s, contextJ.getApplicationInfo().name);
                hp(hp);
            } catch (Exception unused) {
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        jSONObject.put("header", hp);
        jSONObject.put("local_time", jCurrentTimeMillis);
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject3 = new JSONObject();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        jSONObject3.put("local_time_ms", jCurrentTimeMillis2);
        jSONObject3.put("tea_event_index", 10001);
        jSONObject3.put("session_id", UUID.randomUUID().toString());
        jSONObject3.put("datetime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(jCurrentTimeMillis2)));
        jSONArray.put(jSONObject3);
        jSONObject.put("launch", jSONArray);
        return jSONObject;
    }

    private static void hp(JSONObject jSONObject) throws JSONException {
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
}
