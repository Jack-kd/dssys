package com.byazt.km;

import android.os.RemoteException;
import com.byazt.ye.j;
import com.bytedance.pangle.ZeusPluginStateListener;

@com.byazt.kj.hp(hp = {0, 1, 1377, 30})
/* loaded from: classes.dex */
public class jx extends ZeusPluginStateListener {
    public final j hp;

    /* renamed from: l, reason: collision with root package name */
    public final int f22100l;

    public jx(j jVar, int i2) {
        this.hp = jVar;
        this.f22100l = i2;
    }

    public int hp() {
        return this.f22100l;
    }

    @Override // com.bytedance.pangle.ZeusPluginStateListener
    public void onStateChangeOnCurThread(String str, int i2, Object... objArr) {
        if (i2 == 5 || i2 == 7 || i2 == 6) {
            String strValueOf = "";
            if (objArr != null) {
                try {
                    if (objArr.length > 0) {
                        strValueOf = String.valueOf(objArr[0]);
                    }
                } catch (RemoteException unused) {
                    return;
                }
            }
            this.hp.hp(str, i2, strValueOf);
        }
    }
}
