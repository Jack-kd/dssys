package com.byazt.pl;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.u;
import com.byazt.xci.rz;
import com.byazt.zn.ky;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2102, 94})
/* loaded from: classes3.dex */
public class eb extends hp {
    public static Map<String, RemoteCallbackList<u>> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static volatile eb f24434l;

    private synchronized void j(String str, String str2, Bundle bundle) {
        RemoteCallbackList<u> remoteCallbackListRemove;
        RemoteCallbackList<u> remoteCallbackListRemove2;
        try {
            if (hp != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackListRemove = hp.remove(str);
                    remoteCallbackListRemove2 = hp.remove(rz.hp(str));
                } else {
                    remoteCallbackListRemove = hp.get(str);
                    remoteCallbackListRemove2 = null;
                }
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                        try {
                            u uVar = (u) remoteCallbackListRemove.getBroadcastItem(i2);
                            if (uVar != null) {
                                if ("onAdShow".equals(str2)) {
                                    uVar.hp(bundle);
                                } else if ("onAdClose".equals(str2)) {
                                    uVar.jx();
                                } else if ("onVideoComplete".equals(str2)) {
                                    uVar.j();
                                } else if ("onVideoError".equals(str2)) {
                                    uVar.w();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    uVar.l();
                                } else if ("onRewardVerify".equals(str2)) {
                                    hp(uVar, bundle);
                                } else if ("onRewardArrived".equals(str2)) {
                                    l(uVar, bundle);
                                } else if ("onSkippedVideo".equals(str2)) {
                                    uVar.a();
                                } else if ("recycleRes".equals(str2)) {
                                    uVar.hp();
                                }
                            }
                        } catch (Throwable th) {
                            com.byazt.ymw.u.hp("MultiProcess", "reward1 '" + str2 + "'  throws Exception :", th);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
                if (remoteCallbackListRemove2 != null) {
                    int iBeginBroadcast2 = remoteCallbackListRemove2.beginBroadcast();
                    for (int i3 = 0; i3 < iBeginBroadcast2; i3++) {
                        try {
                            u uVar2 = (u) remoteCallbackListRemove2.getBroadcastItem(i3);
                            if (uVar2 != null && "recycleRes".equals(str2)) {
                                uVar2.hp();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    remoteCallbackListRemove2.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove2.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            com.byazt.ymw.u.hp("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th2);
        }
    }

    public static eb l() {
        if (f24434l == null) {
            synchronized (eb.class) {
                try {
                    if (f24434l == null) {
                        f24434l = new eb();
                    }
                } finally {
                }
            }
        }
        return f24434l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public synchronized void hp(String str, u uVar) throws RemoteException {
        RemoteCallbackList<u> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(uVar);
        hp.put(str, remoteCallbackList);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, String str2, Bundle bundle) throws RemoteException {
        j(str, str2, bundle);
    }

    private void hp(u uVar, Bundle bundle) throws RemoteException {
        boolean z2 = bundle.getBoolean("callback_extra_key_reward_valid");
        int i2 = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i3 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        uVar.hp(z2, i2, string != null ? string : "", i3, string2 != null ? string2 : "");
    }

    private void l(u uVar, Bundle bundle) throws RemoteException {
        boolean z2 = bundle.getBoolean("callback_extra_key_reward_valid");
        int i2 = bundle.getInt("callback_extra_key_reward_type");
        uVar.hp(z2, i2, ky.hp(i2, bundle));
    }
}
