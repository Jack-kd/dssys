package com.byazt.pl;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.xs;
import com.byazt.ymw.u;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2102, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    public static Map<String, RemoteCallbackList<xs>> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static volatile l f24437l;

    public static l l() {
        if (f24437l == null) {
            synchronized (l.class) {
                try {
                    if (f24437l == null) {
                        f24437l = new l();
                    }
                } finally {
                }
            }
        }
        return f24437l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, xs xsVar) throws RemoteException {
        RemoteCallbackList<xs> remoteCallbackList = hp.get(str);
        if (remoteCallbackList == null) {
            remoteCallbackList = new RemoteCallbackList<>();
        }
        remoteCallbackList.register(xsVar);
        hp.put(str, remoteCallbackList);
        u.l("DMLibManager", "aidl registerTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        u.l("DMLibManager", "aidl registerTTAppDownloadListener, mListenerMap size:" + hp.size());
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, String str2, long j2, long j3, String str3, String str4) throws RemoteException {
        l(str, str2, j2, j3, str3, str4);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void l(String str, xs xsVar) throws RemoteException {
        Map<String, RemoteCallbackList<xs>> map = hp;
        if (map == null) {
            u.l("DMLibManager", "aidl unregisterTTAppDownloadListener mListenerMap = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        RemoteCallbackList<xs> remoteCallbackListRemove = map.remove(str);
        if (remoteCallbackListRemove == null) {
            u.l("DMLibManager", "aidl unregisterTTAppDownloadListener cbs = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        hp(remoteCallbackListRemove);
        u.l("DMLibManager", "aidl unregisterTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        u.l("DMLibManager", "aidl unregisterTTAppDownloadListener, mListenerMap size:" + hp.size());
    }

    private void hp(RemoteCallbackList<xs> remoteCallbackList) {
        if (remoteCallbackList != null) {
            try {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                    try {
                        xs xsVar = (xs) remoteCallbackList.getBroadcastItem(i2);
                        if (xsVar != null) {
                            ((com.byazt.gd.a) xsVar).jx();
                        }
                    } catch (Throwable th) {
                        u.hp("MultiProcess", "recycleRes1 throw Exception : ", th);
                    }
                }
                remoteCallbackList.finishBroadcast();
                remoteCallbackList.kill();
            } catch (Throwable th2) {
                u.hp("MultiProcess", "recycleRes2 throw Exception : ", th2);
            }
        }
    }

    private synchronized void l(String str, String str2, long j2, long j3, String str3, String str4) {
        try {
            if (hp == null) {
                return;
            }
            if ("recycleRes".equals(str2)) {
                hp(hp.remove(str));
                u.l("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, materialMd5:".concat(String.valueOf(str)));
                u.l("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, mListenerMap sizee:" + hp.size());
                return;
            }
            RemoteCallbackList<xs> remoteCallbackList = hp.get(str);
            if (remoteCallbackList != null) {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                    try {
                        xs xsVar = (xs) remoteCallbackList.getBroadcastItem(i2);
                        if (xsVar != null) {
                            if ("onIdle".equals(str2)) {
                                xsVar.hp();
                            } else if ("onDownloadActive".equals(str2)) {
                                xsVar.hp(j2, j3, str3, str4);
                            } else if ("onDownloadPaused".equals(str2)) {
                                xsVar.l(j2, j3, str3, str4);
                            } else if ("onDownloadFailed".equals(str2)) {
                                try {
                                    xsVar.jx(j2, j3, str3, str4);
                                } catch (Throwable th) {
                                    th = th;
                                    u.hp("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess1: " + str2 + " throws Exception :", th);
                                }
                            } else if ("onDownloadFinished".equals(str2)) {
                                xsVar.hp(j2, str3, str4);
                            } else if ("onInstalled".equals(str2)) {
                                xsVar.hp(str3, str4);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (Throwable th3) {
            u.hp("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess2: " + str2 + " throws Exception :", th3);
        }
    }
}
