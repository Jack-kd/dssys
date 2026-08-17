package com.anythink.core.api;

import android.content.Context;
import com.anythink.core.api.bridge.NetworkAgentEventManager;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.p;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ATInitMediation {
    public static final String KEY_LOCAL = "anythink_local";
    protected String devBundleName;

    public static boolean getBooleanFromMap(Map<String, Object> map, String str) {
        return getBooleanFromMap(map, str, false);
    }

    public static double getDoubleFromMap(Map<String, Object> map, String str) {
        return getDoubleFromMap(map, str, 0.0d);
    }

    public static int getIntFromMap(Map<String, Object> map, String str) {
        return getIntFromMap(map, str, 0);
    }

    public static long getLongFromMap(Map<String, Object> map, String str) {
        return getLongFromMap(map, str, 0L);
    }

    public static String getStringFromMap(Map<String, Object> map, String str) {
        return getStringFromMap(map, str, "");
    }

    public final void checkToSaveInitData(String str, Map<String, Object> map, String... strArr) {
        s.b().a(str, map, strArr);
    }

    public List getActivityStatus() {
        return null;
    }

    public abstract int getAdapterBridgeVersion();

    public String getAdapterVersion() {
        return "";
    }

    public String getBundleName() {
        return s.b().U();
    }

    public String getDevBundleName() {
        return this.devBundleName;
    }

    public List getMetaValutStatus() {
        return null;
    }

    public String getNetworkName() {
        return "";
    }

    public String getNetworkSDKClass() {
        return "";
    }

    public String getNetworkVersion() {
        return "";
    }

    public List getPermissionStatus() {
        return null;
    }

    public Map<String, Boolean> getPluginClassStatus() {
        return null;
    }

    public List getProviderStatus() {
        return null;
    }

    public List getResourceStatus() {
        return null;
    }

    public List getServiceStatus() {
        return null;
    }

    public String getUserId() {
        Map<String, Object> mapM = s.b().m();
        return mapM != null ? getStringFromMap(mapM, "user_id") : "";
    }

    public abstract void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback);

    public boolean needCheckAdapterVersion() {
        return true;
    }

    public final void runOnMainThread(Runnable runnable) {
        s.b();
        s.b(runnable);
    }

    public final void runOnThreadPool(Runnable runnable) {
        c.a().a(new d(e.ag, runnable), false);
    }

    public final void sendNetworkEvent(final int i2, final int i3, final Map<String, Object> map) {
        c.a().e(new d(e.ah, new Runnable() { // from class: com.anythink.core.api.ATInitMediation.1
            @Override // java.lang.Runnable
            public final void run() {
                NetworkAgentEventManager.handNetworkAgentEvent(i2, i3, map);
            }
        }));
    }

    public void setDevBundleName(String str) {
        this.devBundleName = str;
    }

    public boolean setUserDataConsent(Context context, boolean z2, boolean z3) {
        return false;
    }

    public static boolean getBooleanFromMap(Map<String, Object> map, String str, boolean z2) {
        return ((Boolean) p.a(map, str, Boolean.valueOf(z2))).booleanValue();
    }

    public static double getDoubleFromMap(Map<String, Object> map, String str, double d2) {
        return ((Double) p.a(map, str, Double.valueOf(d2))).doubleValue();
    }

    public static int getIntFromMap(Map<String, Object> map, String str, int i2) {
        return ((Integer) p.a(map, str, Integer.valueOf(i2))).intValue();
    }

    public static long getLongFromMap(Map<String, Object> map, String str, long j2) {
        return ((Long) p.a(map, str, Long.valueOf(j2))).longValue();
    }

    public static String getStringFromMap(Map<String, Object> map, String str, String str2) {
        return (String) p.a(map, str, str2);
    }
}
