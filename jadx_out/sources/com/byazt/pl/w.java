package com.byazt.pl;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.zy;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2102, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {
    public static Map<String, RemoteCallbackList<zy>> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static volatile w f24438l;

    private synchronized void j(String str, String str2, Bundle bundle) {
        try {
            if (hp != null) {
                RemoteCallbackList<zy> remoteCallbackListRemove = "recycleRes".equals(str2) ? hp.remove(str) : hp.get(str);
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                        try {
                            zy zyVar = (zy) remoteCallbackListRemove.getBroadcastItem(i2);
                            if (zyVar != null) {
                                if ("onAdShow".equals(str2)) {
                                    zyVar.hp(bundle);
                                } else if ("onAdClose".equals(str2)) {
                                    zyVar.jx();
                                } else if ("onVideoComplete".equals(str2)) {
                                    zyVar.j();
                                } else if ("onSkippedVideo".equals(str2)) {
                                    zyVar.w();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    zyVar.l();
                                } else if ("recycleRes".equals(str2)) {
                                    zyVar.hp();
                                }
                            }
                        } catch (Throwable th) {
                            u.hp("MultiProcess", "fullScreen2 method " + str2 + " throws Exception :", th);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            u.hp("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th2);
        }
    }

    public static w l() {
        if (f24438l == null) {
            synchronized (w.class) {
                try {
                    if (f24438l == null) {
                        f24438l = new w();
                    }
                } finally {
                }
            }
        }
        return f24438l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public synchronized void hp(String str, zy zyVar) throws RemoteException {
        RemoteCallbackList<zy> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(zyVar);
        hp.put(str, remoteCallbackList);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void l(String str, String str2, Bundle bundle) throws RemoteException {
        j(str, str2, bundle);
    }
}
