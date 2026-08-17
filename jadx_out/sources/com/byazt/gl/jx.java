package com.byazt.gl;

import android.content.pm.PackageInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ed.hp;
import com.byazt.ik.a;
import com.byazt.lc.eb;
import com.byazt.lc.q;
import com.byazt.lc.s;
import com.byazt.lc.zy;
import com.byazt.ll.l;
import com.byazt.ye.gu;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1398, 30})
/* loaded from: classes2.dex */
public class jx {
    public static final gu hp = gu.hp();

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(File file, String str, int i2, StringBuffer stringBuffer) throws hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                StringBuilder sb = new StringBuilder();
                if (com.byazt.gc.w.hp(file.getAbsolutePath(), str, sb)) {
                } else {
                    throw new RuntimeException("安装包签名校验失败[1]:".concat(String.valueOf(sb)));
                }
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.f22643n, str, i2, -1L, Log.getStackTraceString(e2));
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -3, str, i2, e2);
                throw new hp(e2.getMessage(), e2);
            }
        } finally {
            stringBuffer.append("checkSignature cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(File file, String str, int i2, StringBuffer stringBuffer) throws hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                if (q.eb()) {
                    String strJx = com.byazt.hu.jx.jx(str, i2);
                    String strL = com.byazt.hu.jx.l(str, i2);
                    StringBuilder sb = new StringBuilder();
                    sb.append(strJx);
                    String str2 = File.separator;
                    sb.append(str2);
                    sb.append(com.byazt.ld.l.hp(strL));
                    String string = sb.toString();
                    if (com.byazt.ld.l.hp(strL, strJx + str2 + com.byazt.ld.l.hp(strL))) {
                        if (com.byazt.ld.l.hp(string)) {
                            stringBuffer.append("dexOpt1 cost:");
                            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                            stringBuffer.append(";");
                            return true;
                        }
                    }
                }
                stringBuffer.append("dexOpt1 cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
                return false;
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.f22644o, str, i2, -1L, null);
                throw new hp("dexOpt1失败", e2);
            }
        } catch (Throwable th) {
            stringBuffer.append("dexOpt1 cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, List<ZipEntry>> eb(File file, String str, int i2, StringBuffer stringBuffer) throws hp {
        String str2 = "插件包包含so不符合宿主ABI类型";
        if (!GlobalParam.getInstance().checkMatchHostAbi()) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                com.byazt.lc.w<Boolean, Map<String, List<ZipEntry>>> wVarHp = com.byazt.hu.l.hp(file);
                boolean zBooleanValue = wVarHp.hp.booleanValue();
                Map<String, List<ZipEntry>> map = wVarHp.f22417l;
                if (zBooleanValue) {
                    return map;
                }
                throw new hp(str2);
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.f22638d, str, i2, -1L, null);
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -5, str, i2, e2);
                throw new hp(str2, e2);
            }
        } finally {
            stringBuffer.append("checkMatchHostAbi cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String q(File file, String str, int i2, StringBuffer stringBuffer) throws hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strL = com.byazt.hu.jx.l(str, i2);
        try {
            try {
                s.hp(file.getAbsolutePath(), strL);
                return strL;
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.cx, str, i2, -1L, null);
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -6, str, i2, e2);
                throw new hp("安装包拷贝失败", e2);
            }
        } finally {
            stringBuffer.append("copyApk cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s(File file, String str, int i2, StringBuffer stringBuffer) throws hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                PackageInfo packageInfo = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 4096);
                PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 4096);
                List listAsList = Arrays.asList(packageInfo.requestedPermissions);
                String[] strArr = packageArchiveInfo.requestedPermissions;
                if (strArr != null && strArr.length > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : packageArchiveInfo.requestedPermissions) {
                        if (!listAsList.contains(str2)) {
                            arrayList.add(str2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        ZeusLogger.w("PluginInstaller", "The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
                        if (GlobalParam.getInstance().checkPermission()) {
                            throw new hp("The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
                        }
                    }
                }
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.ns, str, i2, -1L, null);
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -4, str, i2, e2);
                throw new hp("安装包权限校验失败", e2);
            }
        } finally {
            stringBuffer.append("checkPermissions cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1398, 219})
    public static class hp extends IOException {
        private hp(String str) {
            super(str);
        }

        private hp(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(String str, int i2) throws JSONException, hp {
        try {
            if (!q.a() && !q.s()) {
                return;
            }
            zy.hp().l(str, i2, false);
            com.byazt.ld.l.hp(Zeus.getAppApplication()).edit().putInt(str, i2).apply();
            com.byazt.ld.w.hp();
        } catch (Exception e2) {
            hp(com.byazt.ll.l.f22635w, l.hp.f22644o, str, i2, -1L, null);
            throw new hp("dexOpt2失败", e2);
        }
    }

    private static void l(String str, int i2) {
        int iL = zy.hp().l(str, i2, "install");
        int iL2 = zy.hp().l(str, i2, "load");
        int removeApkEntryFlag = GlobalParam.getInstance().getRemoveApkEntryFlag(str);
        if (iL > 3 || iL2 > 3) {
            removeApkEntryFlag = 0;
        }
        zy.hp().hp(str, i2, removeApkEntryFlag);
        zy.hp().jx(str, i2, false);
    }

    public static boolean hp(final File file, final String str, final int i2) throws JSONException {
        int i3;
        gu guVar;
        com.byazt.qva.l lVarHp;
        hp.InterfaceC0217hp interfaceC0217hp;
        final StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("useOpt;");
        final boolean[] zArr = {false};
        try {
            guVar = hp;
            guVar.hp(1000, 0, str, i2, null);
            lVarHp = com.byazt.qva.l.hp(ZeusLogger.TAG_INSTALL, "PluginInstaller", "install:".concat(String.valueOf(str)));
            hp(com.byazt.ll.l.f22631j, l.hp.vv, str, i2, -1L, null);
            l(str, i2);
            eb.hp(com.byazt.hu.jx.hp(str, i2));
            interfaceC0217hp = new hp.InterfaceC0217hp() { // from class: com.byazt.gl.jx.1
                @Override // com.byazt.ed.hp.InterfaceC0217hp
                public void hp() throws Throwable {
                    jx.a(file, str, i2, stringBuffer);
                }
            };
        } catch (Throwable th) {
            th = th;
        }
        try {
            hp.InterfaceC0217hp interfaceC0217hp2 = new hp.InterfaceC0217hp() { // from class: com.byazt.gl.jx.2
                @Override // com.byazt.ed.hp.InterfaceC0217hp
                public void hp() throws Throwable {
                    final Map mapEb = jx.eb(file, str, i2, stringBuffer);
                    jx.s(file, str, i2, stringBuffer);
                    jx.l(jx.q(file, str, i2, stringBuffer), str, i2, stringBuffer);
                    if (q.eb()) {
                        final boolean[] zArr2 = {false};
                        com.byazt.ed.hp.hp(false, new hp.InterfaceC0217hp() { // from class: com.byazt.gl.jx.2.1
                            @Override // com.byazt.ed.hp.InterfaceC0217hp
                            public void hp() throws Throwable {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                jx.l(str, i2, (Map<String, List<ZipEntry>>) mapEb, stringBuffer);
                            }
                        }, new hp.InterfaceC0217hp() { // from class: com.byazt.gl.jx.2.2
                            @Override // com.byazt.ed.hp.InterfaceC0217hp
                            public void hp() throws Throwable {
                                boolean[] zArr3 = zArr2;
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                zArr3[0] = jx.e(file, str, i2, stringBuffer);
                            }
                        });
                        zArr[0] = jx.l(str, i2, zArr2[0], stringBuffer);
                    } else {
                        jx.l(str, i2, (Map<String, List<ZipEntry>>) mapEb, stringBuffer);
                        zArr[0] = jx.l(str, i2, false, stringBuffer);
                        jx.jx(str, i2);
                    }
                }
            };
            stringBuffer = stringBuffer;
            zArr = zArr;
            com.byazt.ed.hp.hp(false, interfaceC0217hp, interfaceC0217hp2);
            eb.hp(file);
            hp(com.byazt.ll.l.f22635w, l.hp.ec, str, i2, lVarHp.hp(), stringBuffer.toString());
            lVarHp.hp(cb.f11292o);
            guVar.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, 0, str, i2, null);
            return true;
        } catch (Throwable th2) {
            th = th2;
            stringBuffer = stringBuffer;
            zArr = zArr;
            Throwable th3 = th;
            if (th3 instanceof hp) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str + " install failed.", th3);
                i3 = i2;
            } else {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str + " install failed unknown error.", th3);
                hp(com.byazt.ll.l.f22635w, l.hp.sz, str, i2, -1L, stringBuffer.toString());
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -1, str, i2, th3);
                i3 = i2;
            }
            if (zArr[0]) {
                zy.hp().hp(str, i3, "install");
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(String str, int i2, boolean z2, StringBuffer stringBuffer) {
        int iS = zy.hp().s(str, i2);
        boolean z3 = (iS & 1) != 0;
        boolean z4 = (iS & 2) != 0;
        if (!z3 && !z4) {
            stringBuffer.append("removeEntry skip;");
            return false;
        }
        boolean z5 = z2 && z3;
        String strL = com.byazt.hu.jx.l(str, i2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zHp = com.byazt.kh.l.hp(strL, z5, z4, str, i2, 1);
        stringBuffer.append("removeEntry cost:");
        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
        stringBuffer.append(";");
        return zHp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(String str, String str2, int i2, StringBuffer stringBuffer) throws JSONException, hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        int iHp = new com.byazt.vn.jx().hp(new File(str), false, sb);
        stringBuffer.append(iHp == 100 ? "modifyRes" : "noModifyRes");
        stringBuffer.append(" cost:");
        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
        stringBuffer.append(";");
        if (iHp == 100 || iHp == 200) {
            return;
        }
        String string = sb.toString();
        hp(com.byazt.ll.l.f22635w, l.hp.wv, str2, i2, -1L, string);
        hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -2, str2, i2, null);
        throw new hp("modifyRes failed. result = " + iHp + ", errorLog = " + string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(String str, int i2, Map<String, List<ZipEntry>> map, StringBuffer stringBuffer) throws hp {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                com.byazt.hu.l.hp(new File(com.byazt.hu.jx.l(str, i2)), new File(com.byazt.hu.jx.j(str, i2)), str, map);
            } catch (Exception e2) {
                hp(com.byazt.ll.l.f22635w, l.hp.f22637b, str, i2, -1L, com.byazt.qva.jx.hp((Object) e2));
                hp.hp(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -7, str, i2, e2);
                throw new hp("安装包动态库拷贝失败", e2);
            }
        } finally {
            stringBuffer.append("copySo cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
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
}
