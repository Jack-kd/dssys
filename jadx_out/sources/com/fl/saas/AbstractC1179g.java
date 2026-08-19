package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import androidx.arch.core.util.Function;
import com.fl.saas.adx.base.activity.FLSpreadActivity;
import com.fl.saas.adx.base.base.builder.InnerSpreadBuilder;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.FLAdTempHelper;
import com.fl.saas.adx.base.interfaces.AdMaterial;
import com.fl.saas.adx.base.interfaces.AdViewListener;
import com.fl.saas.adx.base.interfaces.AdViewSpreadListener;
import com.fl.saas.adx.base.interfaces.SpreadLoadListener;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.g, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1179g extends AbstractC1203o {
    private final String TAG = CommConstant.getObjTag(this);
    private long adFillingTime = 0;
    private boolean hasBackDisplay = false;
    private boolean hasCallbackClose;
    private boolean isShow;
    private a mAdViewLoadListener;
    private SpreadLoadListener.SpreadAd spreadAd;

    /* renamed from: com.fl.saas.g$a */
    public interface a {
        void a(ViewGroup viewGroup);
    }

    /* renamed from: com.fl.saas.g$b */
    public class b implements SpreadLoadListener.SpreadAd {
        public b() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdMaterial
        public AdMaterial.AdMaterialData getAdMaterialData() {
            AbstractC1179g abstractC1179g = AbstractC1179g.this;
            return abstractC1179g instanceof AdMaterial ? abstractC1179g.getMaterialData() : AdMaterial.AdMaterialData.createEmpty(abstractC1179g.getAdSource().f30485a);
        }

        @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener.SpreadAd
        public int getEcpm() {
            return AbstractC1179g.this.getAdSource().g();
        }

        @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener.SpreadAd
        public boolean isAdReady() {
            return (AbstractC1179g.this.isShow || AbstractC1179g.this.adFillingTime == 0 || DeviceUtil.getBootTime() - AbstractC1179g.this.adFillingTime >= ((long) AbstractC1179g.this.getAdSource().f30418D1) * 1000) ? false : true;
        }

        @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener.SpreadAd
        public void show(Activity activity, ViewGroup viewGroup) {
            if (AbstractC1179g.this.isShow) {
                return;
            }
            if (AbstractC1179g.this.getEventListener() instanceof AdViewSpreadListener) {
                DeviceUtil.postUIDelayed(6000L, new Runnable() { // from class: com.fl.saas.u2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f30665b.a();
                    }
                });
            }
            AbstractC1179g.this.reportRequestShow();
            boolean z2 = true;
            AbstractC1179g.this.isShow = true;
            if (activity != null) {
                try {
                    AbstractC1179g.this.setContext((Context) activity);
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                    AbstractC1179g.this.onAdFailed(new FLError(ErrorCodeConstant.RENDER_ERROR, th.getMessage()));
                    return;
                }
            }
            String str = AbstractC1179g.this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("spreadLoadListener show:");
            if (viewGroup != null) {
                z2 = false;
            }
            sb.append(z2);
            LogcatUtil.d(str, sb.toString());
            AbstractC1179g.this.a(viewGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (AbstractC1179g.this.hasCallbackClose) {
                return;
            }
            AbstractC1179g.this.hasCallbackClose = true;
            AbstractC1179g.this.handleListenerEvent(new com.fl.saas.adx.base.manager.f());
        }

        @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener.SpreadAd
        public void show(ViewGroup viewGroup) {
            Activity activityOrNull = AbstractC1179g.this.getActivityOrNull();
            if (activityOrNull == null) {
                activityOrNull = DeviceUtil.getTopActivity();
            }
            LogcatUtil.d(AbstractC1179g.this.TAG, "spreadLoadListener show:" + activityOrNull + AbstractC1179g.this.isShow);
            show(activityOrNull, viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SpreadLoadListener spreadLoadListener) {
        spreadLoadListener.onADLoaded(loadSpreadAd());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        a((ViewGroup) getBuilderFieldOptional(new Function() { // from class: com.fl.saas.t2
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((InnerSpreadBuilder) obj).getContainer();
            }
        }).c(null));
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        if (this.spreadAd != null && FLAdTempHelper.getInstance().getSpreadAd() == this.spreadAd) {
            FLAdTempHelper.getInstance().clearSpreadAd();
        }
        this.spreadAd = null;
        super.destroy();
    }

    public boolean isAdReady() {
        return (this.isShow || this.adFillingTime == 0 || DeviceUtil.getBootTime() - this.adFillingTime >= ((long) getAdSource().f30418D1) * 1000) ? false : true;
    }

    public SpreadLoadListener.SpreadAd loadSpreadAd() {
        LogcatUtil.d(this.TAG, "loadSpreadAd");
        if (this.spreadAd == null) {
            this.spreadAd = new b();
        }
        return this.spreadAd;
    }

    @Override // com.fl.saas.AbstractC1203o, com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.interfaces.AdViewListener
    public void onAdFailed(FLError fLError) {
        super.onAdFailed(fLError);
        this.hasCallbackClose = true;
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onClickedEvent() {
        super.onClickedEvent();
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewSpreadListener) {
            ((AdViewSpreadListener) eventListener).onAdClick("");
        }
    }

    public void onClosedEvent() {
        if (this.hasCallbackClose) {
            return;
        }
        this.hasCallbackClose = true;
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewSpreadListener) {
            ((AdViewSpreadListener) eventListener).onAdClose();
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onShowEvent() {
        super.onShowEvent();
        if (this.hasBackDisplay) {
            return;
        }
        this.hasBackDisplay = true;
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewSpreadListener) {
            ((AdViewSpreadListener) eventListener).onAdDisplay();
        }
    }

    public void onSpreadLoadedEvent(a aVar) {
        this.adFillingTime = DeviceUtil.getBootTime();
        this.mAdViewLoadListener = aVar;
        super.onLoadedEvent();
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void showAd() {
        LogcatUtil.d(this.TAG, "show");
        super.showAd();
        getBuilderFieldOptional(new Function() { // from class: com.fl.saas.q2
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((InnerSpreadBuilder) obj).getSpreadLoadListener();
            }
        }).a(new B() { // from class: com.fl.saas.r2
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                this.f30642a.a((SpreadLoadListener) obj);
            }
        }, new Runnable() { // from class: com.fl.saas.s2
            @Override // java.lang.Runnable
            public final void run() {
                this.f30649b.b();
            }
        });
    }

    public void startActivityShow(Activity activity) {
        try {
            LogcatUtil.d(this.TAG, "startActivityShow");
            if (this.spreadAd == null || activity == null) {
                onAdFailed(new FLError(ErrorCodeConstant.NULL_ERROR, "展示广告失败"));
                return;
            }
            FLAdTempHelper.getInstance().setSpreadAd(this.spreadAd);
            Intent intent = new Intent(activity, (Class<?>) FLSpreadActivity.class);
            intent.putExtra("id", getAdSource().f30505g);
            activity.startActivity(intent);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup) {
        LogcatUtil.d(this.TAG, "loadAdView");
        if (viewGroup == null) {
            onAdFailed(new FLError(ErrorCodeConstant.SPREAD_VIEW_GROUP_ERROR, "container is null"));
            return;
        }
        a aVar = this.mAdViewLoadListener;
        if (aVar == null) {
            onAdFailed(new FLError(ErrorCodeConstant.RENDER_ERROR, "Ad filling Exception"));
        } else {
            aVar.a(viewGroup);
            LogcatUtil.d(this.TAG, "viewGroup AdViewLoad");
        }
    }

    public void onClickedEvent(String str) {
        super.onClickedEvent();
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewSpreadListener) {
            ((AdViewSpreadListener) eventListener).onAdClick(str);
        }
    }
}
