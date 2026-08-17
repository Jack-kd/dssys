package com.byazt.gl;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.byazt.ik.a;
import com.byazt.lc.eb;
import com.byazt.ll.l;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.io.File;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1398, 34})
/* loaded from: classes2.dex */
public class l implements Runnable {
    public File hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f20512l;

    public l(String str, File file) {
        this.hp = file;
        this.f20512l = str;
    }

    private File hp(File file) {
        if (file.exists() || file.getParent() == null) {
            return file;
        }
        File[] fileArrListFiles = new File(file.getParent()).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.exists() && file2.getName().endsWith(".apk")) {
                return file2;
            }
        }
        return file;
    }

    private com.byazt.vg.w jx() {
        com.byazt.bh.hp hpVarHp;
        if (this.hp == null) {
            return null;
        }
        try {
            File file = new File(this.hp.getAbsolutePath() + "_unzip");
            if (file.exists()) {
                eb.hp(file);
                file.mkdirs();
            }
            eb.l(this.hp.getAbsolutePath(), file.getAbsolutePath());
            File[] fileArrListFiles = file.listFiles();
            LinkedList linkedList = new LinkedList();
            File file2 = null;
            for (File file3 : fileArrListFiles) {
                if (file3.getName().equals("config.json")) {
                    file2 = file3;
                } else if (file3.getName().endsWith(".dex")) {
                    linkedList.add(file3);
                }
            }
            eb.hp(this.hp);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable Dex deleting downloadFile apkFile=" + this.hp);
            this.hp = file;
            if (linkedList.size() > 0 && file2 != null && file2.isFile() && (hpVarHp = com.byazt.bh.l.hp(file2, linkedList)) != null) {
                return new com.byazt.vg.w(hpVarHp);
            }
        } catch (Exception e2) {
            a.hp(e2);
        }
        return null;
    }

    private void l() {
        File fileHp;
        int i2 = 3;
        while (i2 > 0) {
            i2--;
            try {
                File file = new File(this.hp.getAbsolutePath() + "_unzip");
                if (file.exists()) {
                    file.delete();
                    file.mkdirs();
                }
                eb.l(this.hp.getAbsolutePath(), file.getAbsolutePath());
                File[] fileArrListFiles = file.listFiles();
                File file2 = this.hp;
                if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                    file2 = fileArrListFiles[0];
                }
                fileHp = hp(file2);
            } catch (Exception e2) {
                ZeusLogger.errReport(ZeusLogger.TAG_INIT, "Plugin install : unZip file failed !!!", e2);
                a.hp(e2);
            }
            if (fileHp != null && fileHp.exists() && fileHp.isFile()) {
                this.hp = fileHp;
                ZeusLogger.d("Plugin install : unZip count : " + (3 - i2));
                return;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() throws JSONException {
        hp();
    }

    private static void hp(String str, int i2, @NonNull String str2, int i3, long j2, String str3) throws JSONException {
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

    public boolean hp() throws JSONException {
        com.byazt.vg.w wVarHp;
        File file = this.hp;
        if (file != null && file.getName().endsWith(".dex.zip")) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ZeusLogger.d("Plugin install : start unDexZip file ~~~~");
            wVarHp = jx();
            if (wVarHp != null) {
                hp(com.byazt.ll.l.eb, l.hp.ec, this.f20512l, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, "");
                ZeusLogger.d("Plugin install : finish install from unDexZip success ~~~~");
            } else {
                ZeusLogger.d("Plugin install : finish install from unDexZip fail ~~~~");
            }
        } else {
            if (eb.l(this.hp)) {
                ZeusLogger.d("Plugin install : start unZip file ~~~~");
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                l();
                hp(com.byazt.ll.l.eb, l.hp.lv, this.f20512l, 0, SystemClock.elapsedRealtime() - jElapsedRealtime2, "");
                ZeusLogger.d("Plugin install : start install from unZip ~~~~");
            } else {
                ZeusLogger.d("Plugin install : start install without unZip ~~~~");
            }
            wVarHp = com.byazt.vg.j.hp(this.hp);
        }
        if (wVarHp == null) {
            ZeusPluginStateListener.postStateChange(this.f20512l, 7, " read local file package info failed !!! pluginPkg = " + this.f20512l + " mApkFile.exists = " + this.hp.exists());
            StringBuilder sb = new StringBuilder("PluginInstallRunnable read local file package info failed !!! pluginPkg = ");
            sb.append(this.f20512l);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        Plugin plugin = PluginManager.getInstance().getPlugin(wVarHp.hp);
        if (plugin == null) {
            ZeusPluginStateListener.postStateChange(this.f20512l, 7, " plugin == null !!! pluginPkg = " + this.f20512l);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable cannot query valid plugin !!! packageName = " + wVarHp.hp);
            return false;
        }
        boolean zInstall = plugin.install(this.hp, wVarHp);
        if (zInstall) {
            ZeusPluginStateListener.postStateChange(wVarHp.hp, 6, new Object[0]);
            return zInstall;
        }
        ZeusPluginStateListener.postStateChange(wVarHp.hp, 7, "Internal error.");
        return zInstall;
    }
}
