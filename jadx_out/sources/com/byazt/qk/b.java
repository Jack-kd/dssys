package com.byazt.qk;

import android.content.Context;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 64, 157})
/* loaded from: classes3.dex */
public class b extends di {
    public b(Context context, mp mpVar, com.byazt.jt.l lVar, int i2) {
        super(context, mpVar, lVar, i2);
    }

    @Override // com.byazt.qk.di, com.byazt.qk.cx
    public void initExpressView(Context context, mp mpVar, com.byazt.jt.l lVar) {
        this.f24821j = "draw_ad";
        NativeExpressDrawVideoView nativeExpressDrawVideoView = new NativeExpressDrawVideoView(context, mpVar, lVar, "draw_ad");
        ((cx) this).hp = nativeExpressDrawVideoView;
        hp(nativeExpressDrawVideoView, this.jx);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setCanInterruptVideoPlay(boolean z2) {
        NativeExpressView nativeExpressView = ((cx) this).hp;
        if (nativeExpressView != null) {
            ((NativeExpressVideoView) nativeExpressView).setCanInterruptVideoPlay(z2);
        }
    }
}
