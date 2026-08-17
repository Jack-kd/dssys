package com.bytedance.pangle;

import android.app.Application;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Keep;
import com.byazt.anq.hp;
import com.byazt.hu.j;
import com.byazt.ld.w;
import com.byazt.ye.gu;
import com.byazt.ye.jl;
import com.byazt.ye.jx;
import com.byazt.ye.k;
import com.byazt.ye.l;
import com.byazt.ye.zy;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@Keep
/* loaded from: classes3.dex */
public class Zeus {
    public static Application sApplication;
    public static volatile Function sMainService;
    public static final HashMap<String, ProviderInfo> serverManagerHashMap = new HashMap<>();
    public static final Object wait = new Object();

    public static void addExternalAssetsForPlugin(String str, String str2) {
        Plugin plugin;
        Resources resources;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (plugin = getPlugin(str)) == null || (resources = plugin.mResources) == null) {
            return;
        }
        new hp().hp(resources.getAssets(), str2, false);
    }

    public static void addPackageDexManager(String str, JSONObject jSONObject) {
        Map<String, JSONObject> mapW = gu.hp().w();
        if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        mapW.put(str, jSONObject);
    }

    public static void addPluginEventCallback(zy zyVar) {
        gu.hp().hp(zyVar);
    }

    public static Application getAppApplication() {
        if (sApplication == null) {
            l.hp();
            try {
                sApplication = (Application) MethodUtils.invokeMethod(com.byazt.hu.hp.hp(), "getApplication", new Object[0]);
            } catch (Throwable unused) {
            }
        }
        return sApplication;
    }

    public static String getHostAbi() {
        return com.byazt.hu.l.hp();
    }

    public static int getHostAbiBit() {
        return com.byazt.hu.l.l();
    }

    public static int getInstalledPluginVersion(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            return -1;
        }
        int version = plugin.getVersion();
        ZeusLogger.d(ZeusLogger.TAG_DOWNLOAD, " getInstalledPluginVersion, " + str + " = " + version);
        return version;
    }

    public static Function getMainService() {
        return sMainService;
    }

    public static int getMaxInstallVer(String str) {
        if (j.l(getAppApplication())) {
            return getPlugin(str).getInstalledMaxVer();
        }
        return -1;
    }

    public static Plugin getPlugin(String str) {
        return getPlugin(str, true);
    }

    public static HashMap<String, ProviderInfo> getServerManagerHashMap() {
        return serverManagerHashMap;
    }

    public static boolean hasInit() {
        return gu.hp().l();
    }

    public static void hookHuaWeiVerifier(Application application) {
        com.byazt.zw.hp.hp(application);
    }

    public static void init(Application application) throws Throwable {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_common", "start init");
        gu.hp().hp(application);
        Object obj = wait;
        synchronized (obj) {
            obj.notifyAll();
        }
        com.byazt.kx.hp.l().jx();
    }

    public static void installFromDownloadDir() {
        if (j.l(getAppApplication())) {
            PluginManager.getInstance().installFromDownloadDir();
        }
    }

    public static boolean isPluginInstalled(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        return plugin != null && plugin.isInstalled();
    }

    public static boolean isPluginLoaded(String str) {
        return PluginManager.getInstance().isLoaded(str);
    }

    public static boolean loadPlugin(String str) {
        return PluginManager.getInstance().loadPlugin(str);
    }

    public static void registerPluginInstallListener(k kVar) {
        try {
            jx jxVarHp = com.byazt.kc.l.hp();
            if (jxVarHp != null) {
                jxVarHp.hp(kVar.hashCode(), new com.byazt.km.l(kVar));
            }
        } catch (RemoteException e2) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "registerPluginInstallListener error.", e2);
        }
    }

    public static void registerPluginStateListener(ZeusPluginStateListener zeusPluginStateListener) {
        gu.hp().hp(zeusPluginStateListener);
    }

    public static void removePluginEventCallback(zy zyVar) {
        gu.hp().l(zyVar);
    }

    public static void setAppContext(Application application) {
        if (application != null && TextUtils.equals(application.getClass().getSimpleName(), "PluginApplicationWrapper")) {
            try {
                sApplication = (Application) FieldUtils.readField(application, "mOriginApplication");
                return;
            } catch (Throwable unused) {
            }
        }
        sApplication = application;
    }

    public static void setDecodeCallback(jl jlVar) {
        gu.hp().hp(jlVar);
    }

    public static void setMainService(Function function) {
        if (sMainService != null || function == null) {
            return;
        }
        sMainService = function;
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 0);
        function.apply(sparseArray);
    }

    public static boolean syncInstallPlugin(String str, String str2) {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_plugin_install", "start");
        jx jxVarHp = com.byazt.kc.l.hp();
        if (jxVarHp == null) {
            return false;
        }
        try {
            return jxVarHp.hp(str, str2);
        } catch (RemoteException e2) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "syncInstallPlugin error.", e2);
            return false;
        }
    }

    public static void triggerBgDexOpt() {
        w.hp();
    }

    public static void unInstallPlugin(String str) {
        PluginManager.getInstance().unInstallPackage(str);
    }

    public static void unregisterPluginStateListener(ZeusPluginStateListener zeusPluginStateListener) {
        gu.hp().l(zeusPluginStateListener);
    }

    public static boolean waitInit(int i2) {
        if (gu.hp().l()) {
            return true;
        }
        Object obj = wait;
        synchronized (obj) {
            try {
                if (!gu.hp().l()) {
                    try {
                        if (i2 == -1) {
                            obj.wait();
                        } else {
                            obj.wait(i2);
                        }
                    } catch (InterruptedException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gu.hp().l();
    }

    public void unregisterPluginInstallListener(k kVar) {
        try {
            jx jxVarHp = com.byazt.kc.l.hp();
            if (jxVarHp != null) {
                jxVarHp.hp(kVar.hashCode());
            }
        } catch (RemoteException e2) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "unregisterPluginInstallListener error.", e2);
        }
    }

    public static Plugin getPlugin(String str, boolean z2) {
        return PluginManager.getInstance().getPlugin(str, z2);
    }

    public static void unInstallPlugin(String str, int i2) {
        Plugin plugin = getPlugin(str);
        if (plugin != null) {
            if (i2 > 0) {
                plugin.unInstall(i2);
            } else {
                com.byazt.lc.zy.hp().eb(str);
            }
        }
    }

    public static boolean isPluginInstalled(String str, boolean z2) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str, false);
        return plugin != null && plugin.isInstalled();
    }
}
