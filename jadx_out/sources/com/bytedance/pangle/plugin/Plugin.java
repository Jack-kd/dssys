package com.bytedance.pangle.plugin;

import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.byazt.hu.j;
import com.byazt.hu.l;
import com.byazt.hu.w;
import com.byazt.lc.eb;
import com.byazt.lc.jl;
import com.byazt.lc.jx;
import com.byazt.lc.zy;
import com.byazt.ye.q;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusApplication;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.umeng.ccg.a;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Function;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: classes3.dex */
public class Plugin {
    public static final int LIFE_INSTALLED = 2;
    public static final int LIFE_LOADED = 3;
    public static final int LIFE_LOADING = 4;
    public static final int LIFE_PENDING = 1;
    public static final String TAG = "Plugin";
    public volatile Function mApiBridge;
    public int mApiVersionCode;
    public final String mAppKey;
    public final String mAppSecretKey;
    public ZeusApplication mApplication;
    public PluginClassLoader mClassLoader;
    public PluginApplicationWrapper mHostApplication;
    public ApplicationInfo mHostApplicationInfoHookSomeField;
    public volatile boolean mInitialized;
    public String mInternalPath;
    public int mInternalVersionCode;
    public boolean mIsDexPlugin;
    public boolean mIsSupportLibIso;
    public int mMaxVersionCode;
    public int mMinVersionCode;
    public final boolean mOpenLoadClassOpt;
    public String mPackageDir;
    public String mPkgName;
    public volatile Function mPluginBridge;
    public final boolean mReInstallInternalPluginByMd5;
    public Resources mResources;
    public String mSignature;
    public final boolean mUnInstallPluginWhenHostChange;
    public final boolean mUseMemoryForActivityIntent;
    public int mVersionCode;
    public String response;
    public HashMap<String, ActivityInfo> pluginActivities = new HashMap<>();
    public HashMap<String, ServiceInfo> pluginServices = new HashMap<>();
    public HashMap<String, ActivityInfo> pluginReceiver = new HashMap<>();
    public HashMap<String, ProviderInfo> pluginProvider = new HashMap<>();
    public volatile int mLifeCycle = 1;
    public final List<String> mSharedHostSos = new ArrayList();
    public final Object installLock = new Object();
    public final Object initializeLock = new Object();
    public CopyOnWriteArrayList<hp> mBindServiceTaskList = new CopyOnWriteArrayList<>();
    public CopyOnWriteArrayList<hp> mStartServiceTaskList = new CopyOnWriteArrayList<>();

    public interface hp {
        void hp(int i2) throws RemoteException;
    }

    public Plugin(JSONObject jSONObject) throws JSONException, IOException {
        this.mInternalVersionCode = -1;
        this.mMaxVersionCode = Integer.MAX_VALUE;
        this.mIsDexPlugin = false;
        this.mPkgName = jSONObject.getString("packageName");
        this.mMinVersionCode = jSONObject.optInt("minPluginVersion", 0);
        this.mMaxVersionCode = jSONObject.optInt("maxPluginVersion", Integer.MAX_VALUE);
        this.mApiVersionCode = jSONObject.getInt("apiVersionCode");
        if (jSONObject.has("isDexPlugin")) {
            this.mIsDexPlugin = jSONObject.getInt("isDexPlugin") == 1;
        }
        String signature = GlobalParam.getInstance().getSignature(this.mPkgName);
        this.mSignature = signature;
        if (TextUtils.isEmpty(signature)) {
            this.mSignature = jSONObject.optString(a.f49739A, "");
        }
        this.mIsSupportLibIso = jSONObject.optBoolean("isSupportLibIsolate", false);
        this.mInternalPath = jSONObject.optString("internalPath", "");
        this.mInternalVersionCode = jSONObject.optInt("internalVersionCode", -1);
        this.mAppKey = jSONObject.optString("appKey", "");
        this.mAppSecretKey = jSONObject.optString("appSecretKey", "");
        this.mOpenLoadClassOpt = jSONObject.optBoolean("loadClassOpt", false);
        this.mUnInstallPluginWhenHostChange = jSONObject.optBoolean("unInstallPluginWhenHostChange", false);
        this.mUseMemoryForActivityIntent = jSONObject.optBoolean("useMemoryForActivityIntent", false);
        this.mReInstallInternalPluginByMd5 = jSONObject.optBoolean("reInstallInternalPluginByMd5", false);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sharedHostSo");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                this.mSharedHostSos.add((String) jSONArrayOptJSONArray.get(i2));
            }
        }
        setupInternalPlugin();
    }

    private boolean checkValid(File file, String str, int i2) {
        if (!TextUtils.equals(this.mPkgName, str)) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " package name not match !!!");
            return false;
        }
        if (i2 < this.mMinVersionCode || i2 > this.mMaxVersionCode) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " " + String.format(" pluginApk ver[%s] not match plugin VerRange[%s, %s].", Integer.valueOf(i2), Integer.valueOf(this.mMinVersionCode), Integer.valueOf(this.mMaxVersionCode)));
            return false;
        }
        if (i2 < this.mVersionCode && isInstalled()) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + String.format(" pluginApk ver[%s] lower than installed plugin[%s].", Integer.valueOf(i2), Integer.valueOf(this.mVersionCode)));
            return false;
        }
        if (file == null || !file.exists()) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk not exist.");
            return false;
        }
        if (i2 == this.mVersionCode && zy.hp().e(str).equals(jx.hp(file)[0])) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk with the same identity has already installed.");
            return false;
        }
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + ":" + i2 + " true");
        return true;
    }

    private boolean checkVersionValid(int i2, int i3, boolean z2) {
        int iW = zy.hp().w(this.mPkgName);
        boolean z3 = false;
        if (iW > i3) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, TAG.concat(String.format(" checkVersionValid %s apiVersion downgrade , lastApiVersion=%s , currentApiVersion=%s", this.mPkgName, Integer.valueOf(iW), Integer.valueOf(i3))));
            return false;
        }
        boolean z4 = i2 >= 0 && i2 >= this.mMinVersionCode && i2 <= this.mMaxVersionCode;
        if (z4 && i3 != -1) {
            int iL = zy.hp().l(this.mPkgName, i2);
            int iJx = zy.hp().jx(this.mPkgName, i2);
            if (i3 < iL || i3 > iJx) {
                ZeusLogger.w(ZeusLogger.TAG_INIT, TAG.concat(String.format(" checkVersionValid plugin[%s, ver=%s] is not compatible with api[ver_code=%s], apiCompatibleVer=[%s,%s]", this.mPkgName, Integer.valueOf(this.mVersionCode), Integer.valueOf(i3), Integer.valueOf(iL), Integer.valueOf(iJx))));
                z4 = false;
            }
        }
        if (z4 && z2 && l.l(new File(com.byazt.hu.jx.l(this.mPkgName, i2)))) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, TAG.concat(String.format(" checkVersionValid plugin[%s, ver=%s] not match hostAbi", this.mPkgName, Integer.valueOf(i2))));
        } else {
            z3 = z4;
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin checkVersionValid, pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", valid=" + z3);
        return z3;
    }

    private void deleteInstalledPlugin() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.byazt.hu.jx.hp(this.mPkgName);
        }
        new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.2
            @Override // java.io.FileFilter
            public boolean accept(File file) throws NumberFormatException {
                if (file.getName().matches("^version-(\\d+)$")) {
                    zy.hp().hp(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                }
                return false;
            }
        });
        eb.hp(this.mPackageDir);
    }

    private void deleteOtherExpiredVer(int i2) {
        if (j.l(Zeus.getAppApplication())) {
            if (TextUtils.isEmpty(this.mPackageDir)) {
                this.mPackageDir = com.byazt.hu.jx.hp(this.mPkgName);
            }
            final String strConcat = "version-".concat(String.valueOf(i2));
            new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.3
                @Override // java.io.FileFilter
                public boolean accept(File file) throws NumberFormatException {
                    if (file != null && !strConcat.equals(file.getName()) && !"data".equals(file.getName())) {
                        eb.hp(file.getAbsolutePath());
                        ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteOtherExpired " + file.getAbsolutePath());
                        if (file.getName().matches("^version-(\\d+)$")) {
                            zy.hp().hp(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                        }
                    }
                    return false;
                }
            });
        }
    }

    private File[] getInstallFiles() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.byazt.hu.jx.hp(this.mPkgName);
        }
        return new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.4
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
    }

    private void installInternalPlugin() {
        if (j.l(Zeus.getAppApplication())) {
            if (this.mReInstallInternalPluginByMd5) {
                if (getVersion() > this.mInternalVersionCode) {
                    return;
                }
            } else if (getVersion() >= this.mInternalVersionCode) {
                return;
            }
            if (TextUtils.isEmpty(this.mInternalPath)) {
                return;
            }
            w.hp(new Runnable() { // from class: com.bytedance.pangle.plugin.Plugin.1
                @Override // java.lang.Runnable
                public void run() {
                    File file;
                    try {
                        if (Plugin.this.mInternalPath.endsWith(".7z.zip")) {
                            file = new File(com.byazt.hu.jx.jx(), Plugin.this.mPkgName + ".7z.zip");
                        } else {
                            file = new File(com.byazt.hu.jx.jx(), Plugin.this.mPkgName + ".apk");
                        }
                        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin copyInternalPlugin " + Plugin.this.mInternalPath + " --> " + file.getAbsolutePath());
                        eb.hp(Zeus.getAppApplication().getAssets().open(Plugin.this.mInternalPath), new FileOutputStream(file));
                        if (file.exists()) {
                            new com.byazt.gl.l(Plugin.this.mPkgName, file).run();
                            return;
                        }
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. " + file.getAbsolutePath() + " is not exists.");
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. ", th);
                    }
                }
            });
        }
    }

    private int modifyResIfNeed(int i2) {
        String strHp = com.byazt.lc.l.hp(Zeus.getAppApplication());
        if (TextUtils.isEmpty(strHp) || !TextUtils.equals(zy.hp().a(this.mPkgName), strHp)) {
            if (this.mUnInstallPluginWhenHostChange || GlobalParam.getInstance().unInstallPluginWhenHostChange(this.mPkgName)) {
                ZeusLogger.d(ZeusLogger.TAG_INIT, "uninstall plugin by host update. " + this.mPkgName + " " + i2);
                return 0;
            }
            ZeusLogger.d(ZeusLogger.TAG_INIT, "modifyRes by init. " + this.mPkgName + " " + i2);
            int iHp = new com.byazt.vn.jx().hp(new File(com.byazt.hu.jx.l(this.mPkgName, i2)), true, new StringBuilder());
            if (iHp != 100 && iHp != 200) {
                return 0;
            }
        }
        return i2;
    }

    private void runServiceTask(List<hp> list, int i2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (hp hpVar : list) {
                if (hpVar != null) {
                    hpVar.hp(i2);
                }
            }
            list.clear();
        } catch (Exception e2) {
            com.byazt.ik.a.hp(e2);
        }
    }

    private void setupInternalPlugin() throws IOException {
        int iHp;
        if (zy.hp().w(this.mPkgName, this.mApiVersionCode)) {
            return;
        }
        if (TextUtils.isEmpty(this.mInternalPath) || this.mInternalVersionCode == -1) {
            try {
                for (String str : Zeus.getAppApplication().getAssets().list(q.f27890j)) {
                    if (str.startsWith(this.mPkgName + "_") && (iHp = jl.hp(str.split("_")[1], -1)) != -1) {
                        this.mInternalPath = q.f27890j + ServiceReference.DELIMITER + str;
                        this.mInternalVersionCode = iHp;
                        return;
                    }
                }
            } catch (IOException e2) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "setupInternalPlugin failed.", e2);
            }
        }
    }

    public void addBindServicePluginPendingTask(hp hpVar) {
        this.mBindServiceTaskList.add(hpVar);
    }

    public void addStartServicePluginPendingTask(hp hpVar) {
        this.mStartServiceTaskList.add(hpVar);
    }

    public void deleteIfNeeded() {
        if (j.l(Zeus.getAppApplication()) && zy.hp().q(this.mPkgName)) {
            zy.hp().s(this.mPkgName);
            deleteInstalledPlugin();
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteIfNeeded " + this.mPkgName);
        }
    }

    public Function getApiBridge() {
        return this.mApiBridge;
    }

    public int getApiVersionCode() {
        return this.mApiVersionCode;
    }

    public Object getInitializeLock() {
        return this.initializeLock;
    }

    public int getInstalledMaxVer() throws NumberFormatException {
        File[] installFiles = getInstallFiles();
        int i2 = -1;
        if (installFiles != null) {
            for (File file : installFiles) {
                int i3 = Integer.parseInt(file.getName().split("-")[1]);
                if (i3 > i2 && zy.hp().j(this.mPkgName, i3) && new File(com.byazt.hu.jx.l(this.mPkgName, i3)).exists()) {
                    i2 = i3;
                }
            }
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin getInstalledMaxVersion, pkg=" + this.mPkgName + ", maxVer=" + i2);
        return i2;
    }

    public List<Integer> getInstalledVersionCodes() throws NumberFormatException {
        File[] installFiles = getInstallFiles();
        ArrayList arrayList = new ArrayList();
        if (installFiles != null) {
            for (File file : installFiles) {
                int i2 = Integer.parseInt(file.getName().split("-")[1]);
                if (zy.hp().j(this.mPkgName, i2)) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
        }
        return arrayList;
    }

    public String getInternalPath() {
        return this.mInternalPath;
    }

    public int getInternalVersionCode() {
        return this.mInternalVersionCode;
    }

    public JSONObject getJsonConfig() {
        return null;
    }

    public int getLifeCycle() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle;
    }

    public String getNativeLibraryDir() {
        int i2 = this.mVersionCode;
        return i2 > 0 ? com.byazt.hu.jx.j(this.mPkgName, i2) : com.byazt.hu.jx.hp(this.mPkgName);
    }

    public Function getPluginBridge() {
        return this.mPluginBridge;
    }

    public int getVersion() {
        updateInstallStateFromMainProcess();
        return this.mVersionCode;
    }

    public void init() {
        if (this.mInitialized) {
            return;
        }
        synchronized (this.initializeLock) {
            try {
                if (this.mInitialized) {
                    return;
                }
                if (j.l(Zeus.getAppApplication())) {
                    int iModifyResIfNeed = 0;
                    boolean zJx = zy.hp().l(this.mPkgName) ? zy.hp().jx(this.mPkgName) : false;
                    deleteIfNeeded();
                    int installedMaxVer = getInstalledMaxVer();
                    if (checkVersionValid(installedMaxVer, this.mApiVersionCode, zJx)) {
                        iModifyResIfNeed = modifyResIfNeed(installedMaxVer);
                        updateToInstalled(iModifyResIfNeed);
                    }
                    deleteOtherExpiredVer(iModifyResIfNeed);
                    ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin initPlugins result=".concat(String.valueOf(this)));
                    zy.hp().hp(this.mPkgName);
                    zy.hp().j(this.mPkgName);
                    zy.hp().hp(this.mPkgName, com.byazt.lc.l.hp(Zeus.getAppApplication()));
                    zy.hp().hp(this.mPkgName, this.mApiVersionCode);
                } else {
                    updateInstallStateFromMainProcess();
                }
                this.mInitialized = true;
                installInternalPlugin();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void injectResponse(String str) {
        this.response = str;
    }

    public boolean install(File file, com.byazt.vg.w wVar) {
        boolean zHp = false;
        try {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin install from local file " + file + ", " + Thread.currentThread().getName());
            String str = wVar.hp;
            int i2 = wVar.f26565l;
            synchronized (this.installLock) {
                try {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin synchronized begin, plugin=".concat(String.valueOf(this)));
                    boolean zCheckValid = checkValid(file, str, i2);
                    if (zCheckValid) {
                        String str2 = jx.hp(file)[0];
                        zHp = com.byazt.gl.jx.hp(file, str, i2);
                        if (zHp) {
                            zy.hp().l(this.mPkgName, str2);
                            zy.hp().hp(this.mPkgName, i2, true);
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin markPluginInstalled, " + this.mPkgName + ":" + i2 + " identity=" + str2);
                            eb.hp(file);
                        }
                    }
                    synchronized (this) {
                        try {
                            if (!zCheckValid) {
                                eb.hp(file);
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin deleting invalid " + str + ":" + i2);
                            } else if (this.mLifeCycle == 3) {
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin LIFE_LOADED, valid next restart " + str + ":" + i2);
                            } else if (zHp) {
                                updateToInstalled(i2);
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALLED " + str + ":" + i2);
                            } else {
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALL_FAILED" + str + ":" + i2);
                                eb.hp(file);
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin delete file by failedCount > 0 " + str + ":" + i2);
                            }
                        } finally {
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zHp;
        } catch (Throwable th2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "Plugin IMPOSSIBLE!!!", th2);
            return zHp;
        }
    }

    public boolean isInstalled() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle >= 2;
    }

    public boolean isIsDexPlugin() {
        return this.mIsDexPlugin;
    }

    public boolean isLoaded() {
        return this.mLifeCycle == 3;
    }

    public boolean isLoading() {
        return this.mLifeCycle == 4;
    }

    public boolean isVersionInstalled(int i2) {
        return zy.hp().j(this.mPkgName, i2);
    }

    public void setApiBridge(Function function) {
        this.mApiBridge = function;
    }

    public void setApiCompatVersion(int i2, int i3, int i4) {
        zy.hp().hp(this.mPkgName, i2, i3, i4);
    }

    public void setLifeCycle(int i2) {
        this.mLifeCycle = i2;
        if (i2 == 3) {
            runServiceTask(this.mBindServiceTaskList, i2);
            runServiceTask(this.mStartServiceTaskList, i2);
        }
    }

    public void setPluginBridge(Function function) {
        this.mPluginBridge = function;
    }

    public String toString() {
        return "Plugin{pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", life=" + this.mLifeCycle + '}';
    }

    public boolean unInstall(int i2) {
        if (i2 == this.mVersionCode) {
            zy.hp().eb(this.mPkgName);
            return true;
        }
        File[] installFiles = getInstallFiles();
        if (installFiles != null) {
            for (File file : installFiles) {
                if (Integer.parseInt(file.getName().split("-")[1]) == i2) {
                    zy.hp().hp(this.mPkgName, i2, false);
                    eb.hp(file);
                    return true;
                }
            }
        }
        return false;
    }

    public void updateInstallStateFromMainProcess() {
        com.byazt.ye.jx jxVarHp;
        try {
            if (j.l(Zeus.getAppApplication()) || this.mLifeCycle >= 2 || (jxVarHp = com.byazt.kc.l.hp()) == null || !jxVarHp.hp(this.mPkgName)) {
                return;
            }
            updateToInstalled(jxVarHp.l(this.mPkgName));
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG_PPM, "updateInstallStateFromMainProcess error. process = " + j.hp(Zeus.getAppApplication()), th);
        }
    }

    public void updateToInstalled(int i2) {
        this.mVersionCode = i2;
        this.mLifeCycle = 2;
    }
}
