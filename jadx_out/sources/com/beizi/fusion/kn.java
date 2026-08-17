package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollClickView;
import com.ubix.ssp.open.UBiXLossReason;

/* loaded from: classes2.dex */
public class kn {

    /* renamed from: k, reason: collision with root package name */
    private static AdSpacesBean.BuyerBean.ScrollClickBean f14759k;

    /* renamed from: a, reason: collision with root package name */
    private Context f14760a;

    /* renamed from: b, reason: collision with root package name */
    private int f14761b;

    /* renamed from: c, reason: collision with root package name */
    private int f14762c;

    /* renamed from: d, reason: collision with root package name */
    private d f14763d = null;

    /* renamed from: e, reason: collision with root package name */
    private boolean f14764e = false;

    /* renamed from: f, reason: collision with root package name */
    private int f14765f = 200;

    /* renamed from: g, reason: collision with root package name */
    ScrollClickView f14766g;

    /* renamed from: h, reason: collision with root package name */
    private Boolean f14767h;

    /* renamed from: i, reason: collision with root package name */
    int f14768i;

    /* renamed from: j, reason: collision with root package name */
    int f14769j;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kn.this.a();
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14771a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f14772b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ FrameLayout.LayoutParams f14773c;

        public b(int i2, int i3, FrameLayout.LayoutParams layoutParams) {
            this.f14771a = i2;
            this.f14772b = i3;
            this.f14773c = layoutParams;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ScrollClickView scrollClickView = kn.this.f14766g;
            if (scrollClickView == null) {
                return;
            }
            scrollClickView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            int measuredWidth = kn.this.f14766g.getMeasuredWidth();
            kn knVar = kn.this;
            if (knVar.f14769j == 0) {
                knVar.f14769j = vo.a(knVar.f14760a, this.f14771a) / 2;
            }
            kn knVar2 = kn.this;
            if (knVar2.f14768i == 0) {
                knVar2.f14768i = vo.a(knVar2.f14760a, this.f14772b) / 2;
            }
            FrameLayout.LayoutParams layoutParams = this.f14773c;
            kn knVar3 = kn.this;
            layoutParams.topMargin = knVar3.f14769j;
            layoutParams.leftMargin = knVar3.f14768i - (measuredWidth / 2);
            knVar3.f14766g.setLayoutParams(layoutParams);
            mh.a("ScrollClickUtil", "topMargin = " + this.f14773c.topMargin + ",leftMargin = " + this.f14773c.leftMargin + ",scrollViewWidthInt = " + measuredWidth);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ScrollClickView scrollClickView = kn.this.f14766g;
                if (scrollClickView != null) {
                    scrollClickView.startAnim();
                }
            } catch (Exception unused) {
            }
        }
    }

    public interface d {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);

        void b();
    }

    public kn(Context context) {
        this.f14760a = context;
    }

    public void b(int i2) {
        this.f14762c = i2;
        c();
    }

    public void c(int i2) {
        this.f14761b = i2;
    }

    private void c() {
        if (((Boolean) a(this.f14762c).second).booleanValue()) {
            d9.a(new a(), this.f14761b + (((Integer) r0.first).intValue() * 10));
        }
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean) {
        if (scrollClickBean == null) {
            return;
        }
        f14759k = scrollClickBean;
        c(scrollClickBean.getRandomClickTime());
        b(scrollClickBean.getRandomClickNum());
    }

    public void b() {
        this.f14764e = false;
        ScrollClickView scrollClickView = this.f14766g;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
        this.f14763d = null;
        this.f14760a = null;
        this.f14766g = null;
        this.f14765f = 200;
    }

    public void a(d dVar) {
        this.f14763d = dVar;
    }

    public static Pair a(int i2) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i2) {
            return new Pair(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    public void a() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb.append(this.f14763d != null);
        sb.append(",!isCallBack = ");
        sb.append(!this.f14764e);
        mh.a("ScrollClickUtil", sb.toString());
        if (this.f14763d == null || this.f14764e) {
            return;
        }
        mh.a("ScrollClickUtil", "callback onShakeHappened()");
        this.f14763d.a("100", "200", UBiXLossReason.Reason_Occupied, "206", "100", "200", UBiXLossReason.Reason_Occupied, "206");
        this.f14764e = true;
        ScrollClickView scrollClickView = this.f14766g;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
    }

    public View a(int i2, int i3, AdSpacesBean.BuyerBean.ScrollClickPositionBean scrollClickPositionBean) throws NumberFormatException {
        String downloadDetails;
        int i4;
        int i5;
        mh.a("ScrollClickUtil", "enter getScrollClick");
        if (this.f14760a == null || scrollClickPositionBean == null) {
            return null;
        }
        ScrollClickView scrollClickView = new ScrollClickView(this.f14760a);
        this.f14766g = scrollClickView;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = f14759k;
            if (scrollClickBean != null) {
                scrollClickView.setScrollDirection(scrollClickBean.getScrollDirection());
                this.f14766g.setTitleText(f14759k.getTitle());
                this.f14766g.setTitleFont(f14759k.getTitleFont());
                if (!this.f14767h.booleanValue()) {
                    downloadDetails = f14759k.getDetails();
                } else {
                    downloadDetails = f14759k.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                }
                this.f14766g.setDetailText(downloadDetails);
                this.f14766g.setDetailsFont(f14759k.getDetailsFont());
                AdSpacesBean.BuyerBean.ScrollClickPositionBean position = f14759k.getPosition();
                String width = position.getWidth();
                String height = position.getHeight();
                if (width.endsWith("%")) {
                    i4 = (Integer.parseInt(width.substring(0, width.indexOf("%"))) * i2) / 100;
                } else {
                    i4 = Integer.parseInt(width);
                }
                if (height.endsWith("%")) {
                    i5 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i4) / 100;
                } else {
                    i5 = Integer.parseInt(height);
                }
                this.f14766g.setHandWidth(i4);
                this.f14766g.setScrollbarHeight(i5);
                this.f14766g.buildRealView();
            }
            String top = scrollClickPositionBean.getTop();
            String centerX = scrollClickPositionBean.getCenterX();
            if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                centerX = "50%";
            }
            if (TextUtils.isEmpty(top) || "0".equals(top)) {
                top = "50%";
            }
            vo.i(this.f14760a);
            if (centerX.endsWith("%")) {
                this.f14768i = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i2) / 100;
            } else {
                this.f14768i = Integer.parseInt(centerX);
            }
            if (top.endsWith("%")) {
                this.f14769j = (Integer.parseInt(top.substring(0, top.indexOf("%"))) * i3) / 100;
            } else {
                this.f14769j = Integer.parseInt(top);
            }
            this.f14768i = vo.a(this.f14760a, this.f14768i);
            this.f14769j = vo.a(this.f14760a, this.f14769j);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            mh.a("ScrollClickUtil", "topInt = " + this.f14769j + ",centerXInt = " + this.f14768i + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
            this.f14766g.getViewTreeObserver().addOnGlobalLayoutListener(new b(i3, i2, layoutParams));
            this.f14766g.setLayoutParams(layoutParams);
            this.f14766g.postDelayed(new c(), 10L);
        } catch (NumberFormatException unused) {
        }
        return this.f14766g;
    }

    public void a(Boolean bool) {
        this.f14767h = bool;
    }
}
