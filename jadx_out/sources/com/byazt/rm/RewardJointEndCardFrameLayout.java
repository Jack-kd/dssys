package com.byazt.rm;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.dnb.s;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.kj.hp;
import com.byazt.ln.a;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.uy.RewardJointBottomView;
import com.byazt.ws.l;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.v;
import com.byazt.zn.n;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, 1342, 1914})
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class RewardJointEndCardFrameLayout extends AbstractEndCardFrameLayout implements a {

    /* renamed from: a, reason: collision with root package name */
    public FrameLayout f25258a;

    /* renamed from: j, reason: collision with root package name */
    public View f25259j;
    public FrameLayout jx;

    /* renamed from: w, reason: collision with root package name */
    public RewardJointBottomView f25260w;

    public RewardJointEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
    }

    private boolean j() {
        if (this.f25254l.hy() == 15) {
            return true;
        }
        if (this.f25254l.hy() == 5) {
            return false;
        }
        if (this.f25254l.vi() == null || this.f25254l.vi().isEmpty()) {
            return true;
        }
        dy dyVar = this.f25254l.vi().get(0);
        return dyVar.jx() > dyVar.l();
    }

    private void jx() {
        if (mp.jx(this.f25254l)) {
            l.hp(df.l(this.f25254l)).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.rm.RewardJointEndCardFrameLayout.3
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap bitmapHp = com.byazt.sq.l.hp(RewardJointEndCardFrameLayout.this.getContext(), uVar.getResult(), 25);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(RewardJointEndCardFrameLayout.this.getContext().getResources(), bitmapHp);
                    s.hp(new Runnable() { // from class: com.byazt.rm.RewardJointEndCardFrameLayout.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RewardJointEndCardFrameLayout.this.f25258a != null) {
                                RewardJointEndCardFrameLayout.this.f25258a.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        } else {
            l.hp(this.f25254l.vi().get(0)).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.rm.RewardJointEndCardFrameLayout.2
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap bitmapHp = com.byazt.sq.l.hp(RewardJointEndCardFrameLayout.this.getContext(), uVar.getResult(), 25);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(RewardJointEndCardFrameLayout.this.getContext().getResources(), bitmapHp);
                    s.hp(new Runnable() { // from class: com.byazt.rm.RewardJointEndCardFrameLayout.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RewardJointEndCardFrameLayout.this.jx != null) {
                                RewardJointEndCardFrameLayout.this.jx.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public SSWebView getEndCardWebView() {
        return null;
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public SSWebView getPlayableWebView() {
        return this.f25260w.getWebView();
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public FrameLayout getVideoArea() {
        return this.f25258a;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, com.byazt.ln.w
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return super.onNestedPreFling(view, f2, f3);
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void setClickListener(com.byazt.go.l lVar) {
        xh.hp(this.f25259j, (View.OnClickListener) lVar, "bar_view");
        this.f25260w.setClickListener(lVar);
    }

    private void l(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setBackgroundColor(-1);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(xh.jx(getContext(), 15.0f), 0, 0, 0);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(getContext());
        tTRoundRectImageView.setBackgroundColor(0);
        linearLayout.addView(tTRoundRectImageView, new RelativeLayout.LayoutParams(xh.jx(getContext(), 40.0f), xh.jx(getContext(), 40.0f)));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setGravity(16);
        linearLayout2.setOrientation(1);
        TextView textView = new TextView(getContext());
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(16);
        textView.setMaxWidth(xh.jx(getContext(), 153.0f));
        textView.setSingleLine(true);
        textView.setTextColor(-16777216);
        textView.setTextSize(2, 17.0f);
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(-2, xh.jx(getContext(), 27.0f)));
        TextView textView2 = new TextView(getContext());
        textView2.setEllipsize(truncateAt);
        textView2.setSingleLine(true);
        textView2.setTextColor(Color.parseColor("#4A4A4A"));
        textView2.setTextSize(2, 11.0f);
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.setMarginStart(xh.jx(getContext(), 14.0f));
        linearLayout.addView(linearLayout2, layoutParams);
        TextView textView3 = new TextView(getContext());
        textView3.setBackgroundColor(Color.parseColor("#1A73E8"));
        textView3.setGravity(17);
        textView3.setTextColor(-1);
        textView3.setTextSize(2, 13.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(xh.jx(getContext(), 70.0f), xh.jx(getContext(), 24.0f));
        layoutParams2.setMarginEnd(xh.jx(getContext(), 15.0f));
        linearLayout.addView(textView3, layoutParams2);
        viewGroup.addView(linearLayout, new LinearLayout.LayoutParams(-1, xh.jx(getContext(), 60.0f)));
        this.f25259j = linearLayout;
        dy dyVarNq = this.f25254l.nq();
        if (dyVarNq == null || TextUtils.isEmpty(dyVarNq.hp())) {
            v.hp(getContext(), "tt_ad_logo_small", (ImageView) tTRoundRectImageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        } else {
            l.hp(dyVarNq).to(tTRoundRectImageView);
        }
        if (this.f25254l.v() == null || TextUtils.isEmpty(this.f25254l.v().jx())) {
            textView.setText(this.f25254l.qk());
        } else {
            textView.setText(this.f25254l.v().jx());
        }
        textView2.setText(this.f25254l.v_());
        textView3.setText(this.f25254l.ll());
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void hp() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        hp(linearLayout);
        l(linearLayout);
        jx(linearLayout);
        addView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
    }

    private void jx(ViewGroup viewGroup) {
        RewardJointBottomView rewardJointBottomView = new RewardJointBottomView(getContext(), this.f25254l);
        this.f25260w = rewardJointBottomView;
        if (j()) {
            viewGroup.addView(rewardJointBottomView, new LinearLayout.LayoutParams(-1, xh.jx(getContext(), 160.0f)));
        } else {
            viewGroup.addView(rewardJointBottomView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
        rewardJointBottomView.hp(n.hp(this.f25254l));
    }

    private void hp(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.jx = frameLayout;
        if (j()) {
            viewGroup.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        } else {
            viewGroup.addView(frameLayout, new LinearLayout.LayoutParams(-1, xh.jx(getContext(), 200.0f)));
        }
        jx();
        if (!mp.jx(this.f25254l)) {
            final ImageView imageView = new ImageView(getContext());
            frameLayout.addView(imageView, -1, -1);
            l.hp(this.f25254l.vi().get(0)).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.rm.RewardJointEndCardFrameLayout.1
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    imageView.setImageBitmap(uVar.getResult());
                }
            });
        } else {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
            this.f25258a = frameLayout2;
        }
    }

    @Override // com.byazt.ln.a
    public boolean hp(View view, View view2, int i2, int i3) {
        return j();
    }

    @Override // com.byazt.ln.a
    public void hp(View view, int i2, int i3, int[] iArr, int i4) {
        int iHp = hp(i3);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f25260w.getLayoutParams();
        layoutParams.height -= iHp;
        this.f25260w.setLayoutParams(layoutParams);
        if (iHp != 0) {
            this.hp.hd().ms();
        }
        iArr[1] = iArr[1] + iHp;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int hp(int r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 <= 0) goto L20
            com.byazt.uy.RewardJointBottomView r1 = r4.f25260w
            int r1 = r1.getHeight()
            android.content.Context r2 = r4.getContext()
            r3 = 1128792064(0x43480000, float:200.0)
            int r2 = com.byazt.zn.xh.jx(r2, r3)
            int r1 = r1 - r2
            if (r1 > 0) goto L18
        L16:
            r5 = r0
            goto L3b
        L18:
            int r2 = java.lang.Math.abs(r5)
            if (r1 >= r2) goto L3b
            r5 = r1
            goto L3b
        L20:
            android.widget.FrameLayout r1 = r4.jx
            int r1 = r1.getHeight()
            android.content.Context r2 = r4.getContext()
            r3 = 1126170624(0x43200000, float:160.0)
            int r2 = com.byazt.zn.xh.jx(r2, r3)
            int r1 = r1 - r2
            if (r1 > 0) goto L34
            goto L16
        L34:
            int r2 = java.lang.Math.abs(r5)
            if (r1 >= r2) goto L3b
            int r5 = -r1
        L3b:
            int r1 = java.lang.Math.abs(r5)
            r2 = 400(0x190, float:5.6E-43)
            if (r1 <= r2) goto L44
            return r0
        L44:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rm.RewardJointEndCardFrameLayout.hp(int):int");
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void l() {
        super.l();
        RewardJointBottomView rewardJointBottomView = this.f25260w;
        if (rewardJointBottomView != null) {
            rewardJointBottomView.l();
        }
    }
}
