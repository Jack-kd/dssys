package com.smartdigimkt.sdk.api;

import android.content.Context;
import android.location.Location;
import android.util.Log;
import com.anythink.core.common.d.t;
import com.smartdigimkt.c3.g;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.h4.a;
import com.smartdigimkt.i3.c;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class SDMSetting {
    public void deniedUploadDeviceInfo(String... strArr) {
        a aVar = SDKContext.getInstance().f44127p;
        if (aVar == null || strArr == null || strArr.length == 0) {
            return;
        }
        Collections.addAll(aVar.f40589a, strArr);
    }

    public void setDebug(boolean z2) {
        SDKContext.getInstance().f44105D = z2;
    }

    public void setDelayInspectTime(long j2) {
        if (j2 >= 0) {
            g.f39680h = j2;
            return;
        }
        Log.e("sdm", "The inspectInterval(" + j2 + ") is invalid.");
    }

    public void setEnableGetDeviceInfoInBg(boolean z2) {
        g.f39677e = z2;
    }

    public void setEnableGetRunningAppProcesses(boolean z2) {
        g.f39678f = z2;
    }

    public void setExcludePkgList(List<String> list) {
        com.smartdigimkt.f4.a aVar = SDKContext.getInstance().f44129r;
        aVar.f40272a = list;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    aVar.f40273b = new JSONArray((Collection) aVar.f40272a);
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        aVar.f40273b = null;
    }

    public void setGDPRUploadDataLevel(Context context, int i2) {
        if (context == null) {
            Log.e("sdm", "setGDPRUploadDataLevel: context should not be null");
            return;
        }
        if (i2 != 0 && i2 != 1) {
            Log.e("sdm", "GDPR level setting error!!! Level must be PERSONALIZED or NONPERSONALIZED.");
            return;
        }
        c cVarA = c.a(context);
        cVarA.f40733b = i2;
        y.b(cVarA.f40732a, "sdm_adx_rp_sdk", t.a.f3047p, i2);
    }

    public void setInspectInterval(long j2) {
        if (j2 >= 0) {
            g.f39679g = j2;
            return;
        }
        Log.e("sdm", "The inspectInterval(" + j2 + ") is invalid.");
    }

    public void setLocation(Location location) {
        g.f39674b = location;
    }

    public void setPersonalizedAdStatus(int i2) {
        g.f39673a = i2;
    }

    public void setTagForChildDirectedTreatment(boolean z2) {
        a aVar = SDKContext.getInstance().f44127p;
        if (aVar != null) {
            aVar.f40590b = z2;
        }
    }

    public void setUserDeviceInfo(SDMUserDeviceInfo sDMUserDeviceInfo) {
        g.f39676d = sDMUserDeviceInfo;
        Objects.toString(sDMUserDeviceInfo);
    }

    public void setWxAppId(String str) {
        SDKContext.getInstance().f44120i = str;
    }

    public void setWxInstallStatus(boolean z2) {
        g.f39675c = z2 ? 1 : 2;
    }

    public void undeniedUploadDeviceInfo(String... strArr) {
        a aVar = SDKContext.getInstance().f44127p;
        if (aVar != null) {
            for (String str : strArr) {
                aVar.f40589a.remove(str);
            }
        }
    }
}
