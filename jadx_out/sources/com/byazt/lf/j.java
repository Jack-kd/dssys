package com.byazt.lf;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.byazt.zn.cx;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 736, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements com.byazt.pg.jx, Function {
    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return getDid();
        }
        if (iIntValue == 2) {
            return getOAID(((Boolean) sparseArray.get(1)).booleanValue());
        }
        if (iIntValue != 3) {
            return null;
        }
        return encrypt((byte[]) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
    }

    @Override // com.byazt.pg.jx
    public byte[] encrypt(byte[] bArr, int i2) {
        return com.byazt.dnb.jx.hp(bArr, i2);
    }

    @Override // com.byazt.pg.jx
    public String getDid() {
        return com.byazt.jz.a.hp().jx();
    }

    @Override // com.byazt.pg.jx
    public String getOAID(boolean z2) {
        return cx.hp(z2);
    }
}
