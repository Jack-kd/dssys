package com.byazt.yni;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nk.RatioImageView;
import com.byazt.nk.TTRatingBar;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 316, 54})
/* loaded from: classes3.dex */
public class a extends l {
    public TTRatingBar ec;

    /* renamed from: k, reason: collision with root package name */
    public RatioImageView f28171k;

    /* renamed from: n, reason: collision with root package name */
    public UpieImageView f28172n;
    public TextView sz;

    /* renamed from: u, reason: collision with root package name */
    public TextView f28173u;

    /* renamed from: v, reason: collision with root package name */
    public TTRoundRectImageView f28174v;
    public TextView vv;
    public TextView xs;

    public a(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
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
        this.vv.setText(String.format("(%1$s个评论)", strValueOf));
    }

    private void jx() {
        TTRatingBar tTRatingBar = this.ec;
        if (tTRatingBar == null) {
            return;
        }
        tTRatingBar.setStarEmptyNum(1);
        this.ec.setStarFillNum(4);
        this.ec.setStarImageWidth(xh.jx(this.f28200l, 16.0f));
        this.ec.setStarImageHeight(xh.jx(this.f28200l, 16.0f));
        this.ec.setStarImagePadding(xh.jx(this.f28200l, 4.0f));
        this.ec.hp();
    }

    private void l() {
        dy dyVarNq;
        xh.hp((TextView) this.f28200l.findViewById(2114387658), this.jx);
        if (this.f28171k != null) {
            int iHy = this.jx.hy();
            if (iHy == 3) {
                this.f28171k.setRatio(1.91f);
            } else if (iHy != 33) {
                this.f28171k.setRatio(0.56f);
            } else {
                this.f28171k.setRatio(1.0f);
            }
            hp(this.f28171k, this.f28172n);
        }
        if (this.f28174v != null && (dyVarNq = this.jx.nq()) != null) {
            com.byazt.ws.l.hp(dyVarNq).to(this.f28174v);
        }
        TextView textView = this.f28173u;
        if (textView != null) {
            textView.setText(k());
        }
        TextView textView2 = this.xs;
        if (textView2 != null) {
            textView2.setText(v());
        }
        jx();
        j();
    }

    @Override // com.byazt.yni.l
    public void hp() {
        super.hp();
        this.f28201q = (FrameLayout) this.eb.findViewById(2114387642);
        this.f28171k = (RatioImageView) this.eb.findViewById(2114387766);
        this.f28174v = (TTRoundRectImageView) this.eb.findViewById(2114387722);
        this.f28173u = (TextView) this.eb.findViewById(2114387702);
        this.xs = (TextView) this.eb.findViewById(2114387934);
        this.vv = (TextView) this.eb.findViewById(2114387789);
        this.sz = (TextView) this.eb.findViewById(2114387962);
        this.ec = (TTRatingBar) this.eb.findViewById(2114387787);
        if (this.f28171k != null && com.byazt.nwu.hp.j(this.jx)) {
            UpieImageView upieImageView = new UpieImageView(this.f28171k.getContext(), com.byazt.nwu.hp.q(this.jx), com.byazt.fbd.hp.hp(this.jx), com.byazt.nwu.hp.e(this.jx));
            this.f28172n = upieImageView;
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        l();
    }

    @Override // com.byazt.yni.l
    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
        hp(this.sz, lVar, lVar);
        hp(this.f28171k, lVar2, lVar2);
        hp(this.f28174v, lVar2, lVar2);
        hp(this.f28173u, lVar2, lVar2);
        hp(this.xs, lVar2, lVar2);
        hp(this.vv, lVar2, lVar2);
        hp(this.ec, lVar2, lVar2);
        hp(this.f28172n, lVar2, lVar2);
    }

    public void hp(View view, com.byazt.go.l lVar, View.OnTouchListener onTouchListener) {
        if (view == null || this.f28200l == null) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
        view.setOnClickListener(lVar);
    }
}
