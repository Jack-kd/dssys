package com.anythink.network.sigmob;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.sigmob.windad.WindAds;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SigmobBidRequestInfo extends ATBidRequestInfo {

    /* renamed from: a, reason: collision with root package name */
    String f10246a;

    /* renamed from: b, reason: collision with root package name */
    JSONObject f10247b = new JSONObject();

    public SigmobBidRequestInfo(Map<String, Object> map, Map<String, Object> map2) {
        try {
            String string = map.get("app_id").toString();
            String string2 = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY).toString();
            String string3 = map.get("placement_id").toString();
            this.f10246a = WindAds.sharedAds().getSDKToken();
            this.f10247b.put("unit_id", string3);
            this.f10247b.put("app_id", string);
            this.f10247b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY, string2);
            this.f10247b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.NETWORK_SDK_VERSION, SigmobATInitManager.getInstance().getNetworkVersion());
            this.f10247b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BUYERUID, this.f10246a);
        } catch (Throwable unused) {
        }
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f10246a);
    }

    @Override // com.anythink.core.api.ATBidRequestInfo
    public JSONObject toRequestJSONObject() {
        return this.f10247b;
    }
}
