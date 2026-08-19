package com.byazt.bzj;

import android.util.SparseArray;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, 30})
/* loaded from: classes2.dex */
public abstract class jx extends com.byazt.rt.jx {

    /* renamed from: q, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f18695q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.rlh.l f18696s;

    public jx(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        this.f18696s = lVar;
        this.f18695q = function;
    }

    @Override // com.byazt.rt.jx
    public void bidLoseNotify(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int i2 = 10001;
        try {
            Object obj = map.get("bidding_lose_reason_NUM");
            int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
            if (iIntValue > 0) {
                i2 = iIntValue;
            }
        } catch (Exception unused) {
        }
        receiveBidResult(false, -1.0d, i2, null);
    }

    @Override // com.byazt.rt.jx
    public void bidWinNotify(Map<String, Object> map) {
        receiveBidResult(true, getCpm(), -1, null);
    }

    @Override // com.byazt.rt.jx
    public boolean hasDestroyed() {
        return false;
    }

    @Override // com.byazt.rt.jx
    public Integer isReadyStatus() {
        com.byazt.rlh.l lVar = this.f18696s;
        return lVar != null ? lVar.isReadyStatus() : super.isReadyStatus();
    }

    @Override // com.byazt.rt.jx
    public void onDestroy() {
        super.onDestroy();
        com.byazt.rlh.l lVar = this.f18696s;
        if (lVar != null) {
            lVar.onDestroy();
        }
    }

    @Override // com.byazt.rt.jx
    public void onPause() {
        super.onPause();
        com.byazt.rlh.l lVar = this.f18696s;
        if (lVar != null) {
            lVar.onPause();
        }
    }

    @Override // com.byazt.rt.jx
    public void onResume() {
        super.onResume();
        com.byazt.rlh.l lVar = this.f18696s;
        if (lVar != null) {
            lVar.onResume();
        }
    }

    public void receiveBidResult(boolean z2, double d2, int i2, Map<String, Object> map) {
        com.byazt.rlh.l lVar = this.f18696s;
        if (lVar != null) {
            lVar.receiveBidResult(z2, d2, i2, map);
        }
    }
}
