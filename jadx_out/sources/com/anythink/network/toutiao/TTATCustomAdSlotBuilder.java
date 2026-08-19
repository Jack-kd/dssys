package com.anythink.network.toutiao;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATSDK;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TTATCustomAdSlotBuilder extends AdSlot.Builder {

    /* renamed from: a, reason: collision with root package name */
    private final String f10329a = getClass().getSimpleName();

    private TTATCustomAdSlotBuilder() {
    }

    public TTATCustomAdSlotBuilder(String str, Map<String, Object> map, Map<String, Object> map2) {
        setCodeId(str);
        try {
            if (map.containsKey(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_LOAD_SEQ)) {
                int iIntValue = ((Integer) map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_LOAD_SEQ)).intValue();
                ATSDK.isNetworkLogDebug();
                setAdloadSeq(iIntValue);
            }
        } catch (Throwable unused) {
        }
        try {
            if (map.containsKey(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.CONTENT)) {
                String strOptString = new JSONObject((String) map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.CONTENT)).optString("slot_id", "");
                if (!TextUtils.isEmpty(strOptString)) {
                    ATSDK.isNetworkLogDebug();
                    setPrimeRit(strOptString);
                }
            }
        } catch (Throwable unused2) {
        }
        if (map2 != null && map2.containsKey(TTATConst.AD_LOAD_TYPE)) {
            Object obj = map2.get(TTATConst.AD_LOAD_TYPE);
            if (obj instanceof TTAdLoadType) {
                setAdLoadType((TTAdLoadType) obj);
            }
        }
        if (map2 != null) {
            try {
                String string = map2.get(ATAdConst.KEY.USER_CUSTOM_DATA) != null ? map2.get(ATAdConst.KEY.USER_CUSTOM_DATA).toString() : "";
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                setUserData(string);
            } catch (Exception unused3) {
            }
        }
    }
}
