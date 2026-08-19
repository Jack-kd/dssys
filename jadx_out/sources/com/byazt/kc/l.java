package com.byazt.kc;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import com.byazt.ye.jx;
import com.byazt.ye.w;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 228, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static jx f22006a;
    public static final Object hp = new Object();

    /* renamed from: l, reason: collision with root package name */
    public static final Object f22008l = new Object();
    public static final Object jx = new Object();

    /* renamed from: j, reason: collision with root package name */
    public static final Map<String, Boolean> f22007j = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public static final Map<String, w> f22009w = new ConcurrentHashMap();

    public static w hp(String str) {
        Boolean bool = f22007j.get(str);
        if (bool == null || !bool.booleanValue()) {
            f22009w.remove(str);
        }
        Map<String, w> map = f22009w;
        if (map.get(str) == null) {
            synchronized (f22008l) {
                try {
                    w wVar = (w) hp("service", str);
                    if (wVar == null) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVER, "getServiceManager failed!!!");
                        return null;
                    }
                    map.put(str, wVar);
                } finally {
                }
            }
        }
        return map.get(str);
    }

    public static jx hp() {
        Boolean bool = f22007j.get("main");
        if (bool == null || !bool.booleanValue()) {
            f22006a = null;
        }
        if (f22006a == null) {
            synchronized (jx) {
                try {
                    jx jxVar = (jx) hp(AbsServerManager.PACKAGE_QUERY_BINDER, "main");
                    if (jxVar == null) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVER, "getPackageManager failed!!!");
                        return null;
                    }
                    f22006a = jxVar;
                } finally {
                }
            }
        }
        return f22006a;
    }

    private static IBinder hp(Uri uri, String str) {
        Bundle bundleCall = Zeus.getAppApplication().getContentResolver().call(uri, AbsServerManager.METHOD_QUERY_BINDER, str, (Bundle) null);
        if (bundleCall != null) {
            bundleCall.setClassLoader(AbsServerManager.class.getClassLoader());
            hp hpVar = (hp) bundleCall.getParcelable(AbsServerManager.BUNDLE_BINDER);
            if (hpVar != null) {
                return hpVar.hp();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.os.IInterface hp(java.lang.String r4, final java.lang.String r5) throws android.os.RemoteException {
        /*
            boolean r0 = com.bytedance.pangle.Zeus.hasInit()
            if (r0 == 0) goto L8f
            java.util.HashMap r0 = com.bytedance.pangle.Zeus.getServerManagerHashMap()
            java.lang.Object r0 = r0.get(r5)
            android.content.pm.ProviderInfo r0 = (android.content.pm.ProviderInfo) r0
            if (r0 == 0) goto L7f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "content://"
            r1.<init>(r2)
            java.lang.String r0 = r0.authority
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.net.Uri r0 = android.net.Uri.parse(r0)
            android.os.IBinder r0 = hp(r0, r4)
            if (r0 == 0) goto L7d
            boolean r1 = r0.isBinderAlive()
            if (r1 == 0) goto L7d
            com.byazt.kc.l$1 r1 = new com.byazt.kc.l$1     // Catch: android.os.RemoteException -> L75
            r1.<init>()     // Catch: android.os.RemoteException -> L75
            r2 = 0
            r0.linkToDeath(r1, r2)     // Catch: android.os.RemoteException -> L75
            java.util.Map<java.lang.String, java.lang.Boolean> r1 = com.byazt.kc.l.f22007j     // Catch: android.os.RemoteException -> L75
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: android.os.RemoteException -> L75
            r1.put(r5, r3)     // Catch: android.os.RemoteException -> L75
            int r5 = r4.hashCode()     // Catch: android.os.RemoteException -> L75
            r1 = -807062458(0xffffffffcfe53446, float:-7.6908165E9)
            r3 = 1
            if (r5 == r1) goto L5c
            r1 = 1984153269(0x7643c6b5, float:9.927033E32)
            if (r5 == r1) goto L52
            goto L65
        L52:
            java.lang.String r5 = "service"
            boolean r4 = r4.equals(r5)     // Catch: android.os.RemoteException -> L75
            if (r4 == 0) goto L65
            r2 = r3
            goto L66
        L5c:
            java.lang.String r5 = "package"
            boolean r4 = r4.equals(r5)     // Catch: android.os.RemoteException -> L75
            if (r4 == 0) goto L65
            goto L66
        L65:
            r2 = -1
        L66:
            if (r2 == 0) goto L70
            if (r2 == r3) goto L6b
            goto L7d
        L6b:
            com.byazt.ye.w r4 = com.byazt.ye.w.hp.hp(r0)     // Catch: android.os.RemoteException -> L75
            return r4
        L70:
            com.byazt.ye.jx r4 = com.byazt.ye.jx.hp.hp(r0)     // Catch: android.os.RemoteException -> L75
            return r4
        L75:
            r4 = move-exception
            java.lang.String r5 = "Zeus/server_pangle"
            java.lang.String r0 = "generateServerManager failed."
            com.bytedance.pangle.log.ZeusLogger.errReport(r5, r0, r4)
        L7d:
            r4 = 0
            return r4
        L7f:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            java.lang.String r0 = "宿主中没有找对对应进程的serverManager "
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r5 = r0.concat(r5)
            r4.<init>(r5)
            throw r4
        L8f:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            java.lang.String r0 = "generateServerManager 请先初始化Zeus, processName:"
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r5 = r0.concat(r5)
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.kc.l.hp(java.lang.String, java.lang.String):android.os.IInterface");
    }
}
