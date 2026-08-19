package com.anythink.network.gdt;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.qq.e.comm.managers.GDTAdSdk;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class GDTBidRequestInfo extends ATBidRequestInfo {

    /* renamed from: a, reason: collision with root package name */
    String f9765a;

    /* renamed from: b, reason: collision with root package name */
    JSONObject f9766b = new JSONObject();

    public GDTBidRequestInfo(Map<String, Object> map, Map<String, Object> map2) {
        try {
            String string = map.get("app_id").toString();
            String string2 = map.get("unit_id").toString();
            HashMap map3 = new HashMap();
            GDTATInitManager.getInstance().b(map3, map);
            this.f9765a = GDTAdSdk.getGDTAdManger().getBuyerId(map3);
            this.f9766b.put("app_id", string);
            this.f9766b.put("unit_id", string2);
            this.f9766b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BUYERUID, this.f9765a);
            this.f9766b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO, GDTAdSdk.getGDTAdManger().getSDKInfo(string2));
        } catch (Throwable unused) {
        }
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f9765a);
    }

    @Override // com.anythink.core.api.ATBidRequestInfo
    public JSONObject toRequestJSONObject() {
        return this.f9766b;
    }
}
