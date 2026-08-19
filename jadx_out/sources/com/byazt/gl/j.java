package com.byazt.gl;

import android.content.ComponentCallbacks;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.d.i;
import com.byazt.ik.a;
import com.byazt.lc.q;
import com.byazt.lc.zy;
import com.byazt.ll.l;
import com.byazt.ye.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusApplication;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.pangle.res.PluginResources;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1398, 38})
/* loaded from: classes2.dex */
public class j {
    public static final gu hp = gu.hp();

    private boolean l(String str, Plugin plugin, StringBuilder sb) throws IOException {
        if (q.eb() || q.vv()) {
            sb.append("removeEntry skip 1;");
            return false;
        }
        if ((zy.hp().s(plugin.mPkgName, plugin.getVersion()) & 1) == 0) {
            sb.append("removeEntry skip 2;");
            return false;
        }
        boolean zL = com.byazt.hu.j.l(Zeus.getAppApplication());
        boolean zA = zy.hp().a(plugin.mPkgName, plugin.getVersion());
        if (!zL || !zA) {
            sb.append("removeEntry skip 4 ");
            sb.append(zL);
            sb.append(" ");
            sb.append(zA);
            sb.append(";");
            return false;
        }
        if (zy.hp().eb(plugin.mPkgName, plugin.getVersion())) {
            sb.append("removeEntry skip 3;");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zHp = com.byazt.kh.l.hp(str, true, false, plugin.mPkgName, plugin.getVersion(), 2);
        sb.append("removeEntry cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(";");
        zy.hp().jx(plugin.mPkgName, plugin.getVersion(), true);
        return zHp;
    }

    public boolean hp(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, plugin == null, pkg = ".concat(String.valueOf(str)));
            return false;
        }
        if (!plugin.isInstalled()) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, UN_INSTALLED, ".concat(String.valueOf(str)));
            return false;
        }
        if (plugin.isLoading()) {
            return false;
        }
        if (plugin.isLoaded()) {
            return true;
        }
        synchronized (plugin) {
            try {
                if (plugin.isLoaded()) {
                    return true;
                }
                plugin.setLifeCycle(4);
                gu guVar = hp;
                guVar.hp(2000, 0, plugin.mPkgName, plugin.getVersion(), null);
                com.byazt.qva.l lVarHp = com.byazt.qva.l.hp(ZeusLogger.TAG_LOAD, "PluginLoader", "loadPlugin:".concat(String.valueOf(str)));
                hp(com.byazt.ll.l.f22634s, l.hp.ud, plugin.mPkgName, plugin.getVersion(), -1L, (String) null);
                ZeusPluginStateListener.postStateChange(str, 8, new Object[0]);
                StringBuilder sb = new StringBuilder();
                boolean zHp = plugin.isIsDexPlugin() ? com.byazt.bh.l.hp(plugin, sb) : hp(str, plugin, sb);
                if ((plugin instanceof hp) && plugin.isIsDexPlugin()) {
                    ((hp) plugin).hp();
                }
                lVarHp.hp("loadPluginInternal:".concat(String.valueOf(zHp)));
                if (zHp) {
                    plugin.setLifeCycle(3);
                    hp(com.byazt.ll.l.f22633q, l.hp.nu, plugin.mPkgName, plugin.getVersion(), lVarHp.hp(), sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 9, new Object[0]);
                    guVar.hp(2100, 0, plugin.mPkgName, plugin.getVersion(), null);
                } else {
                    plugin.setLifeCycle(2);
                    sb.append("plugin:");
                    sb.append(plugin.mPkgName);
                    sb.append(" versionCode:");
                    sb.append(plugin.getVersion());
                    sb.append("load failed;");
                    hp(com.byazt.ll.l.f22633q, l.hp.dy, plugin.mPkgName, plugin.getVersion(), -1L, sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 10, new Object[0]);
                    guVar.hp(2100, -1, plugin.mPkgName, plugin.getVersion(), null);
                }
                ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader loadFinished, ".concat(String.valueOf(plugin)));
                if (!plugin.isLoaded()) {
                    return false;
                }
                ZeusLogger.d(ZeusLogger.TAG_LOAD, "PluginLoader postResult, LOADED " + plugin.mPkgName);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x018e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(final java.lang.String r16, final com.bytedance.pangle.plugin.Plugin r17, final java.lang.StringBuilder r18) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gl.j.hp(java.lang.String, com.bytedance.pangle.plugin.Plugin, java.lang.StringBuilder):boolean");
    }

    private void hp(Plugin plugin, StringBuilder sb, PackageInfo packageInfo) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        ActivityInfo[] activityInfoArr = packageInfo.activities;
        if (activityInfoArr != null) {
            for (ActivityInfo activityInfo : activityInfoArr) {
                if (!TextUtils.isEmpty(activityInfo.processName) && activityInfo.processName.contains(":")) {
                    activityInfo.processName = activityInfo.processName.split(":")[1];
                } else {
                    activityInfo.processName = "main";
                }
                plugin.pluginActivities.put(activityInfo.name, activityInfo);
            }
        }
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                if (!TextUtils.isEmpty(serviceInfo.processName) && serviceInfo.processName.contains(":")) {
                    serviceInfo.processName = serviceInfo.processName.split(":")[1];
                } else {
                    serviceInfo.processName = "main";
                }
                plugin.pluginServices.put(serviceInfo.name, serviceInfo);
            }
        }
        ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
        if (activityInfoArr2 != null) {
            for (ActivityInfo activityInfo2 : activityInfoArr2) {
                if (!TextUtils.isEmpty(activityInfo2.processName) && activityInfo2.processName.contains(":")) {
                    activityInfo2.processName = activityInfo2.processName.split(":")[1];
                } else {
                    activityInfo2.processName = "main";
                }
                plugin.pluginReceiver.put(activityInfo2.name, activityInfo2);
            }
        }
        ProviderInfo[] providerInfoArr = packageInfo.providers;
        if (providerInfoArr != null) {
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (!TextUtils.isEmpty(providerInfo.processName) && providerInfo.processName.contains(":")) {
                    providerInfo.processName = providerInfo.processName.split(":")[1];
                } else {
                    providerInfo.processName = "main";
                }
                plugin.pluginProvider.put(providerInfo.name, providerInfo);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap<String, ProviderInfo> map = plugin.pluginProvider;
        if (map != null && map.size() > 0) {
            ContentProviderManager.getInstance().installContentProviders(plugin.pluginProvider.values(), plugin);
        }
        sb.append("installProvider cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(";");
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (!TextUtils.isEmpty(packageInfo.applicationInfo.className)) {
            ZeusApplication zeusApplication = (ZeusApplication) plugin.mClassLoader.loadClass(packageInfo.applicationInfo.className).newInstance();
            plugin.mApplication = zeusApplication;
            zeusApplication.attach(plugin, Zeus.getAppApplication());
        }
        sb.append("makeApplication cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis2);
        sb.append(";");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PackageInfo hp(String str, final Plugin plugin, StringBuilder sb, String str2, File file) throws PackageManager.NameNotFoundException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(str2, MediaPlayer.MEDIA_PLAYER_OPTION_SEEK_END_ENABLE);
        plugin.mHostApplication = (PluginApplicationWrapper) ZeusTransformUtils.wrapperContext2Application(Zeus.getAppApplication(), plugin.mPkgName);
        ApplicationInfo applicationInfo = new ApplicationInfo(Zeus.getAppApplication().getApplicationInfo());
        plugin.mHostApplicationInfoHookSomeField = applicationInfo;
        applicationInfo.nativeLibraryDir = file.getAbsolutePath();
        plugin.mHostApplicationInfoHookSomeField.dataDir = plugin.mHostApplication.getDataDir().getAbsolutePath();
        plugin.mHostApplicationInfoHookSomeField.sourceDir = str2;
        if (TextUtils.isEmpty(packageArchiveInfo.applicationInfo.sourceDir)) {
            packageArchiveInfo.applicationInfo.sourceDir = str2;
        }
        if (TextUtils.isEmpty(packageArchiveInfo.applicationInfo.publicSourceDir)) {
            packageArchiveInfo.applicationInfo.publicSourceDir = str2;
        }
        plugin.mResources = new PluginResources(Zeus.getAppApplication().getPackageManager().getResourcesForApplication(packageArchiveInfo.applicationInfo), str);
        Zeus.getAppApplication().registerComponentCallbacks(new ComponentCallbacks() { // from class: com.byazt.gl.j.3
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                plugin.mResources.updateConfiguration(configuration, Zeus.getAppApplication().getResources().getDisplayMetrics());
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }
        });
        sb.append("makeResources cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(";");
        return packageArchiveInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final Plugin plugin, String str, File file, File file2, StringBuilder sb) throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis();
        hp(plugin, str, file, file2);
        sb.append("classLoader cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(" ;");
        if (plugin.mOpenLoadClassOpt) {
            com.byazt.hu.w.hp(new Runnable() { // from class: com.byazt.gl.j.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PluginClassLoader pluginClassLoader = plugin.mClassLoader;
                        pluginClassLoader.setAllPluginClasses((HashSet) MethodUtils.invokeStaticMethod(pluginClassLoader.loadClass("com.volcengine.PluginClassHolder"), "getPluginClasses", new Object[0]));
                    } catch (Throwable unused) {
                    }
                }
            });
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        try {
            String str2 = (String) FieldUtils.readStaticField(plugin.mClassLoader.loadClass("com.volcengine.StubConfig"), "actStubV1");
            if (str2 != null) {
                hp(plugin, str2);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th) {
            sb.append("actStubV1 cost:");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis2);
            sb.append(";");
            throw th;
        }
        sb.append("actStubV1 cost:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis2);
        sb.append(";");
    }

    private void hp(Plugin plugin, String str, File file, File file2) throws Exception {
        if (hp()) {
            plugin.mClassLoader = new PluginClassLoader("", file2, file.getAbsolutePath(), null);
            synchronized (plugin.getInitializeLock()) {
                hp(plugin.mClassLoader, str);
            }
            return;
        }
        plugin.mClassLoader = new PluginClassLoader(str, file2, file.getAbsolutePath(), null);
    }

    private File hp(String str, int i2, String str2) {
        File file = new File(com.byazt.hu.jx.jx(str, i2));
        if (q.a()) {
            if (!com.byazt.ld.l.hp(file + File.separator + com.byazt.ld.l.hp(str2))) {
                file = null;
            }
        }
        if (file != null && !file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static void hp(Plugin plugin, String str) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("mapping");
        HashMap map = new HashMap();
        if (jSONObjectOptJSONObject2 != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject2.getString(next));
            }
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("forceMappings");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                int iOptInt = jSONObject2.optInt("minApi", 0);
                int iOptInt2 = jSONObject2.optInt("maxApi", Integer.MAX_VALUE);
                int apiVersionCode = plugin.getApiVersionCode();
                if (apiVersionCode <= iOptInt2 && apiVersionCode >= iOptInt && (jSONObjectOptJSONObject = jSONObject2.optJSONObject("mapping")) != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        map.put(next2, jSONObjectOptJSONObject.getString(next2));
                    }
                }
            }
        }
        for (String str2 : map.keySet()) {
            String str3 = (String) map.get(str2);
            String str4 = plugin.mPkgName;
            StringBuilder sb = new StringBuilder();
            sb.append((str3 == null || !str3.contains(i.f2495E)) ? plugin.mPkgName + i.f2495E : "");
            sb.append((String) map.get(str2));
            ComponentManager.registerActivity(str4, sb.toString(), str2);
        }
    }

    public static void hp(String str, int i2, @NonNull String str2, int i3, long j2, String str3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.byazt.qva.jx.hp(Integer.valueOf(i2)));
            jSONObject.putOpt("plugin_package_name", com.byazt.qva.jx.hp(str2));
            jSONObject.putOpt("version_code", com.byazt.qva.jx.hp(Integer.valueOf(i3)));
            jSONObject3.putOpt("duration", Integer.valueOf(com.byazt.qva.jx.l(Long.valueOf(j2))));
            jSONObject2.putOpt("message", com.byazt.qva.jx.hp(str3));
        } catch (JSONException e2) {
            a.hp(e2);
        }
        com.byazt.ll.l.hp().hp(str, jSONObject, jSONObject3, jSONObject2);
    }

    private static boolean hp() {
        return q.vv();
    }

    public static boolean hp(Object obj, String str) {
        if (str != null) {
            try {
                for (String str2 : str.split(File.pathSeparator)) {
                    new File(str2).setReadOnly();
                }
            } catch (Throwable th) {
                a.hp(th);
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "PluginLoader createPluginClassLoader#addDexPath fail >>>".concat(String.valueOf(str)), th);
                return false;
            }
        }
        MethodUtils.getAccessibleMethod(BaseDexClassLoader.class, "addDexPath", String.class).invoke(obj, str);
        ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader createPluginClassLoader#addDexPath success >>>".concat(String.valueOf(str)));
        return true;
    }

    public static PluginClassLoader hp(Plugin plugin, String str, StringBuilder sb) {
        try {
            File file = new File(com.byazt.hu.jx.jx(str, plugin.getVersion()));
            if (!file.exists()) {
                file.mkdirs();
            }
            sb.append("makeDexPluginClassLoader dalvikCacheDir: " + file.getAbsolutePath());
            long jCurrentTimeMillis = System.currentTimeMillis();
            plugin.mClassLoader = new PluginClassLoader("", file, "", null);
            sb.append("makeDexPluginClassLoader cost:");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append(" ;");
            return plugin.mClassLoader;
        } catch (Throwable th) {
            sb.append("makeDexPluginClassLoader fail:  " + th.getMessage());
            return null;
        }
    }
}
