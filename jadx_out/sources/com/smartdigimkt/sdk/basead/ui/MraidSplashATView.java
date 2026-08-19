package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.v1.a4;
import com.smartdigimkt.v1.b4;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class MraidSplashATView extends BaseSplashATView {

    /* renamed from: f0, reason: collision with root package name */
    public static final /* synthetic */ int f43504f0 = 0;

    /* renamed from: e0, reason: collision with root package name */
    public MraidContainerView f43505e0;

    public MraidSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        MraidContainerView mraidContainerView = this.f43505e0;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_web_splash_ad_layout", "layout"), this);
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new a4(this);
            tVar.a(getContext(), this);
        }
        if (this.f43212A != null) {
            a(this);
            View viewFindViewById = findViewById(k.a(getContext(), "myoffer_splash_skip_area", "id"));
            this.f43212A.getClass();
            if (viewFindViewById != null) {
                new WeakReference(viewFindViewById);
            }
        }
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.f43217c, this.f43216b, this.f43212A, new b4(this));
        this.f43505e0 = mraidContainerView;
        mraidContainerView.setNeedRegisterVolumeChangeReceiver(true);
        this.f43505e0.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(k.a(getContext(), "myoffer_splash_web", "id"));
        if (frameLayout != null) {
            this.f43505e0.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.addView(this.f43505e0);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        MraidContainerView mraidContainerView = this.f43505e0;
        if (mraidContainerView != null) {
            mraidContainerView.fireMraidIsViewable(z2);
        }
    }

    public MraidSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
