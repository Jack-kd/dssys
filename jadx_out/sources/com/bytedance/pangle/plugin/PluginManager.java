package com.bytedance.pangle.plugin;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.byazt.gl.hp;
import com.byazt.gl.j;
import com.byazt.gl.l;
import com.byazt.hu.jx;
import com.byazt.hu.w;
import com.byazt.lc.zy;
import com.byazt.ye.gu;
import com.byazt.ye.q;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: classes3.dex */
public class PluginManager {
    public static final String TAG = "PluginManager";
    public static volatile PluginManager sInstance;
    public volatile boolean hasInstallFromDownloadDir;
    public volatile boolean mIsParsePluginConfig;
    public volatile Map<String, Plugin> mPlugins = new ConcurrentHashMap();
    public final j pluginLoader = new j();

    private PluginManager() {
    }

    private void ensurePluginFileExist(Plugin plugin) {
        if (plugin == null || !plugin.isInstalled() || new File(jx.l(plugin.mPkgName, plugin.getVersion())).exists()) {
            return;
        }
        unInstallPackage(plugin.mPkgName);
    }

    public static PluginManager getInstance() {
        if (sInstance == null) {
            synchronized (PluginManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new PluginManager();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    private synchronized void parsePluginConfig() {
        if (this.mIsParsePluginConfig) {
            return;
        }
        ZeusLogger.v(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson");
        ArrayList arrayList = new ArrayList();
        try {
            try {
                Bundle bundle = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 128).applicationInfo.metaData;
                if (bundle != null) {
                    for (String str : bundle.keySet()) {
                        String str2 = q.f27892w;
                        if (str2.startsWith("PANGLE_")) {
                            if (str.startsWith(str2) || str.startsWith("ZEUS_PLUGIN_")) {
                                arrayList.add(bundle.getString(str));
                            }
                        } else if (str.startsWith(str2)) {
                            arrayList.add(bundle.getString(str));
                        }
                    }
                }
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    Plugin plugins = parsePlugins((String) obj);
                    if (plugins != null) {
                        concurrentHashMap.put(plugins.mPkgName, plugins);
                        ZeusLogger.i(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson. find " + plugins.mPkgName);
                    }
                }
                Map<String, JSONObject> mapW = gu.hp().w();
                if (mapW != null && mapW.size() > 0) {
                    for (Map.Entry<String, JSONObject> entry : mapW.entrySet()) {
                        String key = entry.getKey();
                        JSONObject value = entry.getValue();
                        if (!TextUtils.isEmpty(key) && value != null) {
                            Plugin plugins2 = parsePlugins(value);
                            concurrentHashMap.put(plugins2.mPkgName, plugins2);
                            ZeusLogger.i(ZeusLogger.TAG_INIT, "PluginManager getPluginsJson. find " + plugins2.mPkgName);
                        }
                    }
                }
                this.mPlugins.putAll(concurrentHashMap);
                ZeusLogger.i(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson success");
                this.mIsParsePluginConfig = true;
            } catch (Exception e2) {
                ZeusLogger.errReport(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson failed.", e2);
                this.mIsParsePluginConfig = true;
            }
        } catch (Throwable th) {
            this.mIsParsePluginConfig = true;
            throw th;
        }
    }

    private Plugin parsePlugins(String str) {
        if (str == null) {
            return null;
        }
        try {
            return parsePlugins(new JSONObject(str));
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson failed. " + str.trim(), e2);
            return null;
        }
    }

    public void asyncInstall(String str, File file) {
        if (file != null) {
            w.l(new l(str, file));
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "PluginManager asyncInstall, file=".concat(String.valueOf(file)));
        } else {
            ZeusPluginStateListener.postStateChange(str, 7, "asyncInstall apk is null !");
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginManager asyncInstall apk is null !");
        }
    }

    public boolean checkPluginInstalled(String str) {
        Plugin plugin = getPlugin(str);
        ensurePluginFileExist(plugin);
        boolean z2 = plugin != null && plugin.isInstalled();
        ZeusLogger.d(ZeusLogger.TAG_PPM, "PluginManager checkPluginInstalled, " + str + " = " + z2);
        return z2;
    }

    public Plugin getPlugin(String str, boolean z2) {
        if (!Zeus.hasInit() && com.byazt.lc.l.hp()) {
            throw new RuntimeException("Please init Zeus first!");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!this.mIsParsePluginConfig) {
            parsePluginConfig();
        }
        Plugin plugin = this.mPlugins.get(str);
        if (z2 && plugin != null) {
            plugin.init();
        }
        return plugin;
    }

    public Plugin getPluginOnly(String str) {
        return this.mPlugins.get(str);
    }

    public synchronized void installFromDownloadDir() {
        if (this.hasInstallFromDownloadDir) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, "PluginManager zeus has been installFromDownloadDir!");
            return;
        }
        if (com.byazt.hu.j.l(Zeus.getAppApplication())) {
            w.l(new com.byazt.gl.w());
        }
        this.hasInstallFromDownloadDir = true;
    }

    public boolean isLoaded(String str) {
        Plugin plugin = getPlugin(str);
        return plugin != null && plugin.isLoaded();
    }

    public boolean loadPlugin(String str) {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_common", "start load plugin:".concat(String.valueOf(str)));
        return this.pluginLoader.hp(str);
    }

    public void registerPlugin(String str) {
        Plugin plugins;
        if (str == null || (plugins = parsePlugins(str)) == null) {
            return;
        }
        this.mPlugins.put(plugins.mPkgName, plugins);
    }

    public boolean syncInstall(String str, File file) {
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "PluginManager syncInstall, file=".concat(String.valueOf(file)));
        return new l(str, file).hp();
    }

    public void unInstallPackage(String str) {
        ZeusLogger.d(ZeusLogger.TAG_PPM, "PluginManager unInstallPackage, ".concat(String.valueOf(str)));
        if (getPlugin(str) != null) {
            zy.hp().eb(str);
        }
    }

    private Plugin parsePlugins(JSONObject jSONObject) throws JSONException {
        Plugin plugin;
        if (jSONObject.has("isDexPlugin") && jSONObject.optInt("isDexPlugin") == 1) {
            plugin = new hp(jSONObject);
        } else {
            plugin = new Plugin(jSONObject);
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "PluginManager parsePluginsJson. find " + plugin.mPkgName);
        return plugin;
    }

    public Plugin getPlugin(String str) {
        return getPlugin(str, true);
    }
}
