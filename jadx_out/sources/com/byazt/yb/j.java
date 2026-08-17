package com.byazt.yb;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1520, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f27875l;

    public j(jx jxVar) {
        this.f27875l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.f27875l.onNetworkChanged((Context) sparseArray.get(1), (Intent) sparseArray.get(2), ((Boolean) sparseArray.get(3)).booleanValue(), ((Integer) sparseArray.get(4)).intValue());
        return null;
    }

    @Override // com.byazt.yb.jx
    public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, intent);
        sparseArray.put(3, Boolean.valueOf(z2));
        sparseArray.put(4, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    public j(Function function) {
        this.hp = function;
    }
}
