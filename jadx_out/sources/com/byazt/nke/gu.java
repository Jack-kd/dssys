package com.byazt.nke;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
@ATSKeep
/* loaded from: classes3.dex */
public class gu implements e, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile e f23672l;

    public gu(e eVar) {
        this.f23672l = eVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        return this.f23672l.coverterTo((Bitmap) sparseArray.get(1));
    }

    @Override // com.byazt.nke.e
    public Bitmap coverterTo(Bitmap bitmap) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bitmap);
        return (Bitmap) this.hp.apply(sparseArray);
    }

    public gu(Function function) {
        this.hp = function;
    }
}
