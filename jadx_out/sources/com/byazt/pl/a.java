package com.byazt.pl;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.jz.v;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2102, 54})
/* loaded from: classes3.dex */
public class a extends hp {
    public static final Map<String, RemoteCallbackList<v>> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static volatile a f24433l;

    private synchronized Bundle j(String str, String str2, Bundle bundle) {
        Bundle bundle2;
        bundle2 = new Bundle();
        try {
            Map<String, RemoteCallbackList<v>> map = hp;
            if (map != null) {
                RemoteCallbackList<v> remoteCallbackListRemove = "recycleRes".equals(str2) ? map.remove(str) : map.get(str);
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                        try {
                            v vVar = (v) remoteCallbackListRemove.getBroadcastItem(i2);
                            if (vVar != null && "getPlayAgainCondition".equals(str2)) {
                                bundle2 = vVar.hp(bundle.getInt("callback_extra_key_next_play_again_count"));
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return bundle2;
    }

    public static a l() {
        if (f24433l == null) {
            synchronized (a.class) {
                try {
                    if (f24433l == null) {
                        f24433l = new a();
                    }
                } finally {
                }
            }
        }
        return f24433l;
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public void hp(String str, v vVar) throws RemoteException {
        RemoteCallbackList<v> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(vVar);
        hp.put(str, remoteCallbackList);
    }

    @Override // com.byazt.pl.hp, com.byazt.jz.k
    public Bundle jx(String str, String str2, Bundle bundle) throws RemoteException {
        return j(str, str2, bundle);
    }
}
