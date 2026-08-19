package com.byazt.yni;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.byazt.nk.TTProgressBar;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 316, 1266})
/* loaded from: classes3.dex */
public class RewardFullBaseLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public FrameLayout f28161a;

    /* renamed from: e, reason: collision with root package name */
    public FrameLayout f28162e;
    public FrameLayout eb;
    public FrameLayout gu;
    public TTProgressBar hp;

    /* renamed from: j, reason: collision with root package name */
    public long f28163j;
    public FrameLayout jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public int f28164k;

    /* renamed from: l, reason: collision with root package name */
    public TTProgressBar f28165l;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f28166q;

    /* renamed from: s, reason: collision with root package name */
    public FrameLayout f28167s;

    /* renamed from: u, reason: collision with root package name */
    public int f28168u;

    /* renamed from: v, reason: collision with root package name */
    public int f28169v;

    /* renamed from: w, reason: collision with root package name */
    public hp f28170w;
    public int xs;
    public FrameLayout zy;

    public interface hp {
        void hp();
    }

    public RewardFullBaseLayout(Context context) {
        super(context);
    }

    private FrameLayout j() {
        FrameLayout frameLayoutW = w();
        this.f28162e = frameLayoutW;
        return frameLayoutW;
    }

    private FrameLayout jx() {
        FrameLayout frameLayoutW = w();
        this.f28166q = frameLayoutW;
        return frameLayoutW;
    }

    private FrameLayout l() {
        this.zy = w();
        FrameLayout frameLayoutW = w();
        this.jl = frameLayoutW;
        this.zy.addView(frameLayoutW);
        FrameLayout frameLayoutW2 = w();
        this.eb = frameLayoutW2;
        frameLayoutW2.setVisibility(8);
        this.jl.addView(this.eb);
        FrameLayout frameLayoutW3 = w();
        this.f28167s = frameLayoutW3;
        frameLayoutW3.setVisibility(8);
        this.jl.addView(this.f28167s);
        this.gu = w();
        return this.zy;
    }

    private FrameLayout w() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public FrameLayout getEasyPlayableContainer() {
        return this.gu;
    }

    public FrameLayout getEndCardFrameContainer() {
        return this.f28166q;
    }

    public FrameLayout getExpressFrameContainer() {
        return this.f28167s;
    }

    public FrameLayout getSceneFrame() {
        return this.jl;
    }

    public FrameLayout getSceneFrameContainer() {
        return this.zy;
    }

    public FrameLayout getTopFrameContainer() {
        return this.f28162e;
    }

    public FrameLayout getWidgetFrameContainer() {
        return this.eb;
    }

    public void hp(com.byazt.vsq.hp hpVar) {
        FrameLayout frameLayoutW = w();
        this.f28161a = frameLayoutW;
        frameLayoutW.setPadding(this.f28164k, this.f28169v, this.f28168u, this.xs);
        this.f28161a.setClipChildren(false);
        this.f28161a.addView(l());
        this.f28161a.addView(jx());
        this.f28161a.addView(j());
        addView(this.f28161a);
        this.eb.addView(hpVar.q());
        this.f28166q.addView(hpVar.e());
        this.f28162e.addView(hpVar.gu());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f28170w == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.jx = motionEvent.getY();
            this.f28163j = System.currentTimeMillis();
        } else if (action == 1) {
            float y2 = motionEvent.getY();
            float f2 = this.jx;
            if (y2 < f2 && Math.abs(y2 - f2) > xh.jx(getContext(), 30.0f)) {
                this.f28170w.hp();
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void hp(int i2) {
        if (this.hp == null) {
            this.hp = new TTProgressBar(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.hp.setLayoutParams(layoutParams);
            try {
                v.hp(getContext(), "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.yni.RewardFullBaseLayout.1
                    @Override // com.byazt.oxb.hp
                    public void hp(Bitmap bitmap) {
                        RewardFullBaseLayout.this.hp.setIndeterminateDrawable(com.byazt.vi.w.hp(RewardFullBaseLayout.this.getContext(), new BitmapDrawable(RewardFullBaseLayout.this.getContext().getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
                    }
                }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } catch (Throwable unused) {
            }
            addView(this.hp);
        }
        this.hp.setVisibility(i2);
    }

    public void hp(int i2, TTProgressBar tTProgressBar) {
        TTProgressBar tTProgressBar2 = this.f28165l;
        if (tTProgressBar2 != null) {
            tTProgressBar2.setVisibility(8);
            removeView(this.f28165l);
        }
        if (tTProgressBar == null) {
            return;
        }
        this.f28165l = tTProgressBar;
        addView(tTProgressBar);
        this.f28165l.setVisibility(i2);
    }

    public void hp(hp hpVar) {
        this.f28170w = hpVar;
    }

    public void hp() {
        this.f28170w = null;
    }

    public void hp(int i2, int i3, int i4, int i5) {
        this.f28164k = i2;
        this.f28169v = i3;
        this.f28168u = i4;
        this.xs = i5;
    }
}
