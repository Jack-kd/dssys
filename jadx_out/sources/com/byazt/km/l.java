package com.byazt.km;

import android.os.RemoteException;
import com.byazt.ye.j;
import com.byazt.ye.k;

@com.byazt.kj.hp(hp = {0, 1, 1377, 34})
/* loaded from: classes.dex */
public class l extends j.hp {
    public final k hp;

    public l(k kVar) {
        this.hp = kVar;
    }

    @Override // com.byazt.ye.j
    public void hp(String str, int i2, String str2) throws RemoteException {
        k kVar = this.hp;
        if (kVar != null) {
            kVar.hp(str, i2, str2);
        }
    }
}
