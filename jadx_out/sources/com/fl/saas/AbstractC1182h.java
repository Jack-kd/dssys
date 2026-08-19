package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import com.fl.saas.adx.base.interfaces.AdViewListener;
import com.fl.saas.adx.base.interfaces.AdViewVideoListener;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.h, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1182h extends AbstractC1203o {

    /* renamed from: a, reason: collision with root package name */
    private boolean f30398a;

    /* renamed from: b, reason: collision with root package name */
    private long f30399b;

    public boolean b() {
        try {
            return this.f30398a && ((((System.currentTimeMillis() - this.f30399b) / 1000) > ((long) getAdSource().f30418D1) ? 1 : (((System.currentTimeMillis() - this.f30399b) / 1000) == ((long) getAdSource().f30418D1) ? 0 : -1)) < 0);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    public void c() {
        try {
            double d2 = getAdSource().f30496d > 0 ? getAdSource().f30496d : getAdSource().f30493c;
            AdViewListener eventListener = getEventListener();
            if (eventListener instanceof AdViewVideoListener) {
                ((AdViewVideoListener) eventListener).onVideoReward(d2);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void d() {
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewVideoListener) {
            ((AdViewVideoListener) eventListener).onVideoCompleted();
        }
    }

    public abstract void e();

    public void f() {
        this.f30398a = false;
        reportRequestShow();
        e();
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onClickedEvent() {
        super.onClickedEvent();
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewVideoListener) {
            ((AdViewVideoListener) eventListener).onAdClick("");
        }
    }

    public void onClosedEvent() {
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewVideoListener) {
            ((AdViewVideoListener) eventListener).onAdClose();
        }
    }

    @Override // com.fl.saas.AbstractC1200n
    public void onLoadedEvent() {
        this.f30398a = true;
        this.f30399b = System.currentTimeMillis();
        super.onLoadedEvent();
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onShowEvent() {
        this.f30398a = false;
        super.onShowEvent();
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewVideoListener) {
            ((AdViewVideoListener) eventListener).onAdShow();
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void showAd() {
        super.showAd();
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewVideoListener) {
            ((AdViewVideoListener) eventListener).onVideoPrepared();
        }
    }

    public void b(Activity activity) {
        setContext((Context) activity);
        this.f30398a = false;
        reportRequestShow();
        e();
    }
}
