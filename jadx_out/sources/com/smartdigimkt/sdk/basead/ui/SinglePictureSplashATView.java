package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.f;
import com.smartdigimkt.k2.y;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a6;
import com.smartdigimkt.v1.d6;
import com.smartdigimkt.v1.e6;
import com.smartdigimkt.v1.r;
import com.smartdigimkt.z.z;
import com.smartdigimkt.z3.d;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class SinglePictureSplashATView extends BaseSdkSplashATView {

    /* renamed from: l0, reason: collision with root package name */
    public static final /* synthetic */ int f43642l0 = 0;

    public SinglePictureSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void e() {
        View viewInflate = this.f43216b.f41644r.f41951m == 2 ? LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_single_land", "layout"), this) : LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_single_port", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new a6(this);
            tVar.a(getContext(), viewInflate);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public List<View> getAutoClickCTAViews() {
        y yVar;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList(2);
        r rVar = this.f43230p;
        if (rVar == null || (arrayList = rVar.f41295e) == null || arrayList.size() <= 0) {
            yVar = null;
        } else {
            ArrayList arrayList3 = rVar.f41295e;
            int size = arrayList3.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList3.get(i2);
                i2++;
                f fVar = (f) obj;
                if (fVar instanceof y) {
                    yVar = (y) fVar;
                    break;
                }
            }
            yVar = null;
        }
        if (yVar != null) {
            arrayList2.add(yVar.f41357i);
        }
        arrayList2.add(this.f43228n);
        return arrayList2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void o() {
        this.f43315k0 = true;
        m.a(getContext()).a(new o(1, this.f43217c.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new d6(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public void q() {
        View view;
        this.f43228n = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        if (this.f43217c.e() == 4) {
            try {
                View directlySplashCTAButton = SDMSDK.getInstance().getDirectlyOfferSetting().getDirectlySplashCTAButton();
                if (directlySplashCTAButton != null) {
                    try {
                        int iIndexOfChild = indexOfChild(this.f43228n);
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43228n.getLayoutParams();
                        this.f43228n.setVisibility(8);
                        this.f43228n = directlySplashCTAButton;
                        if (directlySplashCTAButton.getLayoutParams() != null && (directlySplashCTAButton.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                            layoutParams = (RelativeLayout.LayoutParams) directlySplashCTAButton.getLayoutParams();
                        }
                        d.a(directlySplashCTAButton);
                        addView(directlySplashCTAButton, iIndexOfChild, layoutParams);
                        SDKContext.getInstance().j();
                    } catch (Throwable unused) {
                        this.f43228n = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        a aVar = this.f43216b;
        if (aVar.f41644r == null || (view = this.f43228n) == null) {
            return;
        }
        if (view instanceof CTAButtonLayout) {
            ((CTAButtonLayout) view).initSetting(this.f43217c, aVar, false, null);
        } else if (view instanceof TextView) {
            if (TextUtils.isEmpty(this.f43217c.f41817h)) {
                ((TextView) this.f43228n).setText(z.a(getContext(), this.f43217c));
            } else {
                ((TextView) this.f43228n).setText(this.f43217c.f41817h);
            }
        }
        if (z.d(this.f43216b)) {
            this.f43228n.setVisibility(8);
        } else {
            this.f43225k.add(this.f43228n);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void r() {
        int i2 = this.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        a(i2, new e6(this));
    }

    public SinglePictureSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
