package com.byazt.qo;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.WriggleGuideAnimationView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec implements eb<WriggleGuideAnimationView> {

    /* renamed from: a, reason: collision with root package name */
    public String f24994a;
    public com.byazt.nw.e eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public DynamicBaseWidget f24995j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public WriggleGuideAnimationView f24996l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24997s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.nw.eb f24998w;

    public ec(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, String str, com.byazt.nw.e eVar, boolean z2, int i2) {
        this.jx = context;
        this.f24995j = dynamicBaseWidget;
        this.f24998w = ebVar;
        this.f24994a = str;
        this.eb = eVar;
        this.f24997s = z2;
        this.hp = i2;
        w();
    }

    private void w() {
        int iYr = this.f24998w.yr();
        final com.byazt.thw.hp dynamicClickListener = this.f24995j.getDynamicClickListener();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("convertActionType", 2);
            dynamicClickListener.hp(jSONObject);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.f24994a)) {
            Context context = this.jx;
            WriggleGuideAnimationView wriggleGuideAnimationView = new WriggleGuideAnimationView(context, com.byazt.eh.l.q(context), this.eb, this.f24997s, this.hp);
            this.f24996l = wriggleGuideAnimationView;
            if (wriggleGuideAnimationView.getWriggleLayout() != null) {
                this.f24996l.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.f24996l.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.f24998w.rk())) {
                    this.f24996l.getTopTextView().setText("扭动手机 或 点击图标");
                } else {
                    this.f24996l.getTopTextView().setText(this.f24998w.rk());
                }
            }
        } else {
            Context context2 = this.jx;
            this.f24996l = new WriggleGuideAnimationView(context2, com.byazt.eh.l.q(context2), this.eb, this.f24997s, this.hp);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.f24996l.setTranslationY(-((int) com.byazt.sq.s.hp(this.jx, iYr)));
        this.f24996l.setLayoutParams(layoutParams);
        this.f24996l.setShakeText(this.f24998w.zx());
        this.f24996l.setClipChildren(false);
        final View wriggleProgressIv = this.f24996l.getWriggleProgressIv();
        this.f24996l.setOnShakeViewListener(new WriggleGuideAnimationView.hp() { // from class: com.byazt.qo.ec.1
            @Override // com.byazt.wnd.WriggleGuideAnimationView.hp
            public void hp() {
                if (wriggleProgressIv != null) {
                    if (ec.this.f24996l != null) {
                        ec.this.f24996l.setOnClickListener((View.OnClickListener) dynamicClickListener);
                        ec.this.f24996l.performClick();
                    }
                    if (ec.this.f24998w == null || !ec.this.f24998w.ea()) {
                        return;
                    }
                    ec.this.f24996l.setOnClickListener(null);
                }
            }
        });
    }

    @Override // com.byazt.qo.eb
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public WriggleGuideAnimationView jx() {
        return this.f24996l;
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.f24996l.hp();
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.f24996l.clearAnimation();
    }
}
