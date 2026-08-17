package com.byazt.ja;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 28})
/* loaded from: classes.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    private final IMediationAdSlot hp;

    public hp(IMediationAdSlot iMediationAdSlot) {
        this.hp = iMediationAdSlot;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        int iIntValue = com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987);
        if (iIntValue == 8260031) {
            return this.hp;
        }
        switch (iIntValue) {
            case 266001:
                break;
            case 266002:
                break;
            case 266003:
                break;
            case 266004:
                break;
            case 266005:
                break;
            case 266006:
                break;
            case 266007:
                break;
            case 266008:
                break;
            case 266009:
                break;
            case 266010:
                break;
            case 266011:
                break;
            case 266012:
                break;
            default:
                switch (iIntValue) {
                }
        }
        return null;
    }
}
