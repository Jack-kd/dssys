package com.fl.saas;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import androidx.arch.core.util.Function;
import com.byazt.pu.TTDownloadField;
import com.fl.saas.adx.base.base.builder.InnerInterstitialBuilder;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewInterstitialListener;
import com.fl.saas.adx.base.interfaces.AdViewListener;
import com.fl.saas.adx.base.widget.CountDownProgressView;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import java.lang.ref.WeakReference;

/* renamed from: com.fl.saas.e, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1173e extends AbstractC1203o {
    private static final String TAG = CommConstant.getClassTag(AbstractC1173e.class);
    private WeakReference<Activity> activityRef;
    private CountDownProgressView countDownTextView;
    private boolean hasCloseInterstitialAd;
    private boolean hasReturnCloseEvent;
    private boolean haveShowCloseView;
    private boolean isIntersReady;
    private long responseTime;
    private String showActivityName;
    private long showTime;
    private WeakReference<Activity> topActivityRef;
    private boolean canCallback = true;
    private boolean canCallbackClose = true;
    private boolean hasBackDisplay = false;

    private boolean a(String str, String str2) {
        WeakReference<Activity> weakReference;
        if ((this.showActivityName != null && (weakReference = this.topActivityRef) != null && weakReference.get() != null && this.showActivityName.equals(this.topActivityRef.get().getComponentName().getClassName())) || str == null || str2 == null || str.equals(str2)) {
            return true;
        }
        return str.substring(str.lastIndexOf(46) + 1).equals(str2.substring(str2.lastIndexOf(46) + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            CountDownProgressView countDownProgressView = this.countDownTextView;
            if (countDownProgressView != null) {
                if (countDownProgressView.getVisibilityState() == 0) {
                    closeInterstitialAd(this.topActivityRef.get());
                } else {
                    this.countDownTextView.setOnVisibilityChanged(new B() { // from class: com.fl.saas.Z1
                        @Override // com.fl.saas.B
                        public final void a(Object obj) {
                            this.f30113a.a((Integer) obj);
                        }
                    });
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        WeakReference<Activity> weakReference;
        if (this.showTime <= 0 || System.currentTimeMillis() - this.showTime < 500 || (weakReference = this.topActivityRef) == null) {
            return;
        }
        try {
            Activity activity = weakReference.get();
            String str = TAG;
            LogcatUtil.d(str, "removeViewActivity:" + activity);
            if (this.countDownTextView != null && activity != null && !activity.isFinishing()) {
                activity.getWindowManager().removeViewImmediate(this.countDownTextView);
            }
            if (selfCloseInterstitialAd()) {
                return;
            }
            String strD = d();
            LogcatUtil.d(str, "removeViewTopActivityName:" + strD);
            LogcatUtil.d(str, "removeViewShowActivityName:" + this.showActivityName);
            if (a(strD, this.showActivityName)) {
                View topView = ViewHelper.getTopView();
                if (topView != null && activity != null && !activity.isFinishing()) {
                    activity.getWindowManager().removeView(topView);
                }
            } else {
                Activity topActivity = DeviceUtil.getTopActivity();
                if (topActivity != null) {
                    activity = topActivity;
                }
                if (activity != null && !this.showActivityName.equals(activity.getComponentName().getClassName()) && !activity.isFinishing()) {
                    activity.finish();
                }
            }
            onClosedEvent();
            this.countDownTextView = null;
            this.topActivityRef = null;
            this.activityRef = null;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            this.countDownTextView = null;
            this.topActivityRef = null;
            this.activityRef = null;
        }
    }

    private String d() {
        ComponentName componentName;
        try {
            WeakReference<Activity> weakReference = this.activityRef;
            return (weakReference == null || weakReference.get().isFinishing() || (componentName = ((ActivityManager) this.activityRef.get().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity) == null) ? "" : componentName.getClassName();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        closeInterstitialAd(this.topActivityRef.get());
    }

    public void checkReRequest(Activity activity) {
        if (activity == null) {
            return;
        }
        if (changeReRequestCount()) {
            reRequest();
            closeInterstitialAd(activity);
        } else if (getAdSource().m()) {
            closeInterstitialAd(activity);
        }
    }

    public void closeInterstitialAd(Activity activity) {
        if (activity == null || this.hasCloseInterstitialAd) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            c();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.fl.saas.Y1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30108b.c();
                }
            });
        }
    }

    public void closeTopCountDownView() {
        this.hasCloseInterstitialAd = true;
        LogcatUtil.d(TAG, "closeTopCountDownView");
        try {
            WeakReference<Activity> weakReference = this.topActivityRef;
            if (weakReference != null) {
                Activity activity = weakReference.get();
                if (this.countDownTextView != null && activity != null && !activity.isFinishing()) {
                    activity.getWindowManager().removeView(this.countDownTextView);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        this.countDownTextView = null;
        this.topActivityRef = null;
        this.activityRef = null;
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        this.activityRef = null;
        this.topActivityRef = null;
        this.countDownTextView = null;
    }

    public final boolean isIntersReady() {
        try {
            return this.isIntersReady && ((((System.currentTimeMillis() - this.responseTime) / 1000) > ((long) getAdSource().f30418D1) ? 1 : (((System.currentTimeMillis() - this.responseTime) / 1000) == ((long) getAdSource().f30418D1) ? 0 : -1)) < 0);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onClickedEvent() {
        super.onClickedEvent();
        this.haveShowCloseView = true;
        if (this.canCallback) {
            AdViewListener eventListener = getEventListener();
            if (eventListener instanceof AdViewInterstitialListener) {
                ((AdViewInterstitialListener) eventListener).onAdClick("");
            }
        }
    }

    public void onClosedEvent() {
        this.hasCloseInterstitialAd = true;
        if (this.hasReturnCloseEvent) {
            return;
        }
        this.hasReturnCloseEvent = true;
        closeTopCountDownView();
        if (this.canCallbackClose) {
            AdViewListener eventListener = getEventListener();
            if (eventListener instanceof AdViewInterstitialListener) {
                ((AdViewInterstitialListener) eventListener).onAdClosed();
            }
        }
    }

    @Override // com.fl.saas.AbstractC1200n
    public void onLoadedEvent() {
        this.isIntersReady = true;
        this.responseTime = System.currentTimeMillis();
        super.onLoadedEvent();
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.D0
    public void onShowEvent() {
        try {
            this.showTime = System.currentTimeMillis();
            this.isIntersReady = false;
            super.onShowEvent();
            if (this.canCallback && !this.hasBackDisplay) {
                this.hasBackDisplay = true;
                AdViewListener eventListener = getEventListener();
                if (eventListener instanceof AdViewInterstitialListener) {
                    ((AdViewInterstitialListener) eventListener).onAdDisplay();
                }
            }
            a(false);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.fl.saas.X1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30104b.f();
                }
            }, 500L);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public boolean requiresActivityDetection() {
        return true;
    }

    public abstract boolean selfCloseInterstitialAd();

    public void setCanCallBack(boolean z2) {
        this.canCallback = z2;
    }

    public void setCanCallBackClose(boolean z2) {
        this.canCallbackClose = z2;
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void showAd() {
        super.showAd();
        if (isReRequest()) {
            showInterstitialAd(null);
            return;
        }
        AdViewListener eventListener = getEventListener();
        if (eventListener instanceof AdViewInterstitialListener) {
            ((AdViewInterstitialListener) eventListener).onAdReady();
        }
    }

    public void showAutoCloseView(Activity activity) {
        if (activity == null || activity.isFinishing() || this.haveShowCloseView) {
            return;
        }
        try {
            this.haveShowCloseView = true;
            int iF = getAdSource().f();
            boolean z2 = iF > 0;
            boolean zU = getAdSource().u();
            if (z2 || zU) {
                CountDownProgressView countDownProgressView = new CountDownProgressView(activity);
                this.countDownTextView = countDownProgressView;
                countDownProgressView.setCount(iF);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(DeviceUtil.dip2px(20.0f));
                gradientDrawable.setColor(Color.parseColor("#60000000"));
                gradientDrawable.setStroke(DeviceUtil.dip2px(2.0f), Color.parseColor("#D9D9D9"));
                this.countDownTextView.setBackground(gradientDrawable);
                this.countDownTextView.setElevation(20.0f);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 8;
                layoutParams.format = 1;
                layoutParams.width = DeviceUtil.dip2px(160.0f);
                layoutParams.height = DeviceUtil.dip2px(32.0f);
                layoutParams.gravity = 81;
                layoutParams.y = DeviceUtil.dip2px(80.0f);
                activity.getWindowManager().addView(this.countDownTextView, layoutParams);
                if (!z2) {
                    this.countDownTextView.setText("    点击关闭广告    ");
                    this.countDownTextView.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.W1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f30098b.b(view);
                        }
                    });
                    return;
                }
                if (zU) {
                    this.countDownTextView.setOnTick(new Function() { // from class: com.fl.saas.g2
                        @Override // androidx.arch.core.util.Function
                        public final Object apply(Object obj) {
                            return AbstractC1173e.b((Integer) obj);
                        }
                    });
                    this.countDownTextView.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.T1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f30063b.a(view);
                        }
                    });
                } else {
                    this.countDownTextView.setOnTick(new Function() { // from class: com.fl.saas.U1
                        @Override // androidx.arch.core.util.Function
                        public final Object apply(Object obj) {
                            return AbstractC1173e.c((Integer) obj);
                        }
                    });
                }
                this.countDownTextView.setFinish(new Runnable() { // from class: com.fl.saas.V1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f30086b.b();
                    }
                });
                this.countDownTextView.start();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public abstract void showInterstitial(Activity activity);

    public final void showInterstitialAd(Activity activity) {
        int iIntValue = ((Integer) getBuilderFieldOptional(new Function() { // from class: com.fl.saas.b2
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((InnerInterstitialBuilder) obj).getAutoCloseCountDown());
            }
        }).c(0)).intValue();
        if (iIntValue > 0 && getAdSource().f() == 0) {
            getAdSource().b(iIntValue);
        }
        this.isIntersReady = false;
        reportRequestShow();
        C1207p0.b(activity).a(new InterfaceC1231x0() { // from class: com.fl.saas.c2
            @Override // com.fl.saas.InterfaceC1231x0
            public final boolean a(Object obj) {
                return AbstractC1173e.b((Activity) obj);
            }
        }).a(new InterfaceC1164b1() { // from class: com.fl.saas.d2
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                return this.f30365a.getActivityValid();
            }
        }).a(new B() { // from class: com.fl.saas.e2
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                this.f30376a.c((Activity) obj);
            }
        }, new Runnable() { // from class: com.fl.saas.f2
            @Override // java.lang.Runnable
            public final void run() {
                this.f30390b.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) {
        if (num.intValue() == 0) {
            CountDownProgressView countDownProgressView = this.countDownTextView;
            if (countDownProgressView != null) {
                countDownProgressView.unOnVisibilityChanged();
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.fl.saas.a2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30116b.e();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String b(Integer num) {
        return "点击关闭广告  " + num + "S";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String c(Integer num) {
        return num + "S后自动关闭";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (this.hasCloseInterstitialAd) {
            return;
        }
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        WeakReference<Activity> weakReference = this.activityRef;
        if (weakReference != null && weakReference.get() != null && !this.activityRef.get().isFinishing()) {
            showInterstitial(this.activityRef.get());
        } else if (requiresActivityDetection()) {
            onAdFailed(FLError.create(ErrorCodeConstant.CONTEXT_ERROR, "request show but Activity is null or invalid"));
        } else {
            showInterstitial(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (requiresActivityDetection()) {
            onAdFailed(FLError.create(ErrorCodeConstant.CONTEXT_ERROR, "request show but Activity is null or invalid"));
        } else {
            showInterstitial(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        this.activityRef = new WeakReference<>(activity);
        try {
            this.showActivityName = activity.getComponentName().getClassName();
            LogcatUtil.d(TAG, "showActivityName:" + this.showActivityName);
            DeviceUtil.postUIDelayed(50L, new Runnable() { // from class: com.fl.saas.S1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30059b.g();
                }
            });
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void a(boolean z2) {
        WeakReference<Activity> weakReference;
        try {
            Activity topActivity = DeviceUtil.getTopActivity();
            if (topActivity == null && (weakReference = this.activityRef) != null) {
                topActivity = weakReference.get();
            }
            if (topActivity == null || topActivity.isFinishing()) {
                return;
            }
            this.topActivityRef = new WeakReference<>(topActivity);
            LogcatUtil.d(TAG, "addAutoCloseViewTopActivity:" + topActivity);
            if (z2) {
                showAutoCloseView(topActivity);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(Activity activity) {
        return !activity.isFinishing();
    }
}
