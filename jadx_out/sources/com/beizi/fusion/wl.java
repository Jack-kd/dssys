package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class wl {

    /* renamed from: a, reason: collision with root package name */
    private Context f17263a;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f17264b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f17265c;

    /* renamed from: d, reason: collision with root package name */
    private c f17266d = null;

    /* renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.PercentPositionBean f17267e;

    /* renamed from: f, reason: collision with root package name */
    private String f17268f;

    /* renamed from: g, reason: collision with root package name */
    private String f17269g;

    /* renamed from: h, reason: collision with root package name */
    private double f17270h;

    /* renamed from: i, reason: collision with root package name */
    private String f17271i;

    /* renamed from: j, reason: collision with root package name */
    private int f17272j;

    public class a implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f17273a;

        /* renamed from: b, reason: collision with root package name */
        float f17274b;

        /* renamed from: c, reason: collision with root package name */
        float f17275c;

        /* renamed from: d, reason: collision with root package name */
        float f17276d;

        /* renamed from: e, reason: collision with root package name */
        float f17277e;

        /* renamed from: f, reason: collision with root package name */
        float f17278f;

        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f17273a = motionEvent.getX();
                this.f17274b = motionEvent.getY();
                this.f17275c = motionEvent.getRawX();
                this.f17276d = motionEvent.getRawY();
                this.f17277e = motionEvent.getX();
                this.f17278f = motionEvent.getY();
            } else if (action != 1) {
                if (action == 2) {
                    this.f17277e = motionEvent.getX();
                    this.f17278f = motionEvent.getY();
                }
            } else if (Math.abs(this.f17277e - this.f17273a) <= 15.0f && Math.abs(this.f17278f - this.f17274b) <= 15.0f && wl.this.f17266d != null) {
                wl.this.f17266d.a(String.valueOf(this.f17273a), String.valueOf(this.f17274b), String.valueOf(this.f17275c), String.valueOf(this.f17276d), String.valueOf(this.f17273a), String.valueOf(this.f17274b), String.valueOf(this.f17275c), String.valueOf(this.f17276d));
            }
            return true;
        }
    }

    public class b implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f17280a;

        /* renamed from: b, reason: collision with root package name */
        float f17281b;

        /* renamed from: c, reason: collision with root package name */
        float f17282c;

        /* renamed from: d, reason: collision with root package name */
        float f17283d;

        /* renamed from: e, reason: collision with root package name */
        float f17284e;

        /* renamed from: f, reason: collision with root package name */
        float f17285f;

        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f17280a = motionEvent.getX();
                this.f17281b = motionEvent.getY();
                this.f17282c = motionEvent.getRawX();
                this.f17283d = motionEvent.getRawY();
                this.f17284e = motionEvent.getX();
                this.f17285f = motionEvent.getY();
            } else if (action != 1) {
                if (action == 2) {
                    this.f17284e = motionEvent.getX();
                    this.f17285f = motionEvent.getY();
                }
            } else if (Math.abs(this.f17284e - this.f17280a) <= 15.0f && Math.abs(this.f17285f - this.f17281b) <= 15.0f && wl.this.f17266d != null) {
                wl.this.f17266d.a(String.valueOf(this.f17280a), String.valueOf(this.f17281b), String.valueOf(this.f17282c), String.valueOf(this.f17283d), String.valueOf(this.f17280a), String.valueOf(this.f17281b), String.valueOf(this.f17282c), String.valueOf(this.f17283d));
            }
            return true;
        }
    }

    public interface c {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public wl(Context context, AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean, String str, boolean z2) {
        this.f17268f = null;
        this.f17269g = null;
        this.f17270h = 0.0d;
        this.f17271i = null;
        this.f17272j = 0;
        try {
            this.f17263a = context;
            this.f17264b = regionalClickViewBean;
            AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanA = a(regionalClickViewBean.getOrderData(), str);
            if (orderDataRegionalClickViewBeanA != null && orderDataRegionalClickViewBeanA.getRegionalClickView() != null) {
                this.f17265c = orderDataRegionalClickViewBeanA.getRegionalClickView();
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean2 = this.f17265c;
            if (regionalClickViewBean2 != null) {
                if (z2) {
                    String downloadTitle = regionalClickViewBean2.getDownloadTitle();
                    this.f17271i = downloadTitle;
                    if (TextUtils.isEmpty(downloadTitle)) {
                        this.f17271i = "点击下载应用";
                    }
                } else {
                    this.f17271i = regionalClickViewBean2.getTitle();
                }
                this.f17267e = this.f17265c.getPosition();
                this.f17268f = this.f17265c.getTitleColor();
                this.f17269g = this.f17265c.getBackgroundColor();
                this.f17270h = this.f17265c.getBackgroundAlpha();
                this.f17272j = this.f17265c.getIsDisableClick();
            } else {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean3 = this.f17264b;
                if (regionalClickViewBean3 != null) {
                    if (z2) {
                        String downloadTitle2 = regionalClickViewBean3.getDownloadTitle();
                        this.f17271i = downloadTitle2;
                        if (TextUtils.isEmpty(downloadTitle2)) {
                            this.f17271i = "点击下载应用";
                        }
                    } else {
                        this.f17271i = regionalClickViewBean3.getTitle();
                    }
                    this.f17267e = this.f17264b.getPosition();
                    this.f17268f = this.f17264b.getTitleColor();
                    this.f17269g = this.f17264b.getBackgroundColor();
                    this.f17270h = this.f17264b.getBackgroundAlpha();
                    this.f17272j = this.f17264b.getIsDisableClick();
                }
            }
            if (TextUtils.isEmpty(this.f17271i)) {
                this.f17271i = "点击跳转网页或第三方应用";
            }
            if (TextUtils.isEmpty(this.f17269g)) {
                this.f17269g = "#3976FF";
            }
            if (TextUtils.isEmpty(this.f17268f)) {
                this.f17268f = "#FFFFFF";
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f17263a == null) {
                    return;
                }
                TextView textView = new TextView(this.f17263a);
                textView.setVisibility(0);
                textView.setLines(1);
                textView.setGravity(17);
                textView.setMaxLines(1);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f17272j == 0) {
                    textView.setOnTouchListener(new a());
                }
                if (!TextUtils.isEmpty(this.f17271i)) {
                    textView.setText(this.f17271i);
                }
                if (TextUtils.isEmpty(this.f17268f)) {
                    this.f17268f = "#FFFFFF";
                }
                if (!TextUtils.isEmpty(this.f17268f) && this.f17268f.startsWith("#")) {
                    textView.setTextColor(Color.parseColor(this.f17268f));
                }
                if (TextUtils.isEmpty(this.f17269g)) {
                    this.f17269g = "#80000000";
                }
                GradientDrawable gradientDrawable = new GradientDrawable();
                if (!TextUtils.isEmpty(this.f17269g) && this.f17269g.startsWith("#")) {
                    gradientDrawable.setColor(Color.parseColor(this.f17269g));
                }
                double d2 = this.f17270h;
                if (d2 > 0.0d) {
                    gradientDrawable.setAlpha((int) (d2 * 255.0d));
                }
                gradientDrawable.setCornerRadius(eq.a(this.f17263a, 7.0f));
                textView.setBackgroundDrawable(gradientDrawable);
                int[] iArrA = a(viewGroup);
                try {
                    textView.setTextSize(2, (float) (iArrA[1] > 0 ? eq.b(this.f17263a, r7) / 3 : 14.0d));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (viewGroup instanceof RelativeLayout) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    int i2 = iArrA[0];
                    if (i2 > 0) {
                        layoutParams.width = i2;
                    }
                    int i3 = iArrA[1];
                    if (i3 > 0) {
                        layoutParams.height = i3;
                    }
                    layoutParams.leftMargin = iArrA[2];
                    layoutParams.topMargin = iArrA[3];
                    layoutParams.addRule(17);
                    viewGroup.addView(textView, layoutParams);
                    return;
                }
                if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    int i4 = iArrA[0];
                    if (i4 > 0) {
                        layoutParams2.width = i4;
                    }
                    int i5 = iArrA[1];
                    if (i5 > 0) {
                        layoutParams2.height = i5;
                    }
                    layoutParams2.leftMargin = iArrA[2];
                    layoutParams2.topMargin = iArrA[3];
                    viewGroup.addView(textView, layoutParams2);
                    return;
                }
                if (!(viewGroup instanceof LinearLayout)) {
                    ViewGroup.LayoutParams layoutParams3 = new ViewGroup.LayoutParams(-1, -2);
                    int i6 = iArrA[0];
                    if (i6 > 0) {
                        layoutParams3.width = i6;
                    }
                    int i7 = iArrA[1];
                    if (i7 > 0) {
                        layoutParams3.height = i7;
                    }
                    viewGroup.addView(textView, layoutParams3);
                    return;
                }
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                int i8 = iArrA[0];
                if (i8 > 0) {
                    layoutParams4.width = i8;
                }
                int i9 = iArrA[1];
                if (i9 > 0) {
                    layoutParams4.height = i9;
                }
                layoutParams4.leftMargin = iArrA[2];
                layoutParams4.topMargin = iArrA[3];
                viewGroup.addView(textView, layoutParams4);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public void a(LinearLayout linearLayout, TextView textView) {
        if (linearLayout == null || textView == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.f17271i)) {
                textView.setText(this.f17271i);
            }
            if (this.f17272j != 0) {
                return;
            }
            linearLayout.setOnTouchListener(new b());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private int[] a(ViewGroup viewGroup) {
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = this.f17267e;
                if (percentPositionBean != null) {
                    String centerX = percentPositionBean.getCenterX();
                    String centerY = this.f17267e.getCenterY();
                    String width = this.f17267e.getWidth();
                    String height = this.f17267e.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "0";
                    }
                    if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                        centerY = "0";
                    }
                    viewGroup.measure(0, 0);
                    int iB = eq.b(this.f17263a, viewGroup.getMeasuredWidth());
                    int iB2 = eq.b(this.f17263a, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = wo.j(this.f17263a);
                    }
                    nh.a("RegionClickUtil", "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
                    if (TextUtils.isEmpty(width) || "0".equals(width)) {
                        width = String.valueOf(iB);
                    }
                    if (TextUtils.isEmpty(height) || "0".equals(height)) {
                        height = "40";
                    }
                    if (centerX.endsWith("%")) {
                        i2 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * iB) / 100;
                    } else {
                        i2 = !TextUtils.isEmpty(centerX) ? Integer.parseInt(centerX) : 0;
                    }
                    if (centerY.endsWith("%")) {
                        i3 = (iB2 * Integer.parseInt(centerY.substring(0, centerY.indexOf("%")))) / 100;
                    } else {
                        i3 = !TextUtils.isEmpty(centerY) ? Integer.parseInt(centerY) : 0;
                    }
                    if (width.endsWith("%")) {
                        i4 = (iB * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100;
                    } else {
                        i4 = !TextUtils.isEmpty(width) ? Integer.parseInt(width) : 0;
                    }
                    if (height.endsWith("%")) {
                        i5 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i4) / 100;
                    } else {
                        i5 = !TextUtils.isEmpty(width) ? Integer.parseInt(height) : 40;
                    }
                    int iA = eq.a(this.f17263a, i4);
                    int iA2 = eq.a(this.f17263a, i5);
                    int iA3 = eq.a(this.f17263a, i2);
                    int iA4 = eq.a(this.f17263a, i3);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    nh.a("RegionClickUtil", "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + centerY);
                    return iArr;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return iArr;
            }
        }
        int i6 = viewGroup.getLayoutParams().width;
        int iA5 = eq.a(this.f17263a, 40.0f);
        iArr[0] = i6;
        iArr[1] = iA5;
        iArr[2] = 0;
        iArr[3] = 0;
        return iArr;
    }

    public void a(c cVar) {
        this.f17266d = cVar;
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean = (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean) it.next();
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    public String a() {
        return this.f17269g;
    }

    public void b() {
        this.f17264b = null;
        this.f17265c = null;
        this.f17267e = null;
        this.f17266d = null;
        this.f17263a = null;
    }
}
