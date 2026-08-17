package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.fub.zy;
import com.byazt.nw.a;
import com.byazt.nw.eb;
import com.byazt.nw.s;
import com.byazt.ymw.di;
import com.bytedance.component.sdk.annotation.ColorInt;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 85, 1868})
/* loaded from: classes3.dex */
public abstract class DynamicBaseWidget extends FrameLayout implements com.byazt.ebw.l, j, w {

    /* renamed from: a, reason: collision with root package name */
    public float f26300a;

    /* renamed from: e, reason: collision with root package name */
    public int f26301e;
    public int eb;
    public float ec;
    public Context gu;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public float f26302j;
    public eb jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public DynamicRootView f26303k;

    /* renamed from: l, reason: collision with root package name */
    public float f26304l;

    /* renamed from: n, reason: collision with root package name */
    public di f26305n;
    public boolean ns;

    /* renamed from: q, reason: collision with root package name */
    public int f26306q;

    /* renamed from: s, reason: collision with root package name */
    public int f26307s;
    public float sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f26308u;

    /* renamed from: v, reason: collision with root package name */
    public View f26309v;
    public com.byazt.ebw.hp vv;

    /* renamed from: w, reason: collision with root package name */
    public float f26310w;
    public com.byazt.zde.l xs;
    public s zy;
    public static final View.OnTouchListener cx = new View.OnTouchListener() { // from class: com.byazt.uq.DynamicBaseWidget.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public static final View.OnClickListener f26299b = new View.OnClickListener() { // from class: com.byazt.uq.DynamicBaseWidget.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };

    public DynamicBaseWidget(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context);
        this.ns = true;
        this.gu = context;
        this.f26303k = dynamicRootView;
        this.zy = sVar;
        this.jx = sVar.a();
        this.f26302j = sVar.eb();
        this.f26310w = sVar.s();
        this.f26300a = sVar.q();
        this.f26306q = (int) com.byazt.sq.s.hp(this.gu, this.jx);
        this.f26301e = (int) com.byazt.sq.s.hp(this.gu, this.f26302j);
        this.eb = (int) com.byazt.sq.s.hp(this.gu, this.f26310w);
        this.f26307s = (int) com.byazt.sq.s.hp(this.gu, this.f26300a);
        eb ebVar = new eb(sVar.e());
        this.jl = ebVar;
        if (ebVar.vv() > 0) {
            this.eb += this.jl.vv() * 2;
            this.f26307s += this.jl.vv() * 2;
            this.f26306q -= this.jl.vv();
            this.f26301e -= this.jl.vv();
            List<s> listGu = sVar.gu();
            if (listGu != null) {
                for (s sVar2 : listGu) {
                    sVar2.jx(sVar2.a() + com.byazt.sq.s.l(this.gu, this.jl.vv()));
                    sVar2.j(sVar2.eb() + com.byazt.sq.s.l(this.gu, this.jl.vv()));
                    sVar2.hp(com.byazt.sq.s.l(this.gu, this.jl.vv()));
                    sVar2.l(com.byazt.sq.s.l(this.gu, this.jl.vv()));
                }
            }
        }
        this.f26308u = this.jl.k() > 0.0d;
        this.vv = new com.byazt.ebw.hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            View view = this.f26309v;
            if (view == null) {
                view = this;
            }
            view.setOnClickListener((View.OnClickListener) getDynamicClickListener());
            view.performClick();
            view.setOnClickListener(f26299b);
        } catch (Exception unused) {
        }
    }

    private void q() {
        if (isShown()) {
            int iHp = com.byazt.hxe.hp.hp(this.jl);
            if (iHp == 2) {
                if (this.f26305n == null) {
                    this.f26305n = new di(getContext().getApplicationContext(), 1, this.ns);
                }
                this.f26305n.hp(new di.hp() { // from class: com.byazt.uq.DynamicBaseWidget.3
                    @Override // com.byazt.ymw.di.hp
                    public void hp(int i2) {
                        if (i2 == 1 && DynamicBaseWidget.this.isShown()) {
                            DynamicBaseWidget.this.e();
                        }
                    }
                });
                zy renderRequest = this.f26303k.getRenderRequest();
                if (renderRequest != null) {
                    this.f26305n.hp(renderRequest.xs());
                    this.f26305n.w(renderRequest.cx());
                    this.f26305n.jx(renderRequest.n());
                    this.f26305n.l(renderRequest.ec());
                    this.f26305n.a(renderRequest.b());
                    this.f26305n.hp(renderRequest.sz());
                    this.f26305n.l(renderRequest.ns());
                }
            } else if (iHp == 3) {
                if (this.f26305n == null) {
                    this.f26305n = new di(getContext().getApplicationContext(), 2, this.ns);
                }
                this.f26305n.hp(new di.hp() { // from class: com.byazt.uq.DynamicBaseWidget.4
                    @Override // com.byazt.ymw.di.hp
                    public void hp(int i2) {
                        if (i2 == 2 && DynamicBaseWidget.this.isShown()) {
                            DynamicBaseWidget.this.e();
                        }
                    }
                });
                zy renderRequest2 = this.f26303k.getRenderRequest();
                if (renderRequest2 != null) {
                    this.f26305n.l(renderRequest2.ec());
                    this.f26305n.a(renderRequest2.b());
                    this.f26305n.hp(renderRequest2.sz());
                    this.f26305n.l(renderRequest2.ns());
                }
            }
            di diVar = this.f26305n;
            if (diVar != null) {
                DynamicRootView dynamicRootView = this.f26303k;
                if (dynamicRootView == null) {
                    diVar.hp(0);
                    return;
                }
                zy renderRequest3 = dynamicRootView.getRenderRequest();
                if (renderRequest3 != null) {
                    this.f26305n.hp(renderRequest3.wv());
                }
            }
        }
    }

    public void a() {
        if (eb()) {
            return;
        }
        View view = this.f26309v;
        if (view == null) {
            view = this;
        }
        com.byazt.zde.l lVar = new com.byazt.zde.l(view, this.zy.e().w().h());
        this.xs = lVar;
        lVar.hp();
    }

    public boolean eb() {
        s sVar = this.zy;
        return sVar == null || sVar.e() == null || this.zy.e().w() == null || this.zy.e().w().h() == null;
    }

    public Drawable getBackgroundDrawable() {
        return hp(false, "");
    }

    public boolean getBeginInvisibleAndShow() {
        return this.f26308u;
    }

    public int getClickArea() {
        return this.jl.d();
    }

    public GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    public com.byazt.thw.hp getDynamicClickListener() {
        return this.f26303k.getDynamicClickListener();
    }

    public int getDynamicHeight() {
        return this.f26307s;
    }

    public a getDynamicLayoutBrickValue() {
        com.byazt.nw.w wVarE;
        s sVar = this.zy;
        if (sVar == null || (wVarE = sVar.e()) == null) {
            return null;
        }
        return wVarE.w();
    }

    public int getDynamicWidth() {
        return this.eb;
    }

    public String getImageObjectFit() {
        return this.jl.y();
    }

    @Override // com.byazt.ebw.l
    public float getMarqueeValue() {
        return this.ec;
    }

    public Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(hp(l(this.jl.pu().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.ebw.l
    public float getRippleValue() {
        return this.hp;
    }

    @Override // com.byazt.ebw.l
    public float getShineValue() {
        return this.f26304l;
    }

    public float getStretchValue() {
        return this.sz;
    }

    public boolean j() {
        eb ebVar = this.jl;
        return (ebVar == null || ebVar.d() == 0) ? false : true;
    }

    public boolean jx() throws JSONException {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.f26309v;
        if (view == null) {
            view = this;
        }
        if (j()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = cx;
            onClickListener = f26299b;
        }
        if (onTouchListener != null && onClickListener != null) {
            view.setOnTouchListener(onTouchListener);
            view.setOnClickListener(onClickListener);
            int iHp = com.byazt.hxe.hp.hp(this.jl);
            if (iHp == 2 || iHp == 3) {
                view.setOnClickListener(f26299b);
            } else {
                view.setOnClickListener(onClickListener);
            }
        }
        hp(view);
        l(view);
        return true;
    }

    public void l(View view) {
        a aVarW;
        s sVar = this.zy;
        if (sVar == null || (aVarW = sVar.e().w()) == null) {
            return;
        }
        view.setTag(2097610716, Boolean.valueOf(aVarW.ld()));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        l();
        super.onDetachedFromWindow();
        if (this.f26305n != null) {
            DynamicRootView dynamicRootView = this.f26303k;
            if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                this.f26305n.l(0);
            } else {
                this.f26305n.l(this.f26303k.getRenderRequest().wv());
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.vv.hp(canvas, this, this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        com.byazt.ebw.hp hpVar = this.vv;
        View view = this.f26309v;
        if (view == null) {
            view = this;
        }
        hpVar.hp(view, i2, i3);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        if (this.f26305n != null) {
            DynamicRootView dynamicRootView = this.f26303k;
            if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                if (z2) {
                    this.f26305n.hp(0);
                    return;
                } else {
                    this.f26305n.l(0);
                    return;
                }
            }
            if (z2) {
                this.f26305n.hp(this.f26303k.getRenderRequest().wv());
            } else {
                this.f26305n.l(this.f26303k.getRenderRequest().wv());
            }
        }
    }

    public void setCanUseSensor(boolean z2) {
        this.ns = z2;
    }

    public void setMarqueeValue(float f2) {
        this.ec = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.hp = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.f26304l = f2;
        postInvalidate();
    }

    public void setShouldInvisible(boolean z2) {
        this.f26308u = z2;
    }

    public void setStretchValue(float f2) {
        this.sz = f2;
        this.vv.hp(this, f2);
    }

    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
        layoutParams.topMargin = this.f26301e;
        int i2 = this.f26306q;
        layoutParams.leftMargin = i2;
        layoutParams.setMarginStart(i2);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    public boolean hp() {
        s();
        w();
        jx();
        return true;
    }

    private List<String> l(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (str.charAt(i4) == '(') {
                i2++;
                z2 = true;
            } else if (str.charAt(i4) == ')' && i2 - 1 == 0 && z2) {
                int i5 = i4 + 1;
                arrayList.add(str.substring(i3, i5));
                i3 = i5;
                z2 = false;
            }
        }
        return arrayList;
    }

    public void hp(int i2) {
        eb ebVar = this.jl;
        if (ebVar != null && ebVar.hp(i2)) {
            s();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != null && (getChildAt(i3) instanceof DynamicBaseWidget)) {
                    ((DynamicBaseWidget) childAt).hp(i2);
                }
            }
        }
    }

    public void l() {
        com.byazt.zde.l lVar = this.xs;
        if (lVar != null) {
            lVar.l();
        }
    }

    public void hp(View view) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.zy.s());
            jSONObject.put("height", this.zy.q());
            if (com.byazt.wkx.j.hp()) {
                view.setTag(com.byazt.wsc.hp.sz, this.jl.ky());
                view.setTag(com.byazt.wsc.hp.f27121n, this.zy.e().getType());
                view.setTag(com.byazt.wsc.hp.ns, this.zy.jx());
                view.setTag(com.byazt.wsc.hp.cx, jSONObject.toString());
                return;
            }
            view.setTag(2097610717, this.jl.ky());
            view.setTag(2097610715, this.zy.e().getType());
            view.setTag(2097610714, this.zy.jx());
            view.setTag(2097610713, jSONObject.toString());
            int iHp = com.byazt.hxe.hp.hp(this.jl);
            if (iHp == 1) {
                view.setTag(2097610707, new Pair(this.jl.di(), Long.valueOf(this.jl.o())));
                view.setTag(2097610708, Integer.valueOf(iHp));
            }
        } catch (JSONException unused) {
        }
    }

    public Drawable hp(boolean z2, String str) {
        String[] strArrSplit;
        int[] iArr;
        int iWv;
        if (!TextUtils.isEmpty(this.jl.pu())) {
            try {
                String strPu = this.jl.pu();
                String strSubstring = strPu.substring(strPu.indexOf("(") + 1, strPu.length() - 1);
                if (strSubstring.contains("rgba") && strSubstring.contains("%")) {
                    strArrSplit = new String[]{strSubstring.substring(0, strSubstring.indexOf(",")).trim(), strSubstring.substring(strSubstring.indexOf(",") + 1, strSubstring.indexOf("%") + 1).trim(), strSubstring.substring(strSubstring.indexOf("%") + 2).trim()};
                    iArr = new int[]{eb.hp(strArrSplit[1]), eb.hp(strArrSplit[2])};
                } else {
                    strArrSplit = strSubstring.split(", ");
                    iArr = new int[]{eb.hp(strArrSplit[1].substring(0, 7)), eb.hp(strArrSplit[2].substring(0, 7))};
                }
                try {
                    double d2 = Double.parseDouble(strSubstring.substring(strSubstring.indexOf("linear-gradient(") + 1, strSubstring.indexOf("deg")));
                    if (d2 > 225.0d && d2 < 315.0d) {
                        int i2 = iArr[1];
                        iArr[1] = iArr[0];
                        iArr[0] = i2;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable gradientDrawableHp = hp(hp(strArrSplit[0]), iArr);
                gradientDrawableHp.setShape(0);
                gradientDrawableHp.setCornerRadius(com.byazt.sq.s.hp(this.gu, this.jl.v()));
                return gradientDrawableHp;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float fHp = com.byazt.sq.s.hp(this.gu, this.jl.v());
        drawable.setCornerRadius(fHp);
        if (fHp < 1.0f) {
            float fHp2 = com.byazt.sq.s.hp(this.gu, this.jl.ud());
            float fHp3 = com.byazt.sq.s.hp(this.gu, this.jl.nu());
            float fHp4 = com.byazt.sq.s.hp(this.gu, this.jl.dy());
            float fHp5 = com.byazt.sq.s.hp(this.gu, this.jl.lv());
            float[] fArr = new float[8];
            if (fHp2 > 0.0f) {
                fArr[0] = fHp2;
                fArr[1] = fHp2;
            }
            if (fHp3 > 0.0f) {
                fArr[2] = fHp3;
                fArr[3] = fHp3;
            }
            if (fHp4 > 0.0f) {
                fArr[4] = fHp4;
                fArr[5] = fHp4;
            }
            if (fHp5 > 0.0f) {
                fArr[6] = fHp5;
                fArr[7] = fHp5;
            }
            drawable.setCornerRadii(fArr);
        }
        if (z2) {
            iWv = Color.parseColor(str);
        } else {
            iWv = this.jl.wv();
        }
        drawable.setColor(iWv);
        if (this.jl.xs() > 0.0f) {
            drawable.setStroke((int) com.byazt.sq.s.hp(this.gu, this.jl.xs()), this.jl.u());
        } else if (this.jl.vv() > 0) {
            drawable.setStroke(this.jl.vv(), this.jl.u());
            drawable.setAlpha(50);
            if (TextUtils.equals(this.zy.e().getType(), "video-vd")) {
                setLayerType(1, null);
                return new jx((int) fHp, this.jl.vv());
            }
        }
        return drawable;
    }

    public l hp(Bitmap bitmap) {
        return new hp(bitmap, null);
    }

    private Drawable[] hp(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2);
            if (str.contains("linear-gradient")) {
                String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = strArrSplit.length - 1;
                int[] iArr = new int[length];
                int i3 = 0;
                while (i3 < length) {
                    int i4 = i3 + 1;
                    iArr[i3] = eb.hp(strArrSplit[i4].substring(0, 7));
                    i3 = i4;
                }
                GradientDrawable gradientDrawableHp = hp(hp(strArrSplit[0]), iArr);
                gradientDrawableHp.setShape(0);
                gradientDrawableHp.setCornerRadius(com.byazt.sq.s.hp(this.gu, this.jl.v()));
                drawableArr[(list.size() - 1) - i2] = gradientDrawableHp;
            }
        }
        return drawableArr;
    }

    public GradientDrawable hp(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        if (iArr != null && iArr.length != 0) {
            if (iArr.length == 1) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(iArr[0]);
                return gradientDrawable;
            }
            return new GradientDrawable(orientation, iArr);
        }
        return new GradientDrawable();
    }

    public GradientDrawable.Orientation hp(String str) {
        try {
            int i2 = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            if (i2 <= 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (i2 <= 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (i2 <= 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            return GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }
}
