package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.fub.zy;
import com.byazt.nke.b;
import com.byazt.nke.e;
import com.byazt.nke.k;
import com.byazt.nke.u;
import com.byazt.nw.eb;
import com.byazt.nw.s;
import com.byazt.qo.InteractViewContainer;
import com.byazt.sq.a;
import com.byazt.wnd.GifView;
import com.byazt.yj.q;
import com.byazt.ymw.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 85, 1116})
/* loaded from: classes3.dex */
public class DynamicBaseWidgetImp extends DynamicBaseWidget {
    public static String sz = "";
    public InteractViewContainer ec;
    public Runnable hp;

    /* renamed from: l, reason: collision with root package name */
    public Runnable f26311l;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f26312n;
    public ImageView ns;

    @com.byazt.kj.hp(hp = {0, 1, 85, 2383})
    public static class hp implements b<Bitmap> {
        public final WeakReference<View> hp;
        public final s jx;

        /* renamed from: l, reason: collision with root package name */
        public final WeakReference<DynamicRootView> f26316l;

        public hp(View view, DynamicRootView dynamicRootView, s sVar) {
            this.hp = new WeakReference<>(view);
            this.f26316l = new WeakReference<>(dynamicRootView);
            this.jx = sVar;
        }

        @Override // com.byazt.nke.b
        public void onFailed(int i2, String str, Throwable th) {
        }

        @Override // com.byazt.nke.b
        public void onSuccess(u<Bitmap> uVar) {
            View view = this.hp.get();
            if (!com.byazt.wkx.j.hp()) {
                DynamicRootView dynamicRootView = this.f26316l.get();
                if (dynamicRootView == null) {
                    return;
                }
                if ("open_ad".equals(dynamicRootView.getRenderRequest().a()) || "splash_ad".equals(dynamicRootView.getRenderRequest().a())) {
                    view.setBackground(new BitmapDrawable(uVar.getResult()));
                    return;
                } else {
                    view.setBackground(new BitmapDrawable(uVar.getResult()));
                    return;
                }
            }
            if (view == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(uVar.getResult()));
            s sVar = this.jx;
            if (sVar == null || sVar.e() == null || 6 != this.jx.e().hp() || view.getBackground() == null) {
                return;
            }
            view.getBackground().setAutoMirrored(true);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 85, 2377})
    public static class jx implements e {
        public final WeakReference<Context> hp;

        /* renamed from: l, reason: collision with root package name */
        public final int f26317l;

        public jx(Context context, int i2) {
            this.hp = new WeakReference<>(context);
            this.f26317l = i2;
        }

        @Override // com.byazt.nke.e
        public Bitmap coverterTo(Bitmap bitmap) {
            Context context = this.hp.get();
            if (context != null) {
                return com.byazt.sq.l.hp(context, bitmap, this.f26317l);
            }
            return null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 85, 1784})
    public static class l implements b<Bitmap> {
        public final WeakReference<View> hp;

        /* renamed from: l, reason: collision with root package name */
        public final WeakReference<DynamicBaseWidget> f26318l;

        public l(View view, DynamicBaseWidget dynamicBaseWidget) {
            this.hp = new WeakReference<>(view);
            this.f26318l = new WeakReference<>(dynamicBaseWidget);
        }

        @Override // com.byazt.nke.b
        public void onFailed(int i2, String str, Throwable th) {
        }

        @Override // com.byazt.nke.b
        public void onSuccess(u<Bitmap> uVar) {
            Bitmap result;
            DynamicBaseWidget dynamicBaseWidget;
            View view = this.hp.get();
            if (view == null || (result = uVar.getResult()) == null || uVar.getOriginResult() == null || (dynamicBaseWidget = this.f26318l.get()) == null) {
                return;
            }
            view.setBackground(dynamicBaseWidget.hp(result));
        }
    }

    public DynamicBaseWidgetImp(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.f26312n = true;
        setTag(Integer.valueOf(getClickArea()));
        String type = sVar.e().getType();
        if ("logo-union".equals(type)) {
            dynamicRootView.setLogoUnionHeight(this.f26307s - ((int) com.byazt.sq.s.hp(context, this.jl.l() + this.jl.hp())));
        } else if ("scoreCountWithIcon".equals(type)) {
            dynamicRootView.setScoreCountWithIcon(this.f26307s - ((int) com.byazt.sq.s.hp(context, this.jl.l() + this.jl.hp())));
        }
    }

    private static String getBuildModel() {
        try {
            sz = d.hp();
        } catch (Throwable unused) {
            sz = Build.MODEL;
        }
        if (TextUtils.isEmpty(sz)) {
            sz = Build.MODEL;
        }
        return sz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable l(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String string = "";
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                if (jSONArray.getString(i2).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i2));
                } else if (jSONArray.getString(i2).endsWith("deg")) {
                    string = jSONArray.getString(i2);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                iArr[i3] = eb.hp(((String) arrayList.get(i3)).substring(0, 7));
            }
            GradientDrawable gradientDrawableHp = hp(hp(string), iArr);
            gradientDrawableHp.setShape(0);
            gradientDrawableHp.setCornerRadius(com.byazt.sq.s.hp(this.gu, this.jl.v()));
            return gradientDrawableHp;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void q() {
        if (this.f26312n) {
            int iRz = this.jl.rz();
            int iNd = this.jl.nd();
            Runnable runnable = new Runnable() { // from class: com.byazt.uq.DynamicBaseWidgetImp.6
                @Override // java.lang.Runnable
                public void run() {
                    DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.f26303k;
                    if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                        DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp.ec = new InteractViewContainer(dynamicBaseWidgetImp2.gu, dynamicBaseWidgetImp2, dynamicBaseWidgetImp2.jl);
                    } else {
                        zy renderRequest = DynamicBaseWidgetImp.this.f26303k.getRenderRequest();
                        com.byazt.nw.e eVar = new com.byazt.nw.e();
                        eVar.hp(renderRequest.xs());
                        eVar.l(renderRequest.vv());
                        eVar.jx(renderRequest.ec());
                        eVar.hp(renderRequest.sz());
                        eVar.l(renderRequest.n());
                        eVar.jx(renderRequest.ns());
                        eVar.j(renderRequest.cx());
                        eVar.w(renderRequest.b());
                        DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp4 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp3.ec = new InteractViewContainer(dynamicBaseWidgetImp4.gu, dynamicBaseWidgetImp4, dynamicBaseWidgetImp4.jl, eVar, renderRequest);
                    }
                    DynamicBaseWidgetImp dynamicBaseWidgetImp5 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp5.l(dynamicBaseWidgetImp5.ec);
                    if (DynamicBaseWidgetImp.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) DynamicBaseWidgetImp.this.getParent()).setClipChildren(false);
                    }
                    DynamicBaseWidgetImp.this.setClipChildren(false);
                    DynamicBaseWidgetImp.this.ec.setTag(2);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp6 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp6.hp((ViewGroup) dynamicBaseWidgetImp6);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp7 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp7.addView(dynamicBaseWidgetImp7.ec, new FrameLayout.LayoutParams(-1, -1));
                    DynamicBaseWidgetImp.this.ec.jx();
                }
            };
            this.hp = runnable;
            postDelayed(runnable, iRz * 1000);
            if (this.jl.hd() || iNd >= Integer.MAX_VALUE || iRz >= iNd) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.byazt.uq.DynamicBaseWidgetImp.7
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                    if (dynamicBaseWidgetImp.ec != null) {
                        dynamicBaseWidgetImp.f26312n = false;
                        DynamicBaseWidgetImp.this.ec.j();
                        DynamicBaseWidgetImp.this.ec.setVisibility(4);
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp2.removeView(dynamicBaseWidgetImp2.ec);
                    }
                }
            };
            this.f26311l = runnable2;
            postDelayed(runnable2, iNd * 1000);
        }
    }

    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.eb, this.f26307s);
    }

    @Override // com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View view = this.f26309v;
        if (view == null) {
            view = this;
        }
        double dSz = this.zy.e().w().sz();
        if (dSz < 90.0d && dSz > 0.0d) {
            com.byazt.ymw.e.l().postDelayed(new Runnable() { // from class: com.byazt.uq.DynamicBaseWidgetImp.4
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp.this.setVisibility(8);
                }
            }, (long) (dSz * 1000.0d));
        }
        hp(this.zy.e().w().ec(), view);
        if (!TextUtils.isEmpty(this.jl.kg())) {
            q();
        }
        super.onAttachedToWindow();
    }

    @Override // com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.hp);
            removeCallbacks(this.f26311l);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.uq.j
    public boolean s() {
        Drawable backgroundDrawable;
        DynamicRootView dynamicRootView;
        JSONObject jSONObjectOptJSONObject;
        final View view = this.f26309v;
        if (view == null) {
            view = this;
        }
        setContentDescription(this.zy.hp(this.jl.d()));
        String strQh = this.jl.qh();
        String strO = null;
        String strHp = (TextUtils.isEmpty(strQh) || (dynamicRootView = this.f26303k) == null || dynamicRootView.getRenderRequest() == null || this.f26303k.getRenderRequest().w() == null || (jSONObjectOptJSONObject = this.f26303k.getRenderRequest().w().optJSONObject("creative")) == null) ? null : hp(jSONObjectOptJSONObject.opt(strQh));
        if (TextUtils.isEmpty(strHp)) {
            strHp = this.jl.n();
        }
        if (this.jl.sz()) {
            com.byazt.ui.hp.hp().w().from(this.jl.f23825l).type(2).converter(new jx(this.gu, this.jl.ec())).to(new l(view, this));
        } else if (!TextUtils.isEmpty(strHp)) {
            if (!strHp.startsWith("http:") && !strHp.startsWith("https:")) {
                DynamicRootView dynamicRootView2 = this.f26303k;
                if (dynamicRootView2 != null && dynamicRootView2.getRenderRequest() != null) {
                    strO = this.f26303k.getRenderRequest().o();
                }
                strHp = q.l(strHp, strO);
            }
            k kVarType = com.byazt.ui.hp.hp().w().from(strHp).type(2);
            hp(kVarType);
            if (com.byazt.wkx.j.hp()) {
                kVarType.to(new hp(view, this.f26303k, this.zy));
            } else if ((view instanceof FrameLayout) && TextUtils.equals(this.zy.e().getType(), "vessel")) {
                if (com.byazt.sq.e.l(strHp)) {
                    this.ns = new GifView(this.gu);
                } else {
                    this.ns = new ImageView(this.gu);
                }
                ((FrameLayout) view).addView(this.ns, new FrameLayout.LayoutParams(-1, -1));
                kVarType.type(3).to(new b() { // from class: com.byazt.uq.DynamicBaseWidgetImp.1
                    @Override // com.byazt.nke.b
                    public void onFailed(int i2, String str, Throwable th) {
                    }

                    @Override // com.byazt.nke.b
                    public void onSuccess(u uVar) {
                        Object result = uVar.getResult();
                        if (result instanceof byte[]) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            a.l(DynamicBaseWidgetImp.this.ns, (byte[]) result, dynamicBaseWidgetImp.eb, dynamicBaseWidgetImp.f26307s);
                        }
                    }
                }, 4);
            } else {
                hp(kVarType, view);
            }
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.jl.hq() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.byazt.uq.DynamicBaseWidgetImp.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBaseWidgetImp.this.jl.r() > 0) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            Drawable drawableL = dynamicBaseWidgetImp.l(dynamicBaseWidgetImp.f26303k.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.jl.r())));
                            if (drawableL == null) {
                                DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                                drawableL = dynamicBaseWidgetImp2.hp(true, dynamicBaseWidgetImp2.f26303k.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.jl.r())));
                            }
                            if (drawableL != null) {
                                view.setBackground(drawableL);
                                return;
                            }
                            View view2 = view;
                            DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                            view2.setBackground(dynamicBaseWidgetImp3.hp(true, dynamicBaseWidgetImp3.f26303k.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.jl.hq() * 1000.0d));
        }
        View view2 = this.f26309v;
        if (view2 != null) {
            view2.setPadding((int) com.byazt.sq.s.hp(this.gu, this.jl.jx()), (int) com.byazt.sq.s.hp(this.gu, this.jl.l()), (int) com.byazt.sq.s.hp(this.gu, this.jl.j()), (int) com.byazt.sq.s.hp(this.gu, this.jl.hp()));
        }
        if (this.f26308u || this.jl.k() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    private String hp(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return hp(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return hp((Object) ((JSONObject) obj).optString("url"));
        }
        return null;
    }

    private void hp(k kVar, final View view) {
        kVar.to(new b<Bitmap>() { // from class: com.byazt.uq.DynamicBaseWidgetImp.3
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u<Bitmap> uVar) {
                DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.f26303k;
                if (dynamicRootView == null) {
                    return;
                }
                if (!"open_ad".equals(dynamicRootView.getRenderRequest().a()) && !"splash_ad".equals(DynamicBaseWidgetImp.this.f26303k.getRenderRequest().a())) {
                    view.setBackground(new BitmapDrawable(uVar.getResult()));
                } else {
                    if (!com.byazt.wkx.j.hp()) {
                        view.setBackground(new BitmapDrawable(uVar.getResult()));
                        return;
                    }
                    view.setBackground(new com.byazt.uq.hp(uVar.getResult(), ((DynamicRoot) DynamicBaseWidgetImp.this.f26303k.getChildAt(0)).hp));
                }
            }
        });
    }

    private static void hp(k kVar) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            kVar.config(Bitmap.Config.ARGB_8888);
        }
    }

    private void hp(double d2, final View view) {
        if (d2 > 0.0d) {
            com.byazt.ymw.e.l().postDelayed(new Runnable() { // from class: com.byazt.uq.DynamicBaseWidgetImp.5
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.zy.e().w().h() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    DynamicBaseWidgetImp.this.setVisibility(0);
                }
            }, (long) (d2 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            if (viewGroup.getChildAt(i2) instanceof InteractViewContainer) {
                viewGroup.removeViewAt(i2);
            }
        }
    }
}
