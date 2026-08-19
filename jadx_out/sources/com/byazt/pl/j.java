package com.byazt.pl;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.jl;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 2102, 38})
/* loaded from: classes3.dex */
public class j extends hp {
    public static HashMap<String, RemoteCallbackList<jl>> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static volatile j f24435l;

    public static j l() {
        if (f24435l == null) {
            synchronized (j.class) {
                try {
                    if (f24435l == null) {
                        f24435l = new j();
                    }
                } finally {
                }
            }
        }
        return f24435l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, jl jlVar) throws RemoteException {
        if (jlVar == null) {
            return;
        }
        RemoteCallbackList<jl> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(jlVar);
        hp.put(str, remoteCallbackList);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, String str2) throws RemoteException {
        RemoteCallbackList<jl> remoteCallbackListRemove = hp.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
            jl jlVar = (jl) remoteCallbackListRemove.getBroadcastItem(i2);
            if (jlVar != null) {
                if (str2 == null) {
                    jlVar.hp();
                } else {
                    jlVar.hp(str2);
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }
}
