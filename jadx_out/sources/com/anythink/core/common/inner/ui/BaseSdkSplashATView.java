package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.widget.ImageView;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public abstract class BaseSdkSplashATView extends BaseSplashATView {

    /* renamed from: l, reason: collision with root package name */
    protected RoundImageView f4887l;

    /* renamed from: m, reason: collision with root package name */
    protected MuteImageView f4888m;

    /* renamed from: n, reason: collision with root package name */
    ImageView f4889n;

    /* renamed from: o, reason: collision with root package name */
    ImageView f4890o;

    /* renamed from: p, reason: collision with root package name */
    protected boolean f4891p;

    public BaseSdkSplashATView(Context context) {
        super(context);
        this.f4891p = false;
    }

    public abstract void b();

    public void c() {
        this.f4891p = true;
    }

    public void f() {
        b();
        this.f4887l = (RoundImageView) findViewById(p.a(getContext(), "myoffer_ad_logo", "id"));
        this.f4889n = (ImageView) findViewById(p.a(getContext(), "myoffer_player_view_cover_img_id", "id"));
        this.f4890o = (ImageView) findViewById(p.a(getContext(), "myoffer_player_view_cover_icon_id", "id"));
        c();
    }

    public BaseSdkSplashATView(Context context, x xVar, w wVar, com.anythink.core.common.inner.e.a aVar) {
        super(context, xVar, wVar, aVar);
        this.f4891p = false;
    }
}
