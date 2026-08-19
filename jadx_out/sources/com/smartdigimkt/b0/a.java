package com.smartdigimkt.b0;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class a implements ISDMDirectlyOfferSetting {

    /* renamed from: a, reason: collision with root package name */
    public volatile String f39466a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Drawable f39467b;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f39468c;

    /* renamed from: d, reason: collision with root package name */
    public WeakReference f39469d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f39470e;

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final Drawable getDirectlySplashAdCTAButtongBgDrawable() {
        return this.f39467b;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final String getDirectlySplashAdShakeIconString() {
        return this.f39466a;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final View getDirectlySplashCTAButton() {
        View view;
        WeakReference weakReference = this.f39468c;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return null;
        }
        return view;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final Boolean getDirectlySplashMuteIconVisible() {
        return this.f39470e;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final View getDirectlySplashShakeButton() {
        View view;
        WeakReference weakReference = this.f39469d;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return null;
        }
        return view;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final void setDirectlySplashAdCTAButtongBgDrawable(Drawable drawable) {
        this.f39467b = drawable;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final void setDirectlySplashAdShakeIconString(String str) {
        this.f39466a = str;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final void setDirectlySplashCTAButton(View view) {
        if (view != null) {
            this.f39468c = new WeakReference(view);
        }
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final void setDirectlySplashMuteIconVisible(boolean z2) {
        this.f39470e = Boolean.valueOf(z2);
    }

    @Override // com.smartdigimkt.sdk.api.ISDMDirectlyOfferSetting
    public final void setDirectlySplashShakeButton(View view) {
        if (view != null) {
            this.f39469d = new WeakReference(view);
        }
    }
}
