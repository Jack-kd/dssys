package com.byazt.hp;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.hp.EffectView;
import com.byazt.jz.ec;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.mp;
import com.byazt.xci.wv;

@com.byazt.kj.hp(hp = {0, 1, 28, 2161})
/* loaded from: classes2.dex */
public class CreativeContainer extends FrameLayout {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public EffectView f20749j;
    public final ec jx;

    /* renamed from: l, reason: collision with root package name */
    public final mp f20750l;

    /* renamed from: w, reason: collision with root package name */
    public UpieImageView f20751w;

    public CreativeContainer(@NonNull Context context, mp mpVar, ec ecVar) {
        super(context);
        this.hp = context;
        this.f20750l = mpVar;
        this.jx = ecVar;
        hp();
    }

    private void hp() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        UpieImageView upieImageView = new UpieImageView(this.hp, com.byazt.nwu.hp.q(this.f20750l), com.byazt.fbd.hp.hp(this.f20750l), null);
        this.f20751w = upieImageView;
        addView(upieImageView, layoutParams);
        this.f20751w.setVisibility(4);
        if (wv.w(this.f20750l)) {
            EffectView effectView = new EffectView(this.hp, this.f20750l, this.jx);
            this.f20749j = effectView;
            addView(effectView, layoutParams);
            this.f20749j.hp(new EffectView.hp() { // from class: com.byazt.hp.CreativeContainer.1
                @Override // com.byazt.hp.EffectView.hp
                public void hp() {
                    if (CreativeContainer.this.f20751w != null) {
                        CreativeContainer.this.f20751w.setVisibility(8);
                    }
                }

                @Override // com.byazt.hp.EffectView.hp
                public void hp(String str) {
                    if (CreativeContainer.this.f20749j != null) {
                        CreativeContainer creativeContainer = CreativeContainer.this;
                        creativeContainer.removeView(creativeContainer.f20749j);
                        CreativeContainer.this.f20749j = null;
                    }
                    if (CreativeContainer.this.f20751w != null) {
                        CreativeContainer.this.f20751w.setVisibility(0);
                    }
                }
            });
            return;
        }
        UpieImageView upieImageView2 = this.f20751w;
        if (upieImageView2 != null) {
            upieImageView2.setVisibility(0);
        }
    }

    public static boolean hp(mp mpVar) {
        return (!mp.hp(mpVar) || mp.l(mpVar)) && mpVar != null && !mp.jx(mpVar) && (wv.w(mpVar) || com.byazt.nwu.hp.s(mpVar));
    }
}
