package com.byazt.yni;

import android.content.res.Resources;
import android.widget.FrameLayout;
import com.byazt.cj.FullSwiperView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 316, 45})
/* loaded from: classes3.dex */
public class e extends l {

    /* renamed from: k, reason: collision with root package name */
    public float f28175k;

    /* renamed from: u, reason: collision with root package name */
    public FullSwiperView f28176u;

    /* renamed from: v, reason: collision with root package name */
    public float f28177v;

    public e(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
    }

    public void a() throws Resources.NotFoundException {
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            fullSwiperView.eb();
        }
    }

    @Override // com.byazt.yni.l
    public void e() {
        super.e();
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            fullSwiperView.w();
        }
    }

    public void hp(float[] fArr) {
        this.f28175k = fArr[0];
        this.f28177v = fArr[1];
    }

    public void j() {
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            fullSwiperView.j();
        }
    }

    public void jx() {
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            fullSwiperView.jx();
        }
    }

    public void l() {
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            fullSwiperView.l();
        }
    }

    public int w() {
        FullSwiperView fullSwiperView = this.f28176u;
        if (fullSwiperView != null) {
            return fullSwiperView.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.byazt.yni.l
    public void hp() {
        super.hp();
        this.eb.setBackgroundColor(0);
        this.f28176u = new FullSwiperView(this.f28200l);
    }

    public void hp(List<com.byazt.cj.hp> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f28176u.hp(list).hp(this.f28175k).l(this.f28177v).hp(String.valueOf(ky.zy(this.jx))).hp();
        this.eb.addView(this.f28176u, new FrameLayout.LayoutParams(-1, -1));
    }
}
