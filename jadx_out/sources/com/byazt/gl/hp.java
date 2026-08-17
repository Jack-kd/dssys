package com.byazt.gl;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.lc.eb;
import com.byazt.lc.zy;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import java.io.File;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1398, 28})
/* loaded from: classes2.dex */
public class hp extends Plugin {
    public com.byazt.bh.hp hp;

    public hp(JSONObject jSONObject) throws JSONException {
        super(jSONObject);
    }

    private void jx() {
        String strGu = zy.hp().gu(this.mPkgName);
        if (TextUtils.isEmpty(strGu)) {
            return;
        }
        String strHp = com.byazt.hu.jx.hp(strGu);
        eb.hp(strHp);
        zy.hp().jl(this.mPkgName);
        ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteA_PackageName dir=".concat(String.valueOf(strHp)));
    }

    private void l() {
        List<String> listZy = zy.hp().zy(this.mPkgName);
        if (listZy == null || listZy.size() <= 0) {
            return;
        }
        for (String str : listZy) {
            if (!TextUtils.isEmpty(str)) {
                int iHp = com.byazt.bh.l.hp(str);
                if (iHp != -1) {
                    zy.hp().hp(str, iHp, false);
                }
                eb.hp(com.byazt.hu.jx.hp(str));
            }
        }
        zy.hp().k(this.mPkgName);
        ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteAliasLastTimePackageName list=".concat(String.valueOf(listZy)));
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public void deleteIfNeeded() {
        if (com.byazt.hu.j.l(Zeus.getAppApplication()) && zy.hp().q(this.mPkgName)) {
            zy.hp().s(this.mPkgName);
            String strHp = com.byazt.hu.jx.hp(this.mPkgName);
            eb.hp(strHp);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteIfNeeded " + this.mPkgName + " dir=" + strHp);
            l();
            jx();
        }
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public JSONObject getJsonConfig() {
        com.byazt.bh.hp hpVar = this.hp;
        if (hpVar == null) {
            return null;
        }
        return hpVar.a();
    }

    public void hp(com.byazt.bh.hp hpVar) {
        this.hp = hpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0057 A[Catch: all -> 0x000f, Exception -> 0x0055, TRY_LEAVE, TryCatch #0 {Exception -> 0x0055, blocks: (B:22:0x0047, B:24:0x004a, B:27:0x0057), top: B:50:0x0047, outer: #1 }] */
    @Override // com.bytedance.pangle.plugin.Plugin
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init() {
        /*
            r8 = this;
            boolean r0 = r8.mInitialized
            if (r0 == 0) goto L6
            goto Ld6
        L6:
            java.lang.Object r0 = r8.initializeLock
            monitor-enter(r0)
            boolean r1 = r8.mInitialized     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            return
        Lf:
            r1 = move-exception
            goto Ld7
        L12:
            android.app.Application r1 = com.bytedance.pangle.Zeus.getAppApplication()     // Catch: java.lang.Throwable -> Lf
            boolean r1 = com.byazt.hu.j.l(r1)     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto Lcf
            r8.deleteIfNeeded()     // Catch: java.lang.Throwable -> Lf
            com.byazt.lc.zy r1 = com.byazt.lc.zy.hp()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
            java.lang.String r1 = r1.gu(r2)     // Catch: java.lang.Throwable -> Lf
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lf
            if (r2 == 0) goto L31
            java.lang.String r1 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
        L31:
            int r2 = com.byazt.bh.l.hp(r1)     // Catch: java.lang.Throwable -> Lf
            r3 = -1
            if (r2 == r3) goto Lcb
            java.io.File[] r3 = com.byazt.hu.jx.e(r1, r2)     // Catch: java.lang.Throwable -> Lf
            java.lang.String r1 = com.byazt.hu.jx.gu(r1, r2)     // Catch: java.lang.Throwable -> Lf
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> Lf
            r4.<init>(r1)     // Catch: java.lang.Throwable -> Lf
            if (r3 == 0) goto L57
            int r1 = r3.length     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L55
            if (r1 <= 0) goto L57
            java.util.List r1 = java.util.Arrays.asList(r3)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L55
            com.byazt.bh.hp r1 = com.byazt.bh.l.hp(r4, r1)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L55
            r8.hp = r1     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L55
            goto L71
        L55:
            r1 = move-exception
            goto L5f
        L57:
            java.lang.String r1 = "Zeus/install_pangle"
            java.lang.String r5 = "DexPlugin initDexPlugins unDexZip fail throw exception"
            com.bytedance.pangle.log.ZeusLogger.w(r1, r5)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L55
            goto L71
        L5f:
            java.lang.String r5 = "Zeus/install_pangle"
            java.lang.String r6 = "DexPlugin initDexPlugins fail throw exception "
            java.lang.String r7 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lf
            java.lang.String r6 = r6.concat(r7)     // Catch: java.lang.Throwable -> Lf
            com.bytedance.pangle.log.ZeusLogger.w(r5, r6)     // Catch: java.lang.Throwable -> Lf
            com.byazt.ik.a.hp(r1)     // Catch: java.lang.Throwable -> Lf
        L71:
            if (r3 == 0) goto L8a
            int r1 = r3.length     // Catch: java.lang.Throwable -> Lf
            if (r1 <= 0) goto L8a
            boolean r1 = r4.isFile()     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L8a
            com.byazt.bh.hp r1 = r8.hp     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L8a
            boolean r1 = r1.hp()     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L8a
            r8.updateToInstalled(r2)     // Catch: java.lang.Throwable -> Lf
            goto L8b
        L8a:
            r2 = 0
        L8b:
            r8.hp(r2)     // Catch: java.lang.Throwable -> Lf
            java.lang.String r1 = "Zeus/init_pangle"
            java.lang.String r2 = "DexPlugin initDexPlugins result="
            java.lang.String r3 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r2.concat(r3)     // Catch: java.lang.Throwable -> Lf
            com.bytedance.pangle.log.ZeusLogger.i(r1, r2)     // Catch: java.lang.Throwable -> Lf
            com.byazt.lc.zy r1 = com.byazt.lc.zy.hp()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
            r1.hp(r2)     // Catch: java.lang.Throwable -> Lf
            com.byazt.lc.zy r1 = com.byazt.lc.zy.hp()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
            r1.j(r2)     // Catch: java.lang.Throwable -> Lf
            com.byazt.lc.zy r1 = com.byazt.lc.zy.hp()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
            android.app.Application r3 = com.bytedance.pangle.Zeus.getAppApplication()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r3 = com.byazt.lc.l.hp(r3)     // Catch: java.lang.Throwable -> Lf
            r1.hp(r2, r3)     // Catch: java.lang.Throwable -> Lf
            com.byazt.lc.zy r1 = com.byazt.lc.zy.hp()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r8.mPkgName     // Catch: java.lang.Throwable -> Lf
            int r3 = r8.mApiVersionCode     // Catch: java.lang.Throwable -> Lf
            r1.hp(r2, r3)     // Catch: java.lang.Throwable -> Lf
        Lcb:
            r8.hp()     // Catch: java.lang.Throwable -> Lf
            goto Ld2
        Lcf:
            r8.updateInstallStateFromMainProcess()     // Catch: java.lang.Throwable -> Lf
        Ld2:
            r1 = 1
            r8.mInitialized = r1     // Catch: java.lang.Throwable -> Lf
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
        Ld6:
            return
        Ld7:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gl.hp.init():void");
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public boolean install(File file, com.byazt.vg.w wVar) {
        boolean zHp = false;
        if (wVar != null) {
            try {
                com.byazt.bh.hp hpVar = wVar.jx;
                if (hpVar != null) {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin thread name=" + Thread.currentThread().getName() + " install dex from config " + hpVar);
                    String strL = hpVar.l();
                    int iJx = hpVar.jx();
                    synchronized (this.installLock) {
                        try {
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin synchronized begin, packageName=" + strL + " plugin=" + this);
                            boolean zHp2 = hpVar.hp();
                            if (zHp2 && (zHp = com.byazt.bh.l.hp(hpVar, SystemClock.elapsedRealtime()))) {
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin markPluginInstalled, packageName=" + strL + " version=" + iJx);
                            }
                            synchronized (this) {
                                try {
                                    if (!zHp2) {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex invalid " + strL + ":" + iJx);
                                    } else if (this.mLifeCycle == 3) {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex LIFE_LOADED " + strL + ":" + this.mVersionCode);
                                    } else if (zHp) {
                                        updateToInstalled(iJx);
                                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin Dex INSTALLED_SUCCESS " + strL + ":" + iJx);
                                    } else {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex INSTALL_FAILED " + strL + ":" + iJx);
                                    }
                                    eb.hp(file);
                                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin Dex deleting unDexZip pkgName=" + strL + " version=" + iJx + " apkFile=" + file);
                                } finally {
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zHp;
                }
            } catch (Throwable th2) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "DexPlugin DEX ZIP IMPOSSIBLE!!!", th2);
            }
        }
        return zHp;
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public String toString() {
        return "DexPlugin{pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", life=" + this.mLifeCycle + '}';
    }

    private void hp(int i2) {
        if (com.byazt.hu.j.l(Zeus.getAppApplication())) {
            l();
            String strGu = zy.hp().gu(this.mPkgName);
            if (TextUtils.isEmpty(strGu)) {
                com.byazt.bh.l.hp(this.mPkgName, i2);
            } else {
                com.byazt.bh.l.hp(strGu, i2);
            }
        }
    }

    public void hp() {
        String strHp = com.byazt.hu.jx.hp(this.mPkgName);
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        File[] fileArrListFiles = new File(strHp).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            ZeusLogger.d(ZeusLogger.TAG_LOAD, "DexPlugin clear install file, packageName=" + this.mPkgName + " no children files,need delete dir=" + strHp);
            eb.hp(strHp);
        }
    }
}
