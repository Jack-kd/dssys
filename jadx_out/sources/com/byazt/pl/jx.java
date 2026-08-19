package com.byazt.pl;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.gu;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 2102, 30})
/* loaded from: classes3.dex */
public class jx extends hp {
    public static HashMap<String, RemoteCallbackList<gu>> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f24436l;

    public static jx l() {
        if (f24436l == null) {
            synchronized (jx.class) {
                try {
                    if (f24436l == null) {
                        f24436l = new jx();
                    }
                } finally {
                }
            }
        }
        return f24436l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, gu guVar) throws RemoteException {
        if (guVar == null) {
            return;
        }
        RemoteCallbackList<gu> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(guVar);
        hp.put(str, remoteCallbackList);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, int i2) throws RemoteException {
        RemoteCallbackList<gu> remoteCallbackListRemove = hp.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
            gu guVar = (gu) remoteCallbackListRemove.getBroadcastItem(i3);
            if (guVar != null) {
                if (i2 == 1) {
                    guVar.hp();
                } else if (i2 == 2) {
                    guVar.l();
                } else if (i2 != 3) {
                    guVar.jx();
                } else {
                    guVar.jx();
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }
}
