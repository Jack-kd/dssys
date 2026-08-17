package com.byazt.yni;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.ay.jl;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nk.TTRatingBar;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 316, 30})
/* loaded from: classes3.dex */
public class jx extends l {
    public TextView ec;

    /* renamed from: k, reason: collision with root package name */
    public int f28193k;

    /* renamed from: n, reason: collision with root package name */
    public FrameLayout f28194n;
    public FrameLayout ns;
    public TTRatingBar sz;

    /* renamed from: u, reason: collision with root package name */
    public TTRoundRectImageView f28195u;

    /* renamed from: v, reason: collision with root package name */
    public final AtomicBoolean f28196v;
    public TextView vv;
    public TextView xs;

    public jx(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
        this.f28193k = 0;
        this.f28196v = new AtomicBoolean(false);
    }

    private void a() {
        if (this.f28199j == 1) {
            TextView textView = this.xs;
            if (textView != null) {
                textView.setMaxWidth(xh.jx(this.f28200l, 153.0f));
            }
        } else {
            TextView textView2 = this.xs;
            if (textView2 != null) {
                textView2.setMaxWidth(xh.jx(this.f28200l, 404.0f));
            }
        }
        if (this.f28197a) {
            return;
        }
        xh.hp((View) this.f28202s, 0);
    }

    private void eb() {
        if (this.jx.z() == 3) {
            int[] iArr = {Color.parseColor("#0070FF")};
            int iJx = xh.jx(this.f28200l, 17.0f);
            int color = Color.parseColor("#80000000");
            jl.hp((LinearLayout) this.f28200l.findViewById(2114387898), new jl.hp().hp(iArr[0]).l(color).hp(iArr).jx(iJx).j(0).w(xh.jx(this.f28200l, 3.0f)));
        }
    }

    private void j() {
        String strValueOf;
        if (this.vv == null) {
            return;
        }
        int iA = this.jx.v() != null ? this.jx.v().a() : 6870;
        if (iA > 10000) {
            strValueOf = (iA / 10000) + "万";
        } else {
            strValueOf = String.valueOf(iA);
        }
        this.vv.setText(String.format("%1$s个评分", strValueOf));
    }

    private void jx() {
        if (this.f28195u != null) {
            dy dyVarNq = this.jx.nq();
            if (dyVarNq == null || TextUtils.isEmpty(dyVarNq.hp())) {
                v.hp((Context) this.f28200l, "tt_ad_logo_small", (ImageView) this.f28195u, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } else {
                com.byazt.ws.l.hp(dyVarNq).to(this.f28195u);
            }
        }
        if (this.xs != null) {
            if (this.f28199j != 1 || this.jx.v() == null || TextUtils.isEmpty(this.jx.v().jx())) {
                this.xs.setText(this.jx.v_());
            } else {
                this.xs.setText(this.jx.v().jx());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String s() {
        /*
            r7 = this;
            com.byazt.fyd.TTBaseVideoActivity r0 = r7.f28200l
            java.lang.String r0 = com.byazt.zn.ky.hp(r0)
            if (r0 != 0) goto La
            java.lang.String r0 = ""
        La:
            r1 = 1
            r2 = 0
            java.util.Locale r3 = java.util.Locale.CHINESE     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r3.getLanguage()     // Catch: java.lang.Throwable -> L3f
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L3f
            if (r3 != 0) goto L33
            java.util.Locale r3 = java.util.Locale.CHINA     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r3.getLanguage()     // Catch: java.lang.Throwable -> L3f
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L3f
            if (r3 != 0) goto L33
            java.util.Locale r3 = java.util.Locale.TRADITIONAL_CHINESE     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r3.getLanguage()     // Catch: java.lang.Throwable -> L3f
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L3f
            if (r3 == 0) goto L31
            goto L33
        L31:
            r3 = r2
            goto L34
        L33:
            r3 = r1
        L34:
            java.util.Locale r4 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L40
            java.lang.String r4 = r4.getLanguage()     // Catch: java.lang.Throwable -> L40
            boolean r0 = r0.equals(r4)     // Catch: java.lang.Throwable -> L40
            goto L41
        L3f:
            r3 = r1
        L40:
            r0 = r2
        L41:
            java.lang.String r4 = "下载"
            if (r3 == 0) goto L46
            goto L4a
        L46:
            if (r0 == 0) goto L4a
            java.lang.String r4 = "Install"
        L4a:
            com.byazt.xci.mp r5 = r7.jx
            if (r5 != 0) goto L4f
            return r4
        L4f:
            java.lang.String r5 = r5.ll()
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto L6c
            com.byazt.xci.mp r1 = r7.jx
            int r1 = r1.q()
            r2 = 4
            if (r1 == r2) goto La9
            if (r3 == 0) goto L67
            java.lang.String r4 = "查看"
            goto La9
        L67:
            if (r0 == 0) goto La9
            java.lang.String r4 = "View"
            goto La9
        L6c:
            com.byazt.xci.mp r4 = r7.jx
            java.lang.String r4 = r4.ll()
            if (r4 == 0) goto La9
            boolean r5 = com.byazt.zn.ky.e(r4)
            if (r5 == 0) goto L8f
            int r5 = r4.length()
            r6 = 2
            if (r5 <= r6) goto L8f
            if (r3 == 0) goto L88
            java.lang.String r4 = r7.hp(r1)
            goto La9
        L88:
            if (r0 == 0) goto La9
            java.lang.String r4 = r7.hp(r2)
            goto La9
        L8f:
            boolean r5 = com.byazt.zn.ky.e(r4)
            if (r5 != 0) goto La9
            int r5 = r4.length()
            r6 = 7
            if (r5 <= r6) goto La9
            if (r3 == 0) goto La3
            java.lang.String r4 = r7.hp(r1)
            goto La9
        La3:
            if (r0 == 0) goto La9
            java.lang.String r4 = r7.hp(r2)
        La9:
            if (r0 == 0) goto Lc8
            boolean r0 = com.byazt.zn.ky.e(r4)
            if (r0 != 0) goto Lc8
            android.widget.TextView r0 = r7.ec
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r0 = (android.widget.LinearLayout.LayoutParams) r0
            com.byazt.fyd.TTBaseVideoActivity r1 = r7.f28200l
            r2 = 1082130432(0x40800000, float:4.0)
            int r1 = com.byazt.zn.xh.jx(r1, r2)
            r0.bottomMargin = r1
            android.widget.TextView r1 = r7.ec
            r1.setLayoutParams(r0)
        Lc8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yni.jx.s():java.lang.String");
    }

    private void w() {
        TextView textView = this.ec;
        if (textView != null) {
            textView.setText(this.jx.z() == 3 ? s() : l());
        }
    }

    @Override // com.byazt.yni.l
    public void hp() {
        FrameLayout frameLayout;
        super.hp();
        this.f28202s = (RelativeLayout) this.f28200l.findViewById(2114387649);
        this.f28195u = (TTRoundRectImageView) this.f28200l.findViewById(2114387793);
        this.xs = (TextView) this.f28200l.findViewById(2114387875);
        this.vv = (TextView) this.f28200l.findViewById(2114387630);
        this.ec = (TextView) this.f28200l.findViewById(2114387830);
        TTRatingBar tTRatingBar = (TTRatingBar) this.f28200l.findViewById(2114387609);
        this.sz = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.sz.setStarFillNum(4);
            this.sz.setStarImageWidth(xh.jx(this.f28200l, 15.0f));
            this.sz.setStarImageHeight(xh.jx(this.f28200l, 14.0f));
            this.sz.setStarImagePadding(xh.jx(this.f28200l, 4.0f));
            this.sz.hp();
        }
        this.f28198e = (TextView) this.f28200l.findViewById(2114387658);
        this.f28201q = (FrameLayout) this.f28200l.findViewById(2114387642);
        this.f28194n = (FrameLayout) this.f28200l.findViewById(2114387964);
        this.ns = (FrameLayout) this.f28200l.findViewById(2114387925);
        xh.hp(this.f28198e, this.jx);
        try {
            if (this.f28199j == 2 && this.jx.z() == 1 && (this.ec.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.ec.getLayoutParams();
                layoutParams.height = xh.jx(this.f28200l, 55.0f);
                layoutParams.topMargin = xh.jx(this.f28200l, 20.0f);
                this.ec.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f28202s.getLayoutParams();
                layoutParams2.bottomMargin = xh.jx(this.f28200l, 12.0f);
                this.f28202s.setLayoutParams(layoutParams2);
            }
        } catch (Throwable unused) {
        }
        if (this.jx.z() == 1 && (frameLayout = this.f28201q) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f28201q.getLayoutParams();
            int iJ = xh.j((Context) this.f28200l);
            layoutParams3.width = iJ;
            int i2 = (iJ * 9) / 16;
            layoutParams3.height = i2;
            this.f28201q.setLayoutParams(layoutParams3);
            this.f28193k = (xh.w((Context) this.f28200l) - i2) / 2;
        }
        jx();
        j();
        w();
        a();
        eb();
        gu();
    }

    public String l() {
        mp mpVar = this.jx;
        return mpVar == null ? "立即下载" : TextUtils.isEmpty(mpVar.ll()) ? this.jx.q() != 4 ? "查看详情" : "立即下载" : this.jx.ll();
    }

    @Override // com.byazt.yni.l
    public void l(int i2) {
        int i3;
        if (this.f28202s == null || (i3 = this.zy) == -1 || i2 != i3 || this.f28196v.getAndSet(true)) {
            return;
        }
        xh.hp((View) this.f28202s, 0);
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f28202s, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    private String hp(boolean z2) {
        mp mpVar = this.jx;
        if (mpVar == null) {
            return null;
        }
        return z2 ? mpVar.q() == 4 ? "下载" : "查看" : mpVar.q() == 4 ? "Install" : "View";
    }

    @Override // com.byazt.yni.l
    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
        if (this.jx == null) {
            return;
        }
        xh.hp((View) this.ec, (View.OnClickListener) lVar, (String) null);
        xh.hp((View) this.ec, (View.OnTouchListener) lVar, (String) null);
        hp((View.OnTouchListener) lVar2);
        hp((View.OnClickListener) lVar2);
        if (this.jx.z() == 1) {
            FrameLayout frameLayout = this.f28194n;
            if (frameLayout != null) {
                xh.hp((View) frameLayout, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f28194n.getLayoutParams();
                layoutParams.height = this.f28193k;
                this.f28194n.setLayoutParams(layoutParams);
            }
            FrameLayout frameLayout2 = this.ns;
            if (frameLayout2 != null) {
                xh.hp((View) frameLayout2, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.ns.getLayoutParams();
                layoutParams2.height = this.f28193k;
                this.ns.setLayoutParams(layoutParams2);
            }
        }
    }

    private void hp(View.OnTouchListener onTouchListener) {
        xh.hp(this.f28202s, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        xh.hp(this.xs, onTouchListener, "TTBaseVideoActivity#mTvAppName");
        xh.hp(this.f28195u, onTouchListener, "TTBaseVideoActivity#mIvIcon");
        xh.hp(this.vv, onTouchListener, "TTBaseVideoActivity#mTvCommentVertical");
        xh.hp(this.sz, onTouchListener, "TTBaseVideoActivity#mRbScore");
        xh.hp(this.f28201q, onTouchListener, "TTBaseVideoActivity#mVideoNativeFrame");
        xh.hp(this.f28194n, onTouchListener, "TTBaseVideoActivity#mClickUpperNonContentArea");
        xh.hp(this.ns, onTouchListener, "TTBaseVideoActivity#mClickLowerNonContentArea");
    }

    private void hp(View.OnClickListener onClickListener) {
        xh.hp(this.f28202s, onClickListener, "TTBaseVideoActivity#mRlDownloadBar");
        xh.hp(this.xs, onClickListener, "TTBaseVideoActivity#mTvAppName");
        xh.hp(this.f28195u, onClickListener, "TTBaseVideoActivity#mIvIcon");
        xh.hp(this.vv, onClickListener, "TTBaseVideoActivity#mTvCommentVertical");
        xh.hp(this.sz, onClickListener, "TTBaseVideoActivity#mRbScore");
        xh.hp(this.f28201q, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
        xh.hp(this.f28194n, onClickListener, "TTBaseVideoActivity#mClickUpperNonContentArea");
        xh.hp(this.ns, onClickListener, "TTBaseVideoActivity#mClickLowerNonContentArea");
    }
}
