package com.anythink.network.ubix;

import android.text.TextUtils;
import com.anythink.core.api.ATSDKGlobalSetting;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATConst {
    public static final int NETWORK_FIRM_ID = 106;

    /* renamed from: a, reason: collision with root package name */
    private static String f10476a = "";

    public static String getNetworkVersion() {
        if (!TextUtils.isEmpty(f10476a)) {
            return f10476a;
        }
        Field declaredField = com.ubix.ssp.BuildConfig.class.getDeclaredField("sdkVersion");
        declaredField.setAccessible(true);
        f10476a = (String) declaredField.get(null);
        try {
            if (TextUtils.isEmpty(f10476a)) {
                f10476a = "2.10.2.11";
            }
        } catch (Throwable unused) {
        }
        return f10476a;
    }

    public static HashMap<String, String> toExtraMap(Map<String, Object> map) {
        HashMap<String, String> map2 = new HashMap<>();
        Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(106);
        if (boolIsShakeEnabled != null && !boolIsShakeEnabled.booleanValue()) {
            map2.put("sensor_disabled", "1");
        }
        if (map != null && !map.isEmpty()) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (key != null && (value instanceof String)) {
                        map2.put(key, (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return map2;
    }
}
