package com.smartdigimkt.i3;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.GeolocationPermissions;
import com.anythink.core.common.v.o;
import com.smartdigimkt.sdk.api.IDlHandler;
import com.smartdigimkt.sdk.api.IExHandler;
import com.smartdigimkt.sdk.api.IExHandlerBaseAd;
import com.smartdigimkt.sdk.api.IOdHandler;
import com.smartdigimkt.sdk.api.IOsExHandler;
import com.smartdigimkt.sdk.api.SDMDmEntity;
import com.smartdigimkt.sdk.api.SDMEventInterface;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b implements IExHandler, IDlHandler, IOdHandler, IOsExHandler {

    /* renamed from: a, reason: collision with root package name */
    public final IExHandler f40728a;

    /* renamed from: b, reason: collision with root package name */
    public final IDlHandler f40729b;

    /* renamed from: c, reason: collision with root package name */
    public final IOdHandler f40730c;

    public b(IExHandler iExHandler, IDlHandler iDlHandler, IOdHandler iOdHandler) {
        this.f40728a = iExHandler;
        this.f40729b = iDlHandler;
        this.f40730c = iOdHandler;
    }

    public final boolean a() {
        return this.f40729b != null;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final int checkDataFetchType(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            return iDlHandler.checkDataFetchType(cVar, aVar);
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.IOdHandler
    public final boolean checkDebuggerDevice(Context context, String str) {
        IOdHandler iOdHandler = this.f40730c;
        if (iOdHandler != null) {
            return iOdHandler.checkDebuggerDevice(context, str);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void cleanExpiredInfo() {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.cleanExpiredInfo();
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final SDMEventInterface createDataFetchListener(SDMEventInterface sDMEventInterface) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            return iDlHandler.createDataFetchListener(sDMEventInterface);
        }
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public final String fillCDataParam(String str) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            str = iExHandler.fillCDataParam(str);
        }
        IOdHandler iOdHandler = this.f40730c;
        if (iOdHandler != null) {
            str = iOdHandler.fillCDataParam(str);
        }
        return !TextUtils.isEmpty(str) ? str.replace("at_device1", "").replace("at_device2", "").replace("at_device3", "") : str;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void fillDataFetchStatus(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.fillDataFetchStatus(context, cVar, aVar);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final void fillRequestData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.fillRequestData(jSONObject, aVar);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void fillRequestDataForDl(JSONObject jSONObject) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.fillRequestDataForDl(jSONObject);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final void fillRequestDeviceData(JSONObject jSONObject, int i2) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.fillRequestDeviceData(jSONObject, i2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public final void fillTestDeviceData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.fillTestDeviceData(jSONObject, aVar);
        }
        IOdHandler iOdHandler = this.f40730c;
        if (iOdHandler != null) {
            iOdHandler.fillTestDeviceData(jSONObject, aVar);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final String getAid(Context context) {
        IExHandler iExHandler = this.f40728a;
        return iExHandler != null ? iExHandler.getAid(context) : "";
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final IExHandlerBaseAd getBaseAdHandler() {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            return iDlHandler.getBaseAdHandler();
        }
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.IOsExHandler
    public final String getCdnUrl() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final String getDefaultMarketSchemePackageName() {
        IExHandler iExHandler = this.f40728a;
        return iExHandler != null ? iExHandler.getDefaultMarketSchemePackageName() : o.a.f8258a;
    }

    @Override // com.smartdigimkt.sdk.api.IOsExHandler
    public final SDMDmEntity getDmEntity() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.IOsExHandler
    public final String getGdprUrl() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public final String getUniqueId(Context context) {
        IOdHandler iOdHandler;
        IExHandler iExHandler = this.f40728a;
        String uniqueId = iExHandler != null ? iExHandler.getUniqueId(context) : "";
        return (!TextUtils.isEmpty(uniqueId) || (iOdHandler = this.f40730c) == null) ? uniqueId : iOdHandler.getUniqueId(context);
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void handleOfferClick(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, Runnable runnable, com.smartdigimkt.s3.b bVar) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.handleOfferClick(context, aVar, cVar, str, str2, runnable, bVar);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public final void initDeviceInfo(Context context) {
        IOdHandler iOdHandler = this.f40730c;
        if (iOdHandler != null) {
            iOdHandler.initDeviceInfo(context);
        }
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.initDeviceInfo(context);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final boolean initPlugin(Context context) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            return iExHandler.initPlugin(context);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final boolean isContainsPlStr(String str) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            return iExHandler.isContainsPlStr(str);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void onAppForegroundStatusChanged(boolean z2) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.onAppForegroundStatusChanged(z2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void onApplicationBoot() {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.onApplicationBoot();
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final boolean onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            return iExHandler.onGeolocationPermissionsShowPrompt(str, callback);
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void openDataConfirmDialog(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.s3.a aVar2) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.openDataConfirmDialog(context, cVar, aVar, aVar2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public final void registerMarketReceiver(com.smartdigimkt.m3.c cVar) {
        IDlHandler iDlHandler = this.f40729b;
        if (iDlHandler != null) {
            iDlHandler.registerMarketReceiver(cVar);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final void resetSSID() {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.resetSSID();
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public final void startRefreshes(long j2) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.startRefreshes(j2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public final void fillRequestData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar, int i2) {
        IExHandler iExHandler = this.f40728a;
        if (iExHandler != null) {
            iExHandler.fillRequestData(jSONObject, aVar, i2);
        }
        IOdHandler iOdHandler = this.f40730c;
        if (iOdHandler != null) {
            iOdHandler.fillRequestData(jSONObject, aVar, i2);
        }
    }
}
