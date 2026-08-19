package com.byazt.qk;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 64, 2112})
/* loaded from: classes3.dex */
public class NativeExpressDrawVideoView extends NativeExpressVideoView {
    public int cx;

    public NativeExpressDrawVideoView(Context context, mp mpVar, com.byazt.jt.l lVar, String str) {
        super(context, mpVar, lVar, str);
        this.cx = getResources().getConfiguration().orientation;
    }

    private void cx() {
        int i2 = getResources().getConfiguration().orientation;
        if (this.cx != i2) {
            this.cx = i2;
            xh.hp(this, new xh.hp() { // from class: com.byazt.qk.NativeExpressDrawVideoView.1
                @Override // com.byazt.zn.xh.hp
                public void hp(View view) {
                    int width = NativeExpressDrawVideoView.this.getWidth();
                    int height = NativeExpressDrawVideoView.this.getHeight();
                    NativeExpressDrawVideoView nativeExpressDrawVideoView = NativeExpressDrawVideoView.this;
                    nativeExpressDrawVideoView.hp(nativeExpressDrawVideoView.f24787k, width, height);
                    View viewFindViewById = NativeExpressDrawVideoView.this.f24787k.findViewById(2114387714);
                    NativeExpressDrawVideoView.this.hp(viewFindViewById, width, height);
                    if (viewFindViewById != null) {
                        viewFindViewById.requestLayout();
                    }
                    NativeExpressDrawVideoView nativeExpressDrawVideoView2 = NativeExpressDrawVideoView.this;
                    nativeExpressDrawVideoView2.hp(nativeExpressDrawVideoView2.getWebView(), width, height);
                    ExpressVideoView expressVideoView = NativeExpressDrawVideoView.this.gu;
                    if (expressVideoView != null) {
                        expressVideoView.hp(width, height);
                    }
                }
            });
        }
    }

    @Override // com.byazt.qk.NativeExpressVideoView, com.byazt.qk.NativeExpressView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        cx();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        cx();
    }

    @Override // com.byazt.qk.NativeExpressView, android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        cx();
    }

    @Override // com.byazt.qk.NativeExpressVideoView
    public ExpressVideoView hp(Context context, mp mpVar, String str) {
        return new ExpressVideoView(context, mpVar, str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view, int i2, int i3) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.width = i2;
        layoutParams.height = i3;
        view.setLayoutParams(layoutParams);
    }
}
