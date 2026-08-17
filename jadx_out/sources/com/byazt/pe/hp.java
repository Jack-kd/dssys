package com.byazt.pe;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.byazt.pe.YogaLayout;
import com.byazt.ql.eb;
import com.byazt.qp.RoundImageView;
import com.byazt.xa.jx;
import com.byazt.xa.s;
import com.byazt.xs.hp;
import com.byazt.yn.a;
import com.byazt.yn.e;
import com.byazt.yn.j;
import com.byazt.yn.k;
import com.byazt.yn.w;
import com.byazt.yn.zy;
import com.byazt.zs.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.xs.hp<YogaLayout> {
    public com.byazt.yn.hp ad;
    public w gb;

    /* renamed from: h, reason: collision with root package name */
    public com.byazt.yn.hp f24363h;
    public a pg;
    public k xv;

    /* renamed from: z, reason: collision with root package name */
    public e f24364z;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 170})
    /* renamed from: com.byazt.pe.hp$hp, reason: collision with other inner class name */
    public static class C0338hp extends hp.C0411hp {
        public boolean as;

        /* renamed from: d, reason: collision with root package name */
        public float f24367d;
        public int dy;
        public int hq;
        public boolean kg;
        public float ky;
        public int lv;

        /* renamed from: m, reason: collision with root package name */
        public boolean f24368m;
        public boolean mp;

        /* renamed from: ms, reason: collision with root package name */
        public boolean f24369ms;
        public int nu;

        /* renamed from: o, reason: collision with root package name */
        public int f24370o;
        public int pu;

        /* renamed from: r, reason: collision with root package name */
        public int f24371r;
        public float ud;
        public float wv;
        public boolean xh;

        public C0338hp(com.byazt.xs.hp hpVar) {
            super(hpVar);
            this.f24370o = 1;
            this.f24367d = 0.0f;
            this.wv = 1.0f;
            this.hq = com.byazt.yn.hp.AUTO.hp();
            this.ud = -1.0f;
            this.nu = zy.RELATIVE.hp();
        }

        private void j() {
            com.byazt.xs.hp hpVar = this.di;
            if (hpVar instanceof hp) {
                if (((hp) hpVar).qu() == w.ROW && this.di.lv() == -2 && this.hp == -1.0f && !this.di.m()) {
                    this.hp = -2.0f;
                    this.wv = 1.0f;
                    this.f24367d = 1.0f;
                    this.xh = true;
                    this.ud = -1.0f;
                }
                if (((hp) this.di).qu() == w.COLUMN && this.di.r() == -2 && this.f27759l == -1.0f && !this.di.m()) {
                    this.f27759l = -2.0f;
                    this.wv = 1.0f;
                    this.f24367d = 1.0f;
                    this.xh = true;
                    this.ud = -1.0f;
                }
            }
        }

        public boolean jx() {
            float f2 = this.hp;
            if (f2 == -1.0f && this.f27759l == -1.0f) {
                return false;
            }
            return f2 == -2.0f || this.f27759l == -2.0f;
        }

        @Override // com.byazt.xs.hp.C0411hp
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public YogaLayout.hp hp() {
            j();
            YogaLayout.hp hpVar = new YogaLayout.hp((int) this.hp, (int) this.f27759l);
            hpVar.jl((int) (this.sz ? this.f27754a : this.f27765w));
            hpVar.k((int) (this.f27760n ? this.eb : this.f27765w));
            hpVar.gu((int) (this.ns ? this.f27762s : this.f27765w));
            hpVar.zy((int) (this.cx ? this.f27761q : this.f27765w));
            hpVar.hp(this.f24370o);
            hpVar.w(this.hq);
            hpVar.l(this.f24367d);
            hpVar.jx(this.wv);
            hpVar.u(this.jx);
            hpVar.xs(this.f27757j);
            if (this.xh) {
                hpVar.j(this.ud);
            }
            hpVar.a(this.nu);
            if (this.f24369ms) {
                hpVar.eb(this.dy);
            }
            if (this.as) {
                hpVar.q(this.lv);
            }
            if (this.kg) {
                hpVar.s(this.f24371r);
            }
            if (this.mp) {
                hpVar.e(this.pu);
            }
            if (this.f24368m && jx()) {
                float f2 = this.ky;
                if (f2 > 0.0f) {
                    hpVar.v(f2);
                    hpVar.jx(0.0f);
                    hpVar.l(0.0f);
                }
            }
            return hpVar;
        }

        @Override // com.byazt.xs.hp.C0411hp
        public String toString() {
            return "LayoutParams{mOrder=" + this.f24370o + ", mFlexGrow=" + this.f24367d + ", mFlexShrink=" + this.wv + ", mAlignSelf=" + this.hq + ", mFlexBasis=" + this.ud + ", mPosition=" + this.nu + ", mTop=" + this.dy + ", mBottom=" + this.lv + ", mLeft=" + this.f24371r + ", mRight=" + this.pu + '}';
        }

        @Override // com.byazt.xs.hp.C0411hp
        public void hp(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.hp(context, str, str2);
            str.getClass();
            switch (str) {
                case "flexBasis":
                    this.xh = true;
                    float fHp = jx.hp(str2, -1.0f);
                    this.ud = fHp;
                    this.ud = s.hp(context, fHp);
                    break;
                case "bottom":
                    this.as = true;
                    this.lv = (int) s.hp(context, jx.hp(str2, 0));
                    break;
                case "top":
                    this.f24369ms = true;
                    this.dy = (int) s.hp(context, jx.hp(str2, 0));
                    break;
                case "left":
                    this.kg = true;
                    this.f24371r = (int) s.hp(context, jx.hp(str2, 0));
                    break;
                case "order":
                    this.f24370o = jx.hp(str2, 1);
                    break;
                case "ratio":
                    this.f24368m = true;
                    this.ky = jx.hp(str2, 0.0f);
                    break;
                case "right":
                    this.mp = true;
                    this.pu = (int) s.hp(context, jx.hp(str2, 0));
                    break;
                case "position":
                    this.nu = zy.hp(str2).hp();
                    break;
                case "flexShrink":
                    this.wv = jx.hp(str2, 1.0f);
                    break;
                case "flexGrow":
                    this.f24367d = jx.hp(str2, 0.0f);
                    break;
                case "alignSelf":
                    this.hq = com.byazt.yn.hp.hp(str2).hp();
                    break;
            }
        }
    }

    public hp(Context context) {
        super(context);
        this.gb = w.ROW;
        this.xv = k.NO_WRAP;
        this.pg = a.FLEX_START;
        com.byazt.yn.hp hpVar = com.byazt.yn.hp.STRETCH;
        this.f24363h = hpVar;
        this.ad = hpVar;
    }

    @Override // com.byazt.xs.jx
    public void o() {
        ImageView.ScaleType scaleType;
        if (this.kg) {
            eb ebVar = this.ed;
            if (ebVar != null) {
                ebVar.hp();
            }
            com.byazt.zs.w.hp().l().hp(this.f27782q, this.xh, new hp.InterfaceC0439hp() { // from class: com.byazt.pe.hp.1
                @Override // com.byazt.zs.hp.InterfaceC0439hp
                public void hp(Bitmap bitmap) {
                    if (bitmap == null) {
                        if (hp.this.ed != null) {
                            eb ebVar2 = hp.this.ed;
                            hp hpVar = hp.this;
                            ebVar2.l(hpVar, hpVar.xh);
                            return;
                        }
                        return;
                    }
                    if (hp.this.ed != null) {
                        eb ebVar3 = hp.this.ed;
                        hp hpVar2 = hp.this;
                        ebVar3.hp(hpVar2, hpVar2.xh);
                    }
                    final Bitmap bitmapHp = s.hp(hp.this.f27777l, bitmap, (int) hp.this.as);
                    if (bitmapHp != null) {
                        s.hp(new Runnable() { // from class: com.byazt.pe.hp.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                hp.this.hp(new BitmapDrawable(bitmapHp));
                            }
                        });
                    }
                }
            });
            return;
        }
        eb ebVar2 = this.ed;
        if (ebVar2 != null) {
            ebVar2.hp();
        }
        RoundImageView roundImageView = new RoundImageView(this.f27777l);
        com.byazt.zs.w.hp().l().hp(this.f27782q, this.xh, roundImageView, this.f27788w.getWidth(), this.f27788w.getHeight(), new hp.InterfaceC0439hp() { // from class: com.byazt.pe.hp.2
            @Override // com.byazt.zs.hp.InterfaceC0439hp
            public void hp(Bitmap bitmap) {
                if (bitmap == null) {
                    if (hp.this.ed != null) {
                        eb ebVar3 = hp.this.ed;
                        hp hpVar = hp.this;
                        ebVar3.l(hpVar, hpVar.xh);
                        return;
                    }
                    return;
                }
                if (hp.this.ed != null) {
                    eb ebVar4 = hp.this.ed;
                    hp hpVar2 = hp.this;
                    ebVar4.hp(hpVar2, hpVar2.xh);
                }
            }
        });
        if (!this.mp || (scaleType = this.f27779ms) == ImageView.ScaleType.FIT_XY) {
            roundImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            roundImageView.setScaleType(scaleType);
        }
        roundImageView.setCornerRadius(this.f27778m);
        YogaLayout.hp hpVar = new YogaLayout.hp(-1, -1);
        hpVar.a(zy.ABSOLUTE.hp());
        hpVar.eb(0.0f);
        hpVar.s(0.0f);
        T t2 = this.f27788w;
        if (t2 instanceof YogaLayout) {
            ((YogaLayout) t2).addView(roundImageView, 0, hpVar);
            hp(roundImageView);
        }
    }

    public w qu() {
        return this.gb;
    }

    @Override // com.byazt.xs.hp
    /* renamed from: rv, reason: merged with bridge method [inline-methods] */
    public C0338hp s() {
        return new C0338hp(this);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: su, reason: merged with bridge method [inline-methods] */
    public YogaLayout hp() {
        YogaLayout yogaLayout = new YogaLayout(this.f27777l);
        yogaLayout.hp(this);
        this.f24364z = yogaLayout.getYogaNode();
        return yogaLayout;
    }

    @Override // com.byazt.xs.jx
    public void jl() {
        if (this.nu) {
            this.f24364z.l(j.ALL, this.f27781o);
        }
        if (this.dy) {
            this.f24364z.l(j.LEFT, this.f27769d);
        }
        if (this.lv) {
            this.f24364z.l(j.RIGHT, this.wv);
        }
        if (this.f27783r) {
            this.f24364z.l(j.TOP, this.hq);
        }
        if (this.pu) {
            this.f24364z.l(j.BOTTOM, this.ud);
        }
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        this.f24364z.hp(this.gb);
        this.f24364z.hp(this.xv);
        this.f24364z.hp(this.pg);
        this.f24364z.hp(this.f24363h);
        this.f24364z.jx(this.ad);
        this.f24364z.hp(true);
    }

    @Override // com.byazt.xs.jx
    public void hp(Drawable drawable) {
        ImageView.ScaleType scaleType;
        RoundImageView roundImageView = new RoundImageView(this.f27777l);
        roundImageView.setImageDrawable(drawable);
        if (this.mp && (scaleType = this.f27779ms) != ImageView.ScaleType.FIT_XY) {
            roundImageView.setScaleType(scaleType);
        } else {
            roundImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        roundImageView.setCornerRadius(this.f27778m);
        YogaLayout.hp hpVar = new YogaLayout.hp(-1, -1);
        hpVar.a(zy.ABSOLUTE.hp());
        hpVar.eb(0.0f);
        hpVar.s(0.0f);
        T t2 = this.f27788w;
        if (t2 instanceof YogaLayout) {
            ((YogaLayout) t2).addView(roundImageView, 0, hpVar);
            hp(roundImageView);
        }
    }

    private void hp(final RoundImageView roundImageView) {
        this.f27788w.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.pe.hp.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVarHp;
                if (hp.this.f27788w == null || (eVarHp = ((YogaLayout) hp.this.f27788w).hp(roundImageView)) == null) {
                    return;
                }
                int width = hp.this.f27788w.getWidth();
                eVarHp.j(width);
                int height = hp.this.f27788w.getHeight();
                eVarHp.a(height);
                roundImageView.setCornerRadius(hp.this.f27778m);
                hp.this.f27788w.requestLayout();
                if (width > 0 || height > 0) {
                    hp.this.f27788w.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar) {
        super.hp(jxVar);
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar, ViewGroup.LayoutParams layoutParams) {
        if (jxVar == null) {
            return;
        }
        ((com.byazt.xs.hp) this).hp.add(jxVar);
        View viewQ = jxVar.q();
        if (viewQ != null) {
            ((YogaLayout) this.f27788w).addView(viewQ, layoutParams);
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "alignItems":
                this.f24363h = com.byazt.yn.hp.hp(str2);
                break;
            case "flexDirection":
                this.gb = w.hp(str2);
                break;
            case "alignContent":
                this.ad = com.byazt.yn.hp.hp(str2);
                break;
            case "flexWrap":
                this.xv = k.hp(str2);
                break;
            case "justifyContent":
                this.pg = a.hp(str2);
                break;
        }
    }
}
