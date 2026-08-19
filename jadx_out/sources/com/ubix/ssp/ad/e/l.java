package com.ubix.ssp.ad.e;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.u;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class l extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private int f46963a;

    /* renamed from: b, reason: collision with root package name */
    private int f46964b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f46965c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f46966d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f46967e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f46968f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f46969g;

    /* renamed from: h, reason: collision with root package name */
    private c f46970h;

    /* renamed from: i, reason: collision with root package name */
    private final String f46971i;

    /* renamed from: j, reason: collision with root package name */
    private final String f46972j;

    /* renamed from: k, reason: collision with root package name */
    com.ubix.ssp.ad.e.a0.g f46973k;

    /* renamed from: l, reason: collision with root package name */
    private AtomicBoolean f46974l;

    /* renamed from: m, reason: collision with root package name */
    HashMap<String, String> f46975m;

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 38.0f);
        }
    }

    public class b implements g.b {
        public b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
            if (l.this.f46974l.getAndSet(true)) {
                return;
            }
            Rect rect = new Rect();
            l.this.getGlobalVisibleRect(rect);
            double dRandom = Math.random();
            int iWidth = (int) (rect.width() * dRandom);
            int iHeight = (int) (rect.height() * dRandom);
            int i2 = rect.left + iWidth;
            int i3 = rect.top + iHeight;
            l.this.f46975m.put("__DOWN_X__", iWidth + "");
            l.this.f46975m.put("__DOWN_Y__", iHeight + "");
            l.this.f46975m.put("__RAW_DOWN_X__", i2 + "");
            l.this.f46975m.put("__RAW_DOWN_Y__", i3 + "");
            l.this.f46975m.put("__UP_X__", iWidth + "");
            l.this.f46975m.put("__UP_Y__", iHeight + "");
            l.this.f46975m.put("__WIDTH__", l.this.getWidth() + "");
            l.this.f46975m.put("__HEIGHT__", l.this.getHeight() + "");
            l.this.f46975m.put("__RAW_UP_X__", i2 + "");
            l.this.f46975m.put("__RAW_UP_Y__", i3 + "");
            l.this.f46975m.put("__CLICK_XY__", iWidth + "_" + iHeight);
            if (l.this.f46970h != null) {
                l.this.f46970h.a(l.this.f46975m);
                l.this.f46970h.onClose();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            u.e("onTick=" + j2);
            int i2 = (int) (j2 / 1000);
            if (l.this.f46966d != null) {
                l.this.f46966d.setText(String.format("%ss后打开应用或第三方详情", "" + (i2 + 1)));
            }
        }
    }

    public interface c {
        void a(HashMap<String, String> map);

        void onClose();
    }

    public l(Context context) {
        double d2;
        super(context);
        this.f46963a = 0;
        this.f46964b = 0;
        this.f46965c = null;
        this.f46966d = null;
        this.f46967e = null;
        this.f46968f = null;
        this.f46969g = false;
        this.f46971i = "%ss后打开应用或第三方详情";
        this.f46972j = "可查看更多精彩";
        this.f46973k = null;
        this.f46974l = new AtomicBoolean(false);
        this.f46975m = new HashMap<>();
        int iH = com.ubix.ssp.ad.e.a0.r.a().h(context);
        int iC = com.ubix.ssp.ad.e.a0.r.a().c(context);
        double dA = com.ubix.ssp.ad.e.a0.r.a().a(context);
        if (iH > iC) {
            this.f46969g = true;
            this.f46963a = (int) (iH * 0.6f);
            d2 = 54.0d;
        } else {
            this.f46963a = (int) (iH * 0.74f);
            d2 = 64.0d;
        }
        this.f46964b = (int) (d2 * dA);
        this.f46963a = Math.min(1200, this.f46963a);
        this.f46965c = new ImageView(context);
        this.f46966d = new TextView(context);
        this.f46967e = new TextView(context);
        this.f46968f = new TextView(context);
        this.f46965c.setId(89101);
        this.f46966d.setId(89102);
        this.f46967e.setId(89103);
        this.f46968f.setId(89104);
        this.f46965c.setClipToOutline(true);
        this.f46965c.setOutlineProvider(new a());
        setBackground(com.ubix.ssp.ad.e.a0.c.a(context, -1644167168, (int) (16.0d * dA), -1, 2));
        this.f46968f.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), 0, (int) (dA * 7.0d), -1));
        TextView textView = this.f46966d;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.f46967e.setEllipsize(truncateAt);
        addView(this.f46965c);
        TextView textView2 = this.f46966d;
        double d3 = this.f46964b;
        addView(textView2, new RelativeLayout.LayoutParams((int) (d3 * 0.8d), (int) (d3 * 0.35d)));
        TextView textView3 = this.f46967e;
        double d4 = this.f46964b;
        addView(textView3, new RelativeLayout.LayoutParams((int) (0.8d * d4), (int) (d4 * 0.35d)));
        addView(this.f46968f);
        setZ(20.0f);
        this.f46966d.setSingleLine();
        this.f46967e.setSingleLine();
        this.f46966d.setTextColor(-1);
        this.f46967e.setTextColor(-1);
        this.f46968f.setTextColor(-1);
        this.f46968f.setGravity(17);
        this.f46966d.setTextSize(11.0f);
        this.f46967e.setTextSize(10.0f);
        this.f46968f.setTextSize(10.0f);
        this.f46968f.setOnClickListener(this);
        setOnClickListener(this);
    }

    public int getTargetHeight() {
        return this.f46964b;
    }

    public int getTargetWidth() {
        return this.f46963a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 89104) {
            a();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            switch (childAt.getId()) {
                case 89101:
                    double d2 = this.f46963a * 0.04d;
                    double d3 = this.f46964b;
                    double d4 = 0.2d * d3;
                    double d5 = d3 * 0.6d;
                    childAt.layout((int) d2, (int) d4, (int) (d2 + d5), (int) (d4 + d5));
                    break;
                case 89102:
                    int right = findViewById(89101).getRight();
                    int i7 = this.f46963a;
                    double d6 = this.f46964b;
                    childAt.layout((int) (findViewById(89101).getRight() + (this.f46963a * 0.04d)), (int) (this.f46964b * 0.2d), (int) (((right + i7) - (0.8d * d6)) - (i7 * 0.06d)), (int) ((0.2d * d6) + (d6 * 0.35d)));
                    break;
                case 89103:
                    int bottom = findViewById(89102).getBottom();
                    int right2 = findViewById(89101).getRight();
                    childAt.layout((int) (findViewById(89101).getRight() + (this.f46963a * 0.04d)), bottom, (int) (((right2 + r11) - (this.f46964b * 0.8d)) - (this.f46963a * 0.06d)), (int) (findViewById(89102).getBottom() + (this.f46964b * 0.35d)));
                    break;
                case 89104:
                    double d7 = this.f46963a * 0.95d;
                    double d8 = this.f46964b;
                    int i8 = (int) (d7 - ((0.4d * d8) * 1.8d));
                    int i9 = (int) (d8 * 0.3d);
                    childAt.layout(i8, i9, (int) d7, childAt.getMeasuredHeight() + i9);
                    break;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(this.f46963a, this.f46964b);
        this.f46968f.measure(View.MeasureSpec.makeMeasureSpec((int) (this.f46964b * 0.4d * 1.8d), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec((int) (this.f46964b * 0.4d), C.ENCODING_PCM_32BIT));
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            com.ubix.ssp.ad.e.a0.g gVar = this.f46973k;
            if (gVar == null || !gVar.b()) {
                return;
            }
            this.f46973k.d();
            return;
        }
        com.ubix.ssp.ad.e.a0.g gVar2 = this.f46973k;
        if (gVar2 == null || gVar2.b()) {
            return;
        }
        this.f46973k.c();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            com.ubix.ssp.ad.e.a0.g gVar = this.f46973k;
            if (gVar == null || !gVar.b()) {
                return;
            }
            this.f46973k.d();
            return;
        }
        com.ubix.ssp.ad.e.a0.g gVar2 = this.f46973k;
        if (gVar2 == null || gVar2.b()) {
            return;
        }
        this.f46973k.c();
    }

    public void setClickListener(c cVar) {
        this.f46970h = cVar;
    }

    private void b() {
        if (this.f46973k != null) {
            return;
        }
        com.ubix.ssp.ad.e.a0.g gVar = new com.ubix.ssp.ad.e.a0.g(5000L);
        this.f46973k = gVar;
        gVar.a(new b());
        this.f46973k.e();
    }

    public void a() {
        com.ubix.ssp.ad.e.a0.g gVar = this.f46973k;
        if (gVar != null) {
            gVar.a();
        }
        c cVar = this.f46970h;
        if (cVar != null) {
            cVar.onClose();
        }
    }

    public void a(Bundle bundle) {
        this.f46966d.setText(String.format("%ss后打开应用或第三方详情", "5"));
        this.f46967e.setText("可查看更多精彩");
        String string = bundle.getString("ICON_URL", "");
        this.f46968f.setText("不用了");
        if (!TextUtils.isEmpty(string)) {
            com.ubix.ssp.ad.e.v.e.b().a(string, this.f46965c, 0, null);
        }
        b();
    }

    public void a(View view, long j2) {
        if (view == null) {
            return;
        }
        try {
            view.setTranslationY(view.getHeight());
            view.setAlpha(0.0f);
            view.setVisibility(0);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, -((l) view).getTargetWidth());
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            animatorSet.setDuration(j2);
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
