package com.smartdigimkt.dlopt.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.j.f;
import com.smartdigimkt.j.u;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public class ATDownloadHandler {
    public static ATApkManager getATApkManager(Context context) {
        if (!(context instanceof Activity)) {
            Log.e("sdm", "Context must be Activity.");
            return null;
        }
        if (!TextUtils.isEmpty(SDKContext.getInstance().a())) {
            return new f(context, u.a(context));
        }
        Log.e("sdm", "getATApkManager() failed. You should init SDK first.");
        return null;
    }
}
