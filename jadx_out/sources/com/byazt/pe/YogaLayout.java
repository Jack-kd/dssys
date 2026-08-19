package com.byazt.pe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.mw.eb;
import com.byazt.mw.s;
import com.byazt.yn.a;
import com.byazt.yn.e;
import com.byazt.yn.gu;
import com.byazt.yn.jx;
import com.byazt.yn.k;
import com.byazt.yn.q;
import com.byazt.yn.w;
import com.byazt.yn.zy;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL})
/* loaded from: classes3.dex */
public class YogaLayout extends ViewGroup implements eb, com.byazt.xs.l {
    public final Map<View, e> hp;

    /* renamed from: j, reason: collision with root package name */
    public s f24351j;
    public j jx;

    /* renamed from: l, reason: collision with root package name */
    public final e f24352l;

    public YogaLayout(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        e eVarHp;
        this.f24352l.hp((com.byazt.yn.eb) null);
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.hp(this);
            e yogaNode = virtualYogaLayout.getYogaNode();
            e eVar = this.f24352l;
            eVar.hp(yogaNode, eVar.hp());
            return;
        }
        super.addView(view, i2, layoutParams);
        if (this.hp.containsKey(view)) {
            return;
        }
        if (view instanceof YogaLayout) {
            eVarHp = ((YogaLayout) view).getYogaNode();
        } else {
            eVarHp = this.hp.containsKey(view) ? this.hp.get(view) : gu.hp();
            eVarHp.hp(view);
            eVarHp.hp((com.byazt.yn.eb) new l());
        }
        hp((hp) view.getLayoutParams(), eVarHp, view);
        this.hp.put(view, eVarHp);
        if (view.getVisibility() == 8) {
            view.setTag(151060224, Integer.valueOf(this.f24352l.hp()));
        } else {
            e eVar2 = this.f24352l;
            eVar2.hp(eVarHp, eVar2.hp());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof hp;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        j jVar = this.jx;
        if (jVar != null) {
            jVar.l(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new hp(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new hp(layoutParams);
    }

    public float getBorderRadius() {
        return this.f24351j.hp();
    }

    @Override // com.byazt.mw.eb
    public float getRipple() {
        return this.f24351j.getRipple();
    }

    @Override // com.byazt.mw.eb
    public float getRubIn() {
        return this.f24351j.getRubIn();
    }

    @Override // com.byazt.mw.eb
    public float getShine() {
        return this.f24351j.getShine();
    }

    @Override // com.byazt.mw.eb
    public float getStretch() {
        return this.f24351j.getStretch();
    }

    public e getYogaNode() {
        return this.f24352l;
    }

    public e hp(View view) {
        return this.hp.get(view);
    }

    public void j(View view, int i2) {
        int iHp;
        view.setVisibility(i2);
        try {
            e eVar = this.hp.get(view);
            Object tag = view.getTag(151060224);
            if (i2 != 0) {
                if (i2 != 8 || (iHp = this.f24352l.hp(eVar)) == -1) {
                    return;
                }
                this.f24352l.l(iHp);
                view.setTag(151060224, Integer.valueOf(iHp));
                hp(this.f24352l);
                return;
            }
            if (tag == null || this.f24352l.hp(eVar) != -1) {
                return;
            }
            int iIntValue = ((Integer) tag).intValue();
            if (iIntValue < this.f24352l.hp()) {
                this.f24352l.hp(this.hp.get(view), iIntValue);
            } else {
                this.f24352l.hp(this.hp.get(view), this.f24352l.hp());
            }
            hp(this.f24352l);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.xs.l
    public void jx(View view, int i2) {
        j(view, i2);
    }

    @Override // com.byazt.xs.l
    public void l(int i2) {
        e eVar = this.f24352l;
        if (eVar != null) {
            l(eVar, i2);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.jx;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.jx;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        j jVar = this.jx;
        if (jVar != null) {
            jVar.hp(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.jx;
        if (jVar != null) {
            jVar.j();
        }
        if (!(getParent() instanceof YogaLayout)) {
            hp(View.MeasureSpec.makeMeasureSpec(i4 - i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i5 - i3, C.ENCODING_PCM_32BIT));
        }
        hp(this.f24352l, 0.0f, 0.0f);
        j jVar2 = this.jx;
        if (jVar2 != null) {
            jVar2.hp(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (!(getParent() instanceof YogaLayout)) {
            hp(i2, i3);
        }
        j jVar = this.jx;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            setMeasuredDimension(iArrHp[0], iArrHp[1]);
        } else {
            setMeasuredDimension(Math.round(this.f24352l.s()), Math.round(this.f24352l.q()));
        }
        j jVar2 = this.jx;
        if (jVar2 != null) {
            jVar2.jx();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.jx;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.jx;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            hp(getChildAt(i2), false);
        }
        super.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            hp(getChildAt(i2), true);
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        hp(view, false);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        hp(getChildAt(i2), false);
        super.removeViewAt(i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        hp(view, true);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            hp(getChildAt(i4), false);
        }
        super.removeViews(i2, i3);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            hp(getChildAt(i4), true);
        }
        super.removeViewsInLayout(i2, i3);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f24351j.hp(i2);
    }

    public void setBorderRadius(float f2) {
        this.f24351j.hp(f2);
    }

    public void setRipple(float f2) {
        s sVar = this.f24351j;
        if (sVar != null) {
            sVar.l(f2);
        }
    }

    public void setRubIn(float f2) {
        s sVar = this.f24351j;
        if (sVar != null) {
            sVar.w(f2);
        }
    }

    public void setShine(float f2) {
        s sVar = this.f24351j;
        if (sVar != null) {
            sVar.jx(f2);
        }
    }

    public void setStretch(float f2) {
        s sVar = this.f24351j;
        if (sVar != null) {
            sVar.j(f2);
        }
    }

    public YogaLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f24351j = new s(this);
        e eVarHp = gu.hp();
        this.f24352l = eVarHp;
        this.hp = new HashMap();
        eVarHp.hp(this);
        eVarHp.hp((com.byazt.yn.eb) new l());
        hp((hp) generateDefaultLayoutParams(), eVarHp, this);
    }

    @Override // com.byazt.xs.l
    public void hp(int i2) {
        e eVar = this.f24352l;
        if (eVar != null) {
            hp(eVar, i2);
            requestLayout();
        }
    }

    @Override // com.byazt.xs.l
    public void l(View view, int i2) {
        e eVarHp;
        if (view == null || (eVarHp = hp(view)) == null) {
            return;
        }
        l(eVarHp, i2);
        view.requestLayout();
    }

    @Override // com.byazt.xs.l
    public void hp(View view, int i2) {
        e eVarHp;
        if (view == null || (eVarHp = hp(view)) == null) {
            return;
        }
        hp(eVarHp, i2);
        view.requestLayout();
    }

    private void l(e eVar, int i2) {
        if (i2 == -1) {
            eVar.eb(100.0f);
        } else if (i2 == -2) {
            eVar.w();
        } else {
            eVar.a(i2);
        }
    }

    private void hp(e eVar, int i2) {
        if (i2 == -1) {
            eVar.w(100.0f);
        } else if (i2 == -2) {
            eVar.j();
        } else {
            eVar.j(i2);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 2526})
    public static class l implements com.byazt.yn.eb {
        @Override // com.byazt.yn.eb
        public long hp(e eVar, float f2, com.byazt.yn.s sVar, float f3, com.byazt.yn.s sVar2) {
            View view = (View) eVar.e();
            if (view == null || (view instanceof YogaLayout)) {
                return q.hp(0, 0);
            }
            view.measure(View.MeasureSpec.makeMeasureSpec((int) f2, hp(sVar)), View.MeasureSpec.makeMeasureSpec((int) f3, hp(sVar2)));
            return q.hp(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private int hp(com.byazt.yn.s sVar) {
            if (sVar == com.byazt.yn.s.AT_MOST) {
                return Integer.MIN_VALUE;
            }
            if (sVar == com.byazt.yn.s.EXACTLY) {
                return C.ENCODING_PCM_32BIT;
            }
            return 0;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 2241})
    public static class hp extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public float f24353a;

        /* renamed from: e, reason: collision with root package name */
        public float f24354e;
        public float eb;
        public float ec;
        public float gu;
        public SparseArray<Float> hp;

        /* renamed from: j, reason: collision with root package name */
        public float f24355j;
        public float jl;
        public float jx;

        /* renamed from: k, reason: collision with root package name */
        public float f24356k;

        /* renamed from: l, reason: collision with root package name */
        public SparseArray<String> f24357l;

        /* renamed from: q, reason: collision with root package name */
        public float f24358q;

        /* renamed from: s, reason: collision with root package name */
        public float f24359s;

        /* renamed from: u, reason: collision with root package name */
        public float f24360u;

        /* renamed from: v, reason: collision with root package name */
        public float f24361v;
        public float vv;

        /* renamed from: w, reason: collision with root package name */
        public float f24362w;
        public float xs;
        public float zy;

        public hp(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            if (layoutParams instanceof hp) {
                hp hpVar = (hp) layoutParams;
                this.hp = hpVar.hp.clone();
                this.f24357l = hpVar.f24357l.clone();
                return;
            }
            this.hp = new SparseArray<>();
            this.f24357l = new SparseArray<>();
            if (layoutParams.width >= 0) {
                this.hp.put(15, Float.valueOf(((ViewGroup.LayoutParams) this).width));
            }
            if (layoutParams.height >= 0) {
                this.hp.put(16, Float.valueOf(((ViewGroup.LayoutParams) this).height));
            }
        }

        public void a(float f2) {
            this.jl = f2;
            this.hp.put(14, Float.valueOf(f2));
        }

        public void e(float f2) {
            this.f24360u = f2;
            this.hp.put(13, Float.valueOf(f2));
        }

        public void eb(float f2) {
            this.zy = f2;
            this.hp.put(10, Float.valueOf(f2));
        }

        public void gu(float f2) {
            this.jx = f2;
            this.hp.put(17, Float.valueOf(f2));
        }

        public void hp(float f2) {
            this.eb = f2;
            this.hp.put(5, Float.valueOf(f2));
        }

        public void j(float f2) {
            this.f24354e = f2;
            this.hp.put(8, Float.valueOf(f2));
        }

        public void jl(float f2) {
            this.f24355j = f2;
            this.hp.put(18, Float.valueOf(f2));
        }

        public void jx(float f2) {
            this.f24358q = f2;
            this.hp.put(7, Float.valueOf(f2));
        }

        public void k(float f2) {
            this.f24353a = f2;
            this.hp.put(20, Float.valueOf(f2));
        }

        public void l(float f2) {
            this.f24359s = f2;
            this.hp.put(6, Float.valueOf(f2));
        }

        public void q(float f2) {
            this.f24361v = f2;
            this.hp.put(12, Float.valueOf(f2));
        }

        public void s(float f2) {
            this.f24356k = f2;
            this.hp.put(11, Float.valueOf(f2));
        }

        public void u(float f2) {
            this.vv = f2;
            this.hp.put(27, Float.valueOf(f2));
        }

        public void v(float f2) {
            this.xs = f2;
            this.hp.put(25, Float.valueOf(f2));
        }

        public void w(float f2) {
            this.gu = f2;
            this.hp.put(9, Float.valueOf(f2));
        }

        public void xs(float f2) {
            this.ec = f2;
            this.hp.put(28, Float.valueOf(f2));
        }

        public void zy(float f2) {
            this.f24362w = f2;
            this.hp.put(19, Float.valueOf(f2));
        }

        public hp(int i2, int i3) {
            super(i2, i3);
            this.hp = new SparseArray<>();
            this.f24357l = new SparseArray<>();
            if (i2 == -2 || i2 == -1 || i2 >= 0) {
                this.hp.put(15, Float.valueOf(i2));
            }
            if (i3 == -2 || i3 == -1 || i3 >= 0) {
                this.hp.put(16, Float.valueOf(i3));
            }
        }
    }

    private void hp(e eVar) {
        if (eVar.l() != null) {
            hp(eVar.l());
        } else {
            eVar.hp(Float.NaN, Float.NaN);
        }
    }

    public void hp(View view, e eVar) {
        this.hp.put(view, eVar);
        addView(view);
    }

    private void hp(View view, boolean z2) {
        try {
            e eVar = this.hp.get(view);
            if (eVar == null) {
                return;
            }
            e eVarL = eVar.l();
            int i2 = 0;
            while (true) {
                if (i2 >= eVarL.hp()) {
                    break;
                }
                if (eVarL.hp(i2).equals(eVar)) {
                    eVarL.l(i2);
                    break;
                }
                i2++;
            }
            eVar.hp((Object) null);
            this.hp.remove(view);
            if (z2) {
                this.f24352l.hp(Float.NaN, Float.NaN);
            }
        } catch (Throwable unused) {
        }
    }

    private void hp(e eVar, float f2, float f3) {
        View view = (View) eVar.e();
        if (view != null && view != this) {
            if (view.getVisibility() == 8) {
                return;
            }
            int iRound = Math.round(eVar.a() + f2);
            int iRound2 = Math.round(eVar.eb() + f3);
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.round(eVar.s()), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(Math.round(eVar.q()), C.ENCODING_PCM_32BIT));
            view.layout(iRound, iRound2, view.getMeasuredWidth() + iRound, view.getMeasuredHeight() + iRound2);
        }
        int iHp = eVar.hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            if (equals(view)) {
                hp(eVar.hp(i2), f2, f3);
            } else if (!(view instanceof YogaLayout)) {
                hp(eVar.hp(i2), eVar.a() + f2, eVar.eb() + f3);
            }
        }
    }

    private void hp(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (mode2 == 1073741824) {
            this.f24352l.a(size2);
        }
        if (mode == 1073741824) {
            this.f24352l.j(size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            this.f24352l.gu(size2);
        }
        if (mode == Integer.MIN_VALUE) {
            this.f24352l.e(size);
        }
        this.f24352l.hp(Float.NaN, Float.NaN);
    }

    public static void hp(hp hpVar, e eVar, View view) {
        if (view.getResources().getConfiguration().getLayoutDirection() == 1) {
            eVar.hp(jx.RTL);
        }
        Drawable background = view.getBackground();
        if (background != null) {
            if (background.getPadding(new Rect())) {
                eVar.l(com.byazt.yn.j.LEFT, r0.left);
                eVar.l(com.byazt.yn.j.TOP, r0.top);
                eVar.l(com.byazt.yn.j.RIGHT, r0.right);
                eVar.l(com.byazt.yn.j.BOTTOM, r0.bottom);
            }
        }
        for (int i2 = 0; i2 < hpVar.hp.size(); i2++) {
            int iKeyAt = hpVar.hp.keyAt(i2);
            float fFloatValue = hpVar.hp.valueAt(i2).floatValue();
            if (iKeyAt == 4) {
                eVar.jx(com.byazt.yn.hp.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 0) {
                eVar.hp(com.byazt.yn.hp.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 9) {
                eVar.l(com.byazt.yn.hp.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 25) {
                eVar.jl(fFloatValue);
            } else if (iKeyAt == 8) {
                if (fFloatValue < 0.0f) {
                    eVar.jx();
                } else {
                    eVar.jx(fFloatValue);
                }
            } else if (iKeyAt == 1) {
                eVar.hp(w.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 6) {
                eVar.hp(fFloatValue);
            } else if (iKeyAt == 7) {
                eVar.l(fFloatValue);
            } else if (iKeyAt == 16) {
                if (fFloatValue == -1.0f) {
                    eVar.eb(100.0f);
                } else if (fFloatValue == -2.0f) {
                    eVar.w();
                } else {
                    eVar.a(fFloatValue);
                }
            } else if (iKeyAt == 18) {
                eVar.hp(com.byazt.yn.j.LEFT, fFloatValue);
            } else if (iKeyAt == 3) {
                eVar.hp(a.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 17) {
                eVar.hp(com.byazt.yn.j.TOP, fFloatValue);
            } else if (iKeyAt == 20) {
                eVar.hp(com.byazt.yn.j.RIGHT, fFloatValue);
            } else if (iKeyAt == 19) {
                eVar.hp(com.byazt.yn.j.BOTTOM, fFloatValue);
            } else if (iKeyAt == 28) {
                eVar.q(fFloatValue);
            } else if (iKeyAt == 27) {
                eVar.s(fFloatValue);
            } else if (iKeyAt == 22) {
                eVar.l(com.byazt.yn.j.LEFT, fFloatValue);
            } else if (iKeyAt == 21) {
                eVar.l(com.byazt.yn.j.TOP, fFloatValue);
            } else if (iKeyAt == 24) {
                eVar.l(com.byazt.yn.j.RIGHT, fFloatValue);
            } else if (iKeyAt == 23) {
                eVar.l(com.byazt.yn.j.BOTTOM, fFloatValue);
            } else if (iKeyAt == 11) {
                eVar.jx(com.byazt.yn.j.LEFT, fFloatValue);
            } else if (iKeyAt == 10) {
                eVar.jx(com.byazt.yn.j.TOP, fFloatValue);
            } else if (iKeyAt == 13) {
                eVar.jx(com.byazt.yn.j.RIGHT, fFloatValue);
            } else if (iKeyAt == 12) {
                eVar.jx(com.byazt.yn.j.BOTTOM, fFloatValue);
            } else if (iKeyAt == 14) {
                eVar.hp(zy.hp(Math.round(fFloatValue)));
            } else if (iKeyAt == 15) {
                if (fFloatValue == -1.0f) {
                    eVar.w(100.0f);
                } else if (fFloatValue == -2.0f) {
                    eVar.j();
                } else {
                    eVar.j(fFloatValue);
                }
            } else if (iKeyAt == 2) {
                eVar.hp(k.hp(Math.round(fFloatValue)));
            }
        }
    }

    public void hp(com.byazt.xs.jx jxVar) {
        this.jx = jxVar;
    }
}
