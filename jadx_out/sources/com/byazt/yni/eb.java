package com.byazt.yni;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.sz;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 316, 94})
/* loaded from: classes3.dex */
public class eb extends l {
    public UpieImageView ec;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f28178k;

    /* renamed from: u, reason: collision with root package name */
    public TextView f28179u;

    /* renamed from: v, reason: collision with root package name */
    public TTRoundRectImageView f28180v;
    public TextView vv;
    public TextView xs;

    public eb(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
    }

    private float a() {
        return xh.j(this.f28200l, xh.q((Context) this.f28200l));
    }

    private void jx() {
        TextView textView;
        this.f28178k = (ImageView) this.f28200l.findViewById(2114387712);
        this.f28180v = (TTRoundRectImageView) this.f28200l.findViewById(2114387722);
        this.f28179u = (TextView) this.f28200l.findViewById(2114387702);
        this.xs = (TextView) this.f28200l.findViewById(2114387962);
        this.vv = (TextView) this.f28200l.findViewById(2114387719);
        if (this.f28178k != null && com.byazt.nwu.hp.j(this.jx)) {
            UpieImageView upieImageView = new UpieImageView(this.f28178k.getContext(), com.byazt.nwu.hp.q(this.jx), com.byazt.fbd.hp.hp(this.jx), com.byazt.nwu.hp.e(this.jx));
            this.ec = upieImageView;
            upieImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        if (!TextUtils.isEmpty(this.jx.ll()) && (textView = this.xs) != null) {
            textView.setText(this.jx.ll());
        }
        if (df.v(this.jx) == null || !mp.jx(this.jx)) {
            hp(this.f28178k, this.ec);
            xh.hp((View) this.f28178k, 0);
            xh.hp((View) this.f28201q, 8);
        } else {
            xh.hp((View) this.f28178k, 8);
            xh.hp((View) this.f28201q, 0);
        }
        dy dyVarNq = this.jx.nq();
        if (dyVarNq != null) {
            com.byazt.ws.l.hp(dyVarNq).to(this.f28180v);
        }
        TextView textView2 = this.f28179u;
        if (textView2 != null) {
            textView2.setText(k());
        }
        TextView textView3 = this.vv;
        if (textView3 != null) {
            textView3.setText(v());
        }
        xh.hp((TextView) this.f28200l.findViewById(2114387658), this.jx);
    }

    private void l() {
        int i2 = (int) (this.f28203w * 1000.0f);
        if (i2 == 666 || i2 == 1500 || i2 == 1777 || i2 == 562 || i2 == 1000) {
            return;
        }
        hp(this.f28199j == 1 ? 0.562f : 1.777f);
    }

    private float w() {
        return xh.j(this.f28200l, xh.s((Context) this.f28200l));
    }

    @Override // com.byazt.yni.l
    public void hp() {
        super.hp();
        this.f28201q = (FrameLayout) this.f28200l.findViewById(2114387915);
        hp((View) this.eb);
        if (com.byazt.we.hp.hp(this.jx)) {
            j();
        } else {
            jx();
            l();
        }
    }

    @Override // com.byazt.yni.l
    public void j(int i2) {
        xh.hp((View) this.gu, i2);
    }

    private void j() {
        this.gu = (RelativeLayout) this.f28200l.findViewById(2114387844);
        this.jl = (TextView) this.f28200l.findViewById(2114387716);
        if (ms.hp(this.jx)) {
            String strS = ms.s(this.jx);
            if (TextUtils.isEmpty(strS)) {
                return;
            }
            com.byazt.ws.l.hp(strS).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.yni.eb.2
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap bitmapHp = com.byazt.sq.l.hp(eb.this.f28200l, uVar.getResult(), 25);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(eb.this.f28200l.getResources(), bitmapHp);
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.yni.eb.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewGroup viewGroup = eb.this.eb;
                            if (viewGroup != null) {
                                viewGroup.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    private void hp(View view) {
        mp mpVar = this.jx;
        if (mpVar == null || view == null) {
            return;
        }
        final float fZp = mpVar.zp();
        if (fZp <= 0.0f) {
            return;
        }
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.byazt.yni.eb.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), xh.jx(sz.getContext(), fZp));
            }
        });
        view.setClipToOutline(true);
    }

    private void hp(float f2) {
        float fMin;
        float fMax;
        int iMax;
        float fW = w();
        float fA = a();
        if (this.f28199j == 2) {
            fMin = Math.max(fW, fA);
            fMax = Math.min(fW, fA);
        } else {
            fMin = Math.min(fW, fA);
            fMax = Math.max(fW, fA);
        }
        int iMin = (int) (Math.min(fMin, fMax) * this.jx.vd());
        if (this.f28199j != 2) {
            TTBaseVideoActivity tTBaseVideoActivity = this.f28200l;
            fMax -= xh.j(tTBaseVideoActivity, xh.e((Context) tTBaseVideoActivity));
        }
        if (this.f28199j != 2) {
            float f3 = iMin;
            iMin = (int) Math.max((fMax - (((fMin - f3) - f3) / f2)) / 2.0f, 0.0f);
            iMax = iMin;
        } else {
            float f4 = iMin;
            iMax = (int) Math.max((fMin - (((fMax - f4) - f4) * f2)) / 2.0f, 0.0f);
        }
        float f5 = iMin;
        float f6 = iMax;
        try {
            this.f28200l.getWindow().getDecorView().setPadding(xh.jx(this.f28200l, f6), xh.jx(this.f28200l, f5), xh.jx(this.f28200l, f6), xh.jx(this.f28200l, f5));
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.yni.l
    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
        hp(this.xs, lVar, lVar);
        hp(this.jl, lVar, lVar);
        hp(this.f28201q, lVar2, lVar2);
        hp(this.f28178k, lVar2, lVar2);
        hp(this.f28180v, lVar2, lVar2);
        hp(this.f28179u, lVar2, lVar2);
        hp(this.vv, lVar2, lVar2);
        hp(this.eb, lVar2, lVar2);
        hp(this.ec, lVar2, lVar2);
    }

    private void hp(View view, com.byazt.go.l lVar, View.OnTouchListener onTouchListener) {
        if (view == null) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
        view.setOnClickListener(lVar);
    }
}
