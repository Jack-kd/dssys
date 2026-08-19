package com.kwad.sdk.core.b.a;

import com.kwad.sdk.monitor.MediaMessageInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class it implements com.kwad.sdk.core.d<MediaMessageInfo.MediaPermissionInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((MediaMessageInfo.MediaPermissionInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((MediaMessageInfo.MediaPermissionInfo) bVar, jSONObject);
    }

    private static void a(MediaMessageInfo.MediaPermissionInfo mediaPermissionInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        mediaPermissionInfo.canReadLocation = jSONObject.optInt("canReadLocation");
        mediaPermissionInfo.getLocation = jSONObject.optInt("getLocation");
        mediaPermissionInfo.getKsLocation = jSONObject.optInt("getKsLocation");
        mediaPermissionInfo.canUsePhoneState = jSONObject.optInt("canUsePhoneState");
        mediaPermissionInfo.getImei = jSONObject.optInt("getImei");
        mediaPermissionInfo.getImeis = jSONObject.optInt("getImeis");
        mediaPermissionInfo.getAndroidId = jSONObject.optInt("getAndroidId");
        mediaPermissionInfo.canUseOaid = jSONObject.optInt("canUseOaid");
        mediaPermissionInfo.getOaid = jSONObject.optInt("getOaid");
        mediaPermissionInfo.canUseMacAddress = jSONObject.optInt("canUseMacAddress");
        mediaPermissionInfo.getMacAddress = jSONObject.optInt("getMacAddress");
        mediaPermissionInfo.canUseNetworkState = jSONObject.optInt("canUseNetworkState");
        mediaPermissionInfo.canUseStoragePermission = jSONObject.optInt("canUseStoragePermission");
        mediaPermissionInfo.canReadInstalledPackages = jSONObject.optInt("canReadInstalledPackages");
        mediaPermissionInfo.getInstalledPackages = jSONObject.optInt("getInstalledPackages");
        mediaPermissionInfo.canReadMacAddress = jSONObject.optInt("canReadMacAddress");
        mediaPermissionInfo.canReadNearbyWifiList = jSONObject.optInt("canReadNearbyWifiList");
        mediaPermissionInfo.canReadICCID = jSONObject.optInt("canReadICCID");
    }

    private static JSONObject b(MediaMessageInfo.MediaPermissionInfo mediaPermissionInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = mediaPermissionInfo.canReadLocation;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadLocation", i2);
        }
        int i3 = mediaPermissionInfo.getLocation;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getLocation", i3);
        }
        int i4 = mediaPermissionInfo.getKsLocation;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getKsLocation", i4);
        }
        int i5 = mediaPermissionInfo.canUsePhoneState;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUsePhoneState", i5);
        }
        int i6 = mediaPermissionInfo.getImei;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getImei", i6);
        }
        int i7 = mediaPermissionInfo.getImeis;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getImeis", i7);
        }
        int i8 = mediaPermissionInfo.getAndroidId;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getAndroidId", i8);
        }
        int i9 = mediaPermissionInfo.canUseOaid;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseOaid", i9);
        }
        int i10 = mediaPermissionInfo.getOaid;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getOaid", i10);
        }
        int i11 = mediaPermissionInfo.canUseMacAddress;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseMacAddress", i11);
        }
        int i12 = mediaPermissionInfo.getMacAddress;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getMacAddress", i12);
        }
        int i13 = mediaPermissionInfo.canUseNetworkState;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseNetworkState", i13);
        }
        int i14 = mediaPermissionInfo.canUseStoragePermission;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseStoragePermission", i14);
        }
        int i15 = mediaPermissionInfo.canReadInstalledPackages;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadInstalledPackages", i15);
        }
        int i16 = mediaPermissionInfo.getInstalledPackages;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getInstalledPackages", i16);
        }
        int i17 = mediaPermissionInfo.canReadMacAddress;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadMacAddress", i17);
        }
        int i18 = mediaPermissionInfo.canReadNearbyWifiList;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadNearbyWifiList", i18);
        }
        int i19 = mediaPermissionInfo.canReadICCID;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadICCID", i19);
        }
        return jSONObject;
    }
}
