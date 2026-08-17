package com.byazt.cc;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.lf.k;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 771, 1470})
/* loaded from: classes2.dex */
public class RewardBrowserMixTopLayoutImpl extends FrameLayout implements hp<RewardBrowserMixTopLayoutImpl> {
    public View hp;

    /* renamed from: j, reason: collision with root package name */
    public mp f18717j;
    public l jx;

    /* renamed from: l, reason: collision with root package name */
    public View f18718l;

    /* renamed from: w, reason: collision with root package name */
    public Context f18719w;

    public RewardBrowserMixTopLayoutImpl(Context context) {
        this(context, null);
    }

    private void j() {
        xh.hp(this.hp, new View.OnClickListener() { // from class: com.byazt.cc.RewardBrowserMixTopLayoutImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("topListener", RewardBrowserMixTopLayoutImpl.this.jx);
                    jSONObject.put("topImpl", 2);
                } catch (Throwable unused) {
                }
                k.hp().hp(RewardBrowserMixTopLayoutImpl.this.f18717j, "stats_reward_full_click_native_close", jSONObject);
                if (RewardBrowserMixTopLayoutImpl.this.jx != null) {
                    RewardBrowserMixTopLayoutImpl.this.jx.hp(view);
                }
            }
        }, "top_skip_border");
        xh.hp(this.f18718l, new View.OnClickListener() { // from class: com.byazt.cc.RewardBrowserMixTopLayoutImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RewardBrowserMixTopLayoutImpl.this.jx != null) {
                    RewardBrowserMixTopLayoutImpl.this.jx.jx(view);
                }
            }
        }, "top_dislike_button");
    }

    @Override // com.byazt.cc.hp
    public View getCloseButton() {
        return this.hp;
    }

    @Override // com.byazt.cc.hp
    public boolean getSkipOrCloseVisible() {
        return xh.j(this.hp);
    }

    public l getTopListener() {
        return this.jx;
    }

    @Override // com.byazt.cc.hp
    public void hp(String str, String str2, boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void jx() {
        View view = this.f18718l;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.byazt.cc.hp
    public void l() {
    }

    @Override // com.byazt.cc.hp
    public void setDislikeLeft(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setListener(l lVar) {
        this.jx = lVar;
    }

    @Override // com.byazt.cc.hp
    public void setPlayAgainEntranceText(String str) {
    }

    @Override // com.byazt.cc.hp
    public void setShowAgain(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setShowBack(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setShowDislike(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setShowSound(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setSoundMute(boolean z2) {
    }

    @Override // com.byazt.cc.hp
    public void setVisible(boolean z2) {
        setVisibility(z2 ? 0 : 8);
    }

    public RewardBrowserMixTopLayoutImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.byazt.cc.hp
    public void hp(boolean z2, String str, String str2, boolean z3, boolean z4) {
    }

    public RewardBrowserMixTopLayoutImpl(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f18719w = context;
    }

    public RewardBrowserMixTopLayoutImpl hp(mp mpVar) {
        this.f18717j = mpVar;
        addView(com.byazt.vi.a.s(getContext()));
        this.hp = findViewById(2114387869);
        View viewFindViewById = findViewById(2114387453);
        this.f18718l = findViewById(2114387454);
        if (ec.v(mpVar)) {
            this.hp = findViewById(2114387869);
            this.f18718l.setVisibility(8);
            viewFindViewById.setVisibility(8);
            this.hp.setBackground(com.byazt.vi.a.qu(this.f18719w));
        } else if (ec.u(mpVar)) {
            findViewById(2114387738).setVisibility(8);
            this.hp = findViewById(2114387869);
        } else {
            this.hp = findViewById(2114387713);
            this.f18718l.setVisibility(8);
            viewFindViewById.setVisibility(8);
        }
        if (this.hp != null) {
            if (mpVar.as()) {
                this.hp.setVisibility(8);
            } else {
                this.hp.setVisibility(0);
                this.hp.setEnabled(true);
                this.hp.setClickable(true);
            }
        }
        j();
        return this;
    }

    @Override // com.byazt.cc.hp
    public void hp() {
        View view = this.hp;
        if (view != null) {
            view.performClick();
        }
    }
}
