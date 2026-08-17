package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;

@Keep
/* loaded from: classes4.dex */
public class XiaomiDeviceIDHelper {
    private static final String TAG = "XiaomiDeviceIDHelper";
    private Context mContext;

    public XiaomiDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    public String getOAID() {
        String str;
        Exception e2;
        try {
            str = (String) OaidJavaCalls.callMethod(OaidJavaCalls.newInstance("com.android.id.impl.IdProviderImpl", new Object[0]), "getOAID", this.mContext);
        } catch (Exception e3) {
            str = "";
            e2 = e3;
        }
        try {
            LiteApiLogger.i(TAG, "getOAID oaid:" + str);
            return str;
        } catch (Exception e4) {
            e2 = e4;
            LiteApiLogger.i(TAG, "getOAID fail");
            LiteApiLogger.printStackTraceOnly(e2);
            return str;
        }
    }
}
