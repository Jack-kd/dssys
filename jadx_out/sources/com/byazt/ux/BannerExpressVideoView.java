package com.byazt.ux;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.qk.NativeExpressVideoView;
import com.byazt.qk.NativeExpressView;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 115, 1910})
/* loaded from: classes3.dex */
public class BannerExpressVideoView extends hp {
    public BannerExpressVideoView(Context context, mp mpVar, com.byazt.jt.l lVar) {
        super(context, mpVar, lVar);
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ NativeExpressView getCurView() {
        return super.getCurView();
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ NativeExpressView getNextView() {
        return super.getNextView();
    }

    public com.byazt.nc.hp getVideoModel() {
        NativeExpressView nativeExpressView = this.f26446l;
        if (nativeExpressView != null) {
            return ((NativeExpressVideoView) nativeExpressView).getVideoModel();
        }
        return null;
    }

    @Override // com.byazt.ux.hp
    public void hp() {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(this.hp, this.f26445j, this.f26449w, this.f26444e);
        this.f26446l = nativeExpressVideoView;
        addView(nativeExpressVideoView, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void j() {
        super.j();
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void jx() {
        super.jx();
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ boolean l() {
        return super.l();
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void setDuration(int i2) {
        super.setDuration(i2);
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void setExpressInteractionListener(com.byazt.qk.hp hpVar) {
        super.setExpressInteractionListener(hpVar);
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void setVideoAdListener(com.byazt.qrd.jx jxVar) {
        super.setVideoAdListener(jxVar);
    }

    @Override // com.byazt.ux.hp
    public /* bridge */ /* synthetic */ void w() {
        super.w();
    }

    @Override // com.byazt.ux.hp
    public void hp(mp mpVar, com.byazt.jt.l lVar) {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(this.hp, mpVar, lVar, this.f26444e);
        this.jx = nativeExpressVideoView;
        nativeExpressVideoView.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.ux.BannerExpressVideoView.1
            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
                BannerExpressVideoView bannerExpressVideoView = BannerExpressVideoView.this;
                com.byazt.qk.hp hpVar = bannerExpressVideoView.f26443a;
                if (hpVar != null) {
                    hpVar.hp(bannerExpressVideoView, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, float f2, float f3) {
                BannerExpressVideoView.this.hp(f2, f3);
                BannerExpressVideoView.this.a();
            }
        });
        xh.hp((View) this.jx, 8);
        addView(this.jx, new ViewGroup.LayoutParams(-1, -1));
    }
}
