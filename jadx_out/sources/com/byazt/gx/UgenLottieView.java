package com.byazt.gx;

import android.content.Context;
import com.byazt.na.LottieAnimationView;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 210, 1983})
/* loaded from: classes2.dex */
public class UgenLottieView extends LottieAnimationView {
    public j hp;

    public UgenLottieView(Context context) {
        super(context);
    }

    public void hp(j jVar) {
        this.hp = jVar;
    }

    @Override // com.byazt.na.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // com.byazt.na.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }
}
