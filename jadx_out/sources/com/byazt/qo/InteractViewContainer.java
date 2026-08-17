package com.byazt.qo;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.CircleLongPressView;
import com.byazt.wnd.RippleView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointType;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 2251})
/* loaded from: classes3.dex */
public class InteractViewContainer extends FrameLayout implements s {

    /* renamed from: a, reason: collision with root package name */
    public String f24985a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f24986e;
    public RippleView eb;
    public com.byazt.nw.e gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public View f24987j;
    public com.byazt.fub.zy jl;
    public com.byazt.nw.eb jx;

    /* renamed from: l, reason: collision with root package name */
    public DynamicBaseWidget f24988l;

    /* renamed from: q, reason: collision with root package name */
    public int f24989q;

    /* renamed from: s, reason: collision with root package name */
    public View.OnTouchListener f24990s;

    /* renamed from: w, reason: collision with root package name */
    public eb f24991w;

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        super(context);
        this.hp = context;
        this.f24988l = dynamicBaseWidget;
        this.jx = ebVar;
        eb();
    }

    private void eb() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.f24985a = this.jx.kg();
        this.f24989q = this.jx.f();
        this.f24986e = this.jx.ea();
        eb ebVarHp = q.hp(this.hp, this.f24988l, this.jx, this.gu, this.jl);
        this.f24991w = ebVarHp;
        if (ebVarHp != null) {
            this.f24987j = ebVarHp.jx();
            if (this.jx.mp()) {
                setBackgroundColor(Color.parseColor("#50000000"));
            }
            if (TextUtils.equals(this.f24985a, "6")) {
                if (!this.jx.su() || TextUtils.isEmpty(this.jx.rv())) {
                    this.eb = new RippleView(this.hp, Color.parseColor("#99000000"));
                } else {
                    this.eb = new RippleView(this.hp, com.byazt.nw.eb.hp(this.jx.rv()));
                }
                FrameLayout frameLayout = new FrameLayout(this.hp);
                frameLayout.addView(this.eb, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() { // from class: com.byazt.qo.InteractViewContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.eb.l();
                    }
                });
            }
            if (hp(this.f24985a) && com.byazt.wkx.j.hp()) {
                int color = Color.parseColor("#99000000");
                if (this.jx.su() && !TextUtils.isEmpty(this.jx.rv())) {
                    try {
                        color = com.byazt.nw.eb.hp(this.jx.rv());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.hp);
                view.setBackgroundColor(color);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.f24991w.jx());
            hp(this.f24991w.jx());
            setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.f24990s != null) {
            setOnClickListener((View.OnClickListener) this.f24988l.getDynamicClickListener());
            performClick();
            if (this.jx.jd()) {
                return;
            }
            setVisibility(8);
        }
    }

    private boolean s() {
        return (this.jx.ea() || TextUtils.equals("9", this.f24985a) || TextUtils.equals("16", this.f24985a) || TextUtils.equals(PointType.LOAD_READY, this.f24985a) || TextUtils.equals("18", this.f24985a) || TextUtils.equals("20", this.f24985a) || TextUtils.equals("29", this.f24985a) || TextUtils.equals(PointType.SIGMOB_APP, this.f24985a)) ? false : true;
    }

    public void a() {
        if (this.f24987j != null && TextUtils.equals(this.f24985a, "2")) {
            View view = this.f24987j;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).j();
            }
        }
    }

    public void j() {
        eb ebVar = this.f24991w;
        if (ebVar != null) {
            ebVar.l();
        }
    }

    public void jx() {
        eb ebVar = this.f24991w;
        if (ebVar != null) {
            ebVar.hp();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            eb ebVar = this.f24991w;
            if (ebVar != null) {
                ebVar.l();
            }
        } catch (Exception e2) {
            com.byazt.ymw.u.hp(e2.getMessage());
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f24990s instanceof com.byazt.dpp.jx) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void w() {
        if (this.f24987j != null && TextUtils.equals(this.f24985a, "2")) {
            View view = this.f24987j;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).jx();
            }
        }
    }

    private boolean hp(String str) {
        return TextUtils.equals(str, "24") || TextUtils.equals(str, "23") || TextUtils.equals(str, "25") || TextUtils.equals(str, "22") || TextUtils.equals(str, "1");
    }

    @Override // com.byazt.qo.s
    public void l() {
        if (s()) {
            setOnClickListener((View.OnClickListener) this.f24988l.getDynamicClickListener());
            performClick();
            if (this.jx.jd()) {
                return;
            }
            setVisibility(8);
        }
    }

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, com.byazt.nw.e eVar, com.byazt.fub.zy zyVar) {
        super(context);
        this.hp = context;
        this.f24988l = dynamicBaseWidget;
        this.jx = ebVar;
        this.gu = eVar;
        this.jl = zyVar;
        eb();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qo.InteractViewContainer.hp(android.view.ViewGroup):void");
    }

    @Override // com.byazt.qo.s
    public void hp() {
        if (TextUtils.equals(this.f24985a, "6")) {
            RippleView rippleView = this.eb;
            if (rippleView != null) {
                rippleView.jx();
                postDelayed(new Runnable() { // from class: com.byazt.qo.InteractViewContainer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.q();
                    }
                }, 300L);
                return;
            }
            return;
        }
        if (TextUtils.equals(this.f24985a, "20")) {
            postDelayed(new Runnable() { // from class: com.byazt.qo.InteractViewContainer.3
                @Override // java.lang.Runnable
                public void run() {
                    InteractViewContainer.this.q();
                }
            }, 400L);
        } else {
            q();
        }
    }
}
