package com.byazt.uf;

import android.content.Context;
import com.byazt.wnd.GifView;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 889, 890})
/* loaded from: classes3.dex */
public class UgenGif extends GifView {
    public j hp;

    public UgenGif(Context context) {
        super(context);
    }

    public void hp(j jVar) {
        this.hp = jVar;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // com.byazt.wnd.GifView, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
    }

    @Override // com.byazt.wnd.GifView, android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.jx();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }
}
