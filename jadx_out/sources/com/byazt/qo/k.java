package com.byazt.qo;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.ShakeAnimationView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 42})
/* loaded from: classes3.dex */
public class k implements eb<ShakeAnimationView>, v {

    /* renamed from: a, reason: collision with root package name */
    public String f25000a;
    public com.byazt.nw.e eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public DynamicBaseWidget f25001j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public ShakeAnimationView f25002l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f25003s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.nw.eb f25004w;

    public k(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, String str, com.byazt.nw.e eVar, boolean z2, int i2) {
        this.jx = context;
        this.f25001j = dynamicBaseWidget;
        this.f25004w = ebVar;
        this.f25000a = str;
        this.eb = eVar;
        this.f25003s = z2;
        this.hp = i2;
        a();
    }

    private void a() {
        final com.byazt.thw.hp dynamicClickListener = this.f25001j.getDynamicClickListener();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("convertActionType", 1);
            dynamicClickListener.hp(jSONObject);
        } catch (Throwable unused) {
        }
        if ("16".equals(this.f25000a)) {
            Context context = this.jx;
            ShakeAnimationView shakeAnimationView = new ShakeAnimationView(context, com.byazt.eh.l.s(context), this.eb, this.f25003s, this.hp);
            this.f25002l = shakeAnimationView;
            if (shakeAnimationView.getShakeLayout() != null) {
                this.f25002l.getShakeLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
        } else {
            Context context2 = this.jx;
            this.f25002l = new ShakeAnimationView(context2, com.byazt.eh.l.eb(context2), this.eb, this.f25003s, this.hp);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.f25002l.setGravity(17);
        layoutParams.gravity = 17;
        this.f25002l.setLayoutParams(layoutParams);
        this.f25002l.setTranslationY(com.byazt.sq.s.hp(this.jx, this.f25004w.nr()));
        this.f25002l.setShakeText(this.f25004w.zx());
        this.f25002l.setClipChildren(false);
        this.f25002l.setOnShakeViewListener(new ShakeAnimationView.hp() { // from class: com.byazt.qo.k.1
            @Override // com.byazt.wnd.ShakeAnimationView.hp
            public void hp(boolean z2) {
                com.byazt.thw.hp hpVar = dynamicClickListener;
                if (hpVar != null) {
                    hpVar.hp(z2, k.this);
                }
                k.this.f25002l.setOnClickListener((View.OnClickListener) dynamicClickListener);
                k.this.f25002l.performClick();
                if (k.this.f25004w == null || !k.this.f25004w.ea()) {
                    return;
                }
                k.this.f25002l.setOnClickListener(null);
            }
        });
    }

    @Override // com.byazt.qo.eb
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public ShakeAnimationView jx() {
        return this.f25002l;
    }

    @Override // com.byazt.qo.v
    public void w() {
        if (this.f25002l.getParent() != null) {
            ((ViewGroup) this.f25002l.getParent()).setVisibility(8);
        }
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.f25002l.hp();
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.f25002l.clearAnimation();
    }
}
