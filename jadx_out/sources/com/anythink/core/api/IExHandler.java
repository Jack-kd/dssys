package com.anythink.core.api;

import android.content.Context;
import android.webkit.GeolocationPermissions;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.k.d;
import com.anythink.core.e.b;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface IExHandler {
    void addPlLoadStateListener(d dVar);

    ATEventInterface createDataFetchListener(ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, ATEventInterface aTEventInterface);

    String fillCDataParam(String str);

    void fillRequestData(JSONObject jSONObject, b bVar);

    void fillRequestData(JSONObject jSONObject, b bVar, int i2);

    void fillRequestDeviceData(JSONObject jSONObject, int i2);

    void fillTestDeviceData(JSONObject jSONObject, b bVar);

    String getAid(Context context);

    JSONObject getCnDInfo();

    String getDefaultMarketSchemePackageName();

    String getUniqueId(Context context);

    void initDeviceInfo(Context context);

    boolean isContainsPlStr(String str);

    boolean onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback);

    void resetSSID();

    void startPlugin(Context context);

    void startRefreshes(long j2);

    void startUpDateUPID(Context context);

    void uploadAegisData(b bVar);
}
