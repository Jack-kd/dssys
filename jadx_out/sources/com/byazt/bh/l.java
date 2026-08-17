package com.byazt.bh;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.gl.j;
import com.byazt.hu.jx;
import com.byazt.ik.a;
import com.byazt.lc.eb;
import com.byazt.lc.q;
import com.byazt.lc.s;
import com.byazt.lc.zy;
import com.byazt.ll.l;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import java.io.File;
import java.io.FileFilter;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1348, 34})
/* loaded from: classes2.dex */
public class l {
    public static int hp(String str) {
        String strHp;
        File[] fileArrE;
        int i2 = -1;
        if (TextUtils.isEmpty(str) || (strHp = jx.hp(str)) == null) {
            return -1;
        }
        File[] fileArrListFiles = new File(strHp).listFiles(new FileFilter() { // from class: com.byazt.bh.l.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                int i3 = Integer.parseInt(file.getName().split("-")[1]);
                if (i3 > i2 && zy.hp().j(str, i3) && (fileArrE = jx.e(str, i3)) != null && fileArrE.length > 0) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private static String l(String str) {
        return (str == null || !str.endsWith(":")) ? str : str.substring(0, str.length() - 1);
    }

    public static void hp(final String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strHp = jx.hp(str);
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        final String strConcat = "version-".concat(String.valueOf(i2));
        new File(strHp).listFiles(new FileFilter() { // from class: com.byazt.bh.l.2
            @Override // java.io.FileFilter
            public boolean accept(File file) throws NumberFormatException {
                if (file != null && !strConcat.equals(file.getName())) {
                    eb.hp(file.getAbsolutePath());
                    if (file.getName().matches("^version-(\\d+)$")) {
                        zy.hp().hp(str, Integer.parseInt(file.getName().split("-")[1]), false);
                    }
                }
                return false;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e A[PHI: r5
      0x006e: PHI (r5v2 ??) = (r5v1 ??), (r5v4 ??) binds: [B:38:0x0094, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0091  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.byazt.bh.hp hp(java.io.File r7, java.util.List<java.io.File> r8) throws org.json.JSONException, java.io.IOException {
        /*
            java.lang.String r0 = "Zeus/install_pangle"
            r1 = 0
            if (r7 == 0) goto La8
            if (r8 == 0) goto La8
            int r2 = r8.size()
            if (r2 <= 0) goto La8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L79
            r2.<init>()     // Catch: java.lang.Throwable -> L79
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L79
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L79
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L75
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L75
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L72
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L72
        L21:
            java.lang.String r6 = r5.readLine()     // Catch: java.lang.Throwable -> L2b
            if (r6 == 0) goto L2d
            r2.append(r6)     // Catch: java.lang.Throwable -> L2b
            goto L21
        L2b:
            r7 = move-exception
            goto L7d
        L2d:
            com.byazt.ye.gu r6 = com.byazt.ye.gu.hp()     // Catch: java.lang.Throwable -> L2b
            com.byazt.ye.jl r6 = r6.j()     // Catch: java.lang.Throwable -> L2b
            if (r6 == 0) goto L63
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r2 = r6.hp(r2)     // Catch: java.lang.Throwable -> L2b
            boolean r6 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L2b
            if (r6 != 0) goto L5d
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2b
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r2 = "DexPluginUtils parse dex config json success"
            com.bytedance.pangle.log.ZeusLogger.i(r0, r2)     // Catch: java.lang.Throwable -> L2b
            com.byazt.bh.hp r7 = com.byazt.bh.hp.hp(r6, r7, r8)     // Catch: java.lang.Throwable -> L2b
            r3.close()
            r4.close()
            r5.close()
            return r7
        L5d:
            java.lang.String r7 = "DexPluginUtils parse dex config fail decode content is empty"
            com.bytedance.pangle.log.ZeusLogger.w(r0, r7)     // Catch: java.lang.Throwable -> L2b
            goto L68
        L63:
            java.lang.String r7 = "DexPluginUtils parse dex config fail decode callback is null"
            com.bytedance.pangle.log.ZeusLogger.w(r0, r7)     // Catch: java.lang.Throwable -> L2b
        L68:
            r3.close()
            r4.close()
        L6e:
            r5.close()
            goto La8
        L72:
            r7 = move-exception
            r5 = r1
            goto L7d
        L75:
            r7 = move-exception
            r4 = r1
        L77:
            r5 = r4
            goto L7d
        L79:
            r7 = move-exception
            r3 = r1
            r4 = r3
            goto L77
        L7d:
            java.lang.String r8 = "DexPluginUtils parse dex config fail throw error "
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L97
            java.lang.String r7 = r8.concat(r7)     // Catch: java.lang.Throwable -> L97
            com.bytedance.pangle.log.ZeusLogger.w(r0, r7)     // Catch: java.lang.Throwable -> L97
            if (r3 == 0) goto L8f
            r3.close()
        L8f:
            if (r4 == 0) goto L94
            r4.close()
        L94:
            if (r5 == 0) goto La8
            goto L6e
        L97:
            r7 = move-exception
            if (r3 == 0) goto L9d
            r3.close()
        L9d:
            if (r4 == 0) goto La2
            r4.close()
        La2:
            if (r5 == 0) goto La7
            r5.close()
        La7:
            throw r7
        La8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bh.l.hp(java.io.File, java.util.List):com.byazt.bh.hp");
    }

    public static boolean hp(hp hpVar, long j2) throws JSONException {
        List<File> listJ;
        File fileW;
        if (hpVar != null) {
            listJ = hpVar.j();
            fileW = hpVar.w();
        } else {
            listJ = null;
            fileW = null;
        }
        if (fileW == null || listJ == null || listJ.size() <= 0) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail config is null");
        } else {
            int iJx = hpVar.jx();
            String strL = hpVar.l();
            ZeusPluginStateListener.postStateChange(strL, 11, new Object[0]);
            com.byazt.gl.jx.hp(com.byazt.ll.l.f22631j, l.hp.vv, strL, iJx, -1L, null);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex start packageName = " + strL + " version is " + iJx);
            String strGu = zy.hp().gu(strL);
            if (!TextUtils.isEmpty(strGu) && hp(strGu) >= iJx) {
                com.byazt.gl.jx.hp(com.byazt.ll.l.f22635w, l.hp.sz, strL, iJx, -1L, "dex installed version more than download version can no install new dex zip");
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("dex installed version more than download version can no install new dex zip"));
                return false;
            }
            String strEb = TextUtils.isEmpty(hpVar.eb()) ? strL : hpVar.eb();
            if (!jx.q(strEb, iJx)) {
                try {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex no dir need install packageName=" + strL + " version=" + iJx);
                    for (File file : listJ) {
                        if (file.getName().endsWith(".dex")) {
                            String strHp = jx.hp(strEb, iJx, file.getName());
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex = " + file.getName());
                            s.hp(file.getAbsolutePath(), strHp);
                        }
                    }
                    if (fileW.getName().endsWith(".json")) {
                        String strGu2 = jx.gu(strEb, iJx);
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex config = " + fileW.getName());
                        s.hp(fileW.getAbsolutePath(), strGu2);
                    }
                    if (jx.q(strEb, iJx)) {
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex success packageName = " + strL + " version = " + iJx);
                        ZeusPluginStateListener.postStateChange(strL, 12, new Object[0]);
                        com.byazt.gl.jx.hp(com.byazt.ll.l.f22635w, l.hp.ec, strL, iJx, SystemClock.elapsedRealtime() - j2, "install success");
                        zy.hp().hp(strEb, iJx, true);
                        if (!TextUtils.isEmpty(hpVar.eb())) {
                            zy.hp().jx(strL, strEb);
                            zy.hp().j(strL, strGu);
                        }
                        return true;
                    }
                    com.byazt.gl.jx.hp(com.byazt.ll.l.f22635w, l.hp.sz, strL, iJx, -1L, "install dir not exists");
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("install dir not exists"));
                } catch (Exception e2) {
                    com.byazt.gl.jx.hp(com.byazt.ll.l.f22635w, l.hp.sz, strL, iJx, -1L, "throw exception: ".concat(String.valueOf(e2)));
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail throw exception");
                    a.hp(e2);
                }
            } else {
                com.byazt.gl.jx.hp(com.byazt.ll.l.f22635w, l.hp.ec, strL, iJx, SystemClock.elapsedRealtime() - j2, "install success 已经安装完成");
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex already install packageName = " + strL + " version = " + iJx);
                return true;
            }
        }
        return false;
    }

    public static boolean hp(Plugin plugin, StringBuilder sb) {
        try {
            if (plugin == null) {
                sb.append("loadDexPlugin fail, plugin == null;");
                return false;
            }
            if (!plugin.isInstalled()) {
                sb.append("loadDexPlugin fail, plugin is not installed");
                return false;
            }
            if (!(plugin instanceof com.byazt.gl.hp)) {
                sb.append("loadDexPlugin fail, plugin must be dexPlugin");
                return false;
            }
            String strGu = zy.hp().gu(plugin.mPkgName);
            if (TextUtils.isEmpty(strGu)) {
                strGu = plugin.mPkgName;
            }
            int iHp = hp(strGu);
            if (iHp == -1) {
                sb.append("loadDexPlugin fail, get Plugin version is -1");
                return false;
            }
            File[] fileArrE = jx.e(strGu, iHp);
            if (fileArrE != null && fileArrE.length != 0) {
                String strGu2 = jx.gu(strGu, iHp);
                if (TextUtils.isEmpty(strGu2)) {
                    sb.append("loadDexPlugin fail, configFileString is empty");
                    return false;
                }
                File file = new File(strGu2);
                if (file.exists() && file.isFile()) {
                    hp hpVarHp = hp(file, (List<File>) Arrays.asList(fileArrE));
                    ((com.byazt.gl.hp) plugin).hp(hpVarHp);
                    if (hpVarHp == null) {
                        sb.append("loadDexPlugin fail, config is null");
                        return false;
                    }
                    if (!hpVarHp.hp()) {
                        sb.append("loadDexPlugin fail, check dex fail");
                        return false;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    for (File file2 : fileArrE) {
                        if (file2.isFile()) {
                            sb2.append(file2.getAbsolutePath());
                            sb2.append(":");
                        }
                    }
                    String strL = l(sb2.toString());
                    if (TextUtils.isEmpty(strL)) {
                        sb.append("loadDexPlugin fail, dexPath is empty");
                        return false;
                    }
                    sb.append("loadDexPlugin dexpath: ".concat(String.valueOf(strL)));
                    PluginClassLoader pluginClassLoaderHp = plugin.mClassLoader;
                    if (pluginClassLoaderHp == null) {
                        pluginClassLoaderHp = j.hp(plugin, strGu, sb);
                    }
                    if (pluginClassLoaderHp != null) {
                        if (q.e()) {
                            sb.append("loadDexPlugin addDexPath success dexPath=".concat(String.valueOf(strL)));
                            return j.hp(pluginClassLoaderHp, strL);
                        }
                    } else {
                        sb.append("loadDexPlugin makeDexPluginClassLoader fail: classLoader is null");
                    }
                    return false;
                }
                sb.append("loadDexPlugin fail, config file is not exists or is not file");
                return false;
            }
            sb.append("loadDexPlugin fail, get dex files is null or length is 0");
            return false;
        } catch (Throwable th) {
            sb.append("loadDexPlugin fail, throw error ");
            sb.append(th);
            return false;
        }
    }
}
