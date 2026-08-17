package com.byazt.qk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 2483})
/* loaded from: classes3.dex */
public class FullRewardExpressBackupView extends BackupView {

    /* renamed from: k, reason: collision with root package name */
    public NativeExpressView f24771k;

    /* renamed from: v, reason: collision with root package name */
    public FrameLayout f24772v;
    public View zy;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.hp = context;
    }

    private void jx() {
        FrameLayout frameLayout = new FrameLayout(this.hp);
        this.zy = frameLayout;
        frameLayout.setId(2114387734);
        addView(this.zy);
        FrameLayout frameLayout2 = (FrameLayout) this.zy.findViewById(2114387734);
        this.f24772v = frameLayout2;
        frameLayout2.removeAllViews();
    }

    private void l() {
        this.f24760a = xh.jx(this.hp, this.f24771k.getExpectExpressWidth());
        this.eb = xh.jx(this.hp, this.f24771k.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f24760a, this.eb);
        }
        layoutParams.width = this.f24760a;
        layoutParams.height = this.eb;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        jx();
    }

    public FrameLayout getVideoContainer() {
        return this.f24772v;
    }

    public void hp(mp mpVar, NativeExpressView nativeExpressView) {
        setBackgroundColor(-1);
        this.f24763l = mpVar;
        this.f24771k = nativeExpressView;
        if (ky.jl(mpVar) == 7) {
            this.f24766w = "rewarded_video";
        } else {
            this.f24766w = "fullscreen_interstitial_ad";
        }
        l();
        this.f24771k.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    @Override // com.byazt.qk.BackupView
    public void hp(View view, int i2, com.byazt.xci.b bVar) throws JSONException {
        NativeExpressView nativeExpressView = this.f24771k;
        if (nativeExpressView != null) {
            nativeExpressView.hp(view, i2, bVar, -1);
        }
    }
}
