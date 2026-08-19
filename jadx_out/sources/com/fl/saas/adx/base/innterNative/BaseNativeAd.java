package com.fl.saas.adx.base.innterNative;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.anythink.core.common.d.i;
import com.fl.saas.B;
import com.fl.saas.C1168c1;
import com.fl.saas.C1188j;
import com.fl.saas.C1207p0;
import com.fl.saas.D0;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.R;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.FLSDK;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeClickCallbackListener;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.ActionView;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener;
import com.fl.saas.adx.base.manager.MixNativeManager;
import com.fl.saas.adx.base.widget.FingerSlidingAndTwistingView;
import com.fl.saas.adx.base.widget.FingerSlidingView;
import com.fl.saas.adx.base.widget.InclineView;
import com.fl.saas.adx.base.widget.ShakeView;
import com.fl.saas.adx.base.widget.VisibilityLayout;
import com.fl.saas.adx.base.widget.WinAdInfo;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import com.sigmob.sdk.mraid.C1315g;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public abstract class BaseNativeAd<T> implements NativeAd, MixNativeCycleDataListener {
    private boolean fC0;
    private boolean fE0;
    private boolean fP0;
    public boolean isNativeReady;
    private AdInfoMapper mAdInfoMapper;
    private NativeClickCallbackListener mClickCallBackListener;
    private WeakReference<Context> mContext;
    private EcpmMapper mEcpmMapper;
    private NativeEventListener mEventListener;

    @Nullable
    private T mNativeAd;
    private NativeAdView mNativeAdView;
    private NativeMaterial mNativeMaterial;
    private Runnable mR0;
    private D0 mReportEventListener;
    private C1168c1 mSx;
    private Timer mTimer;
    private WinAdInfoMapper mWinAdInfoMapper;
    private MixNativeManager.OnNativeReleaseListener onNativeReleaseListener;
    private NativeAd refreshNativeAD;
    private AdParams requestParams;
    public long responseTime;
    private View selfRenderView;
    private WeakReference<Activity> showActivityRef;
    private long tE1;
    private long tS1;
    private long tT0;
    private final String TAG = CommConstant.getObjTag(i.o.f2697a, this);
    private boolean isReportExposure = false;
    private boolean nativeAdViewVisibility = true;
    private boolean mCanRefresh = true;
    private boolean hasDestroy = false;
    private boolean hasRelease = false;

    /* renamed from: com.fl.saas.adx.base.innterNative.BaseNativeAd$2, reason: invalid class name */
    public class AnonymousClass2 extends TimerTask {
        public AnonymousClass2() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (BaseNativeAd.this.showActivityRef == null || BaseNativeAd.this.showActivityRef.get() == null || ((Activity) BaseNativeAd.this.showActivityRef.get()).isFinishing()) {
                BaseNativeAd.this.showActivityRef = new WeakReference(DeviceUtil.getTopActivity());
            }
            if (BaseNativeAd.this.showActivityRef == null || BaseNativeAd.this.showActivityRef.get() == null || ((Activity) BaseNativeAd.this.showActivityRef.get()).isFinishing() || !BaseNativeAd.this.nativeAdViewVisibility) {
                return;
            }
            FLSDK.loadMixNative((Context) BaseNativeAd.this.showActivityRef.get(), BaseNativeAd.this.requestParams, new NativeLoadListener() { // from class: com.fl.saas.adx.base.innterNative.BaseNativeAd.2.1

                /* renamed from: com.fl.saas.adx.base.innterNative.BaseNativeAd$2$1$1, reason: invalid class name and collision with other inner class name */
                public class C04561 implements NativeEventListener {
                    public C04561() {
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdClicked(NativeAdView nativeAdView) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.w
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                ((NativeEventListener) obj).onAdClicked(BaseNativeAd.this.mNativeAdView);
                            }
                        });
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdClose(NativeAdView nativeAdView) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.x
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                ((NativeEventListener) obj).onAdClose(BaseNativeAd.this.mNativeAdView);
                            }
                        });
                        BaseNativeAd.this.stopRefresh();
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdImpressed(NativeAdView nativeAdView) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.t
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                ((NativeEventListener) obj).onAdImpressed(BaseNativeAd.this.mNativeAdView);
                            }
                        });
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdVideoEnd(NativeAdView nativeAdView) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.u
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                ((NativeEventListener) obj).onAdVideoEnd(BaseNativeAd.this.mNativeAdView);
                            }
                        });
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdVideoProgress(NativeAdView nativeAdView, final long j2) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.s
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                NativeEventListener nativeEventListener = (NativeEventListener) obj;
                                nativeEventListener.onAdVideoProgress(BaseNativeAd.this.mNativeAdView, j2);
                            }
                        });
                    }

                    @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
                    public void onAdVideoStart(NativeAdView nativeAdView) {
                        BaseNativeAd.this.getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.v
                            @Override // com.fl.saas.B
                            public final void a(Object obj) {
                                ((NativeEventListener) obj).onAdVideoStart(BaseNativeAd.this.mNativeAdView);
                            }
                        });
                    }
                }

                @Override // com.fl.saas.adx.base.interfaces.AdViewListener
                public void onAdFailed(FLError fLError) {
                }

                @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
                public void onNativeAdLoaded(NativeAd nativeAd) {
                    View adMediaView;
                    if (nativeAd == null || !nativeAd.isNativeExpress()) {
                        return;
                    }
                    if (BaseNativeAd.this.refreshNativeAD != null) {
                        BaseNativeAd.this.refreshNativeAD.release();
                    }
                    BaseNativeAd.this.refreshNativeAD = nativeAd;
                    nativeAd.setCanRefresh(false);
                    nativeAd.setNativeEventListener(new C04561());
                    if (nativeAd.getAdMaterial() == null || nativeAd.getAdMaterial().getAdMediaView() == null || (adMediaView = nativeAd.getAdMaterial().getAdMediaView()) == null || BaseNativeAd.this.mNativeAdView == null) {
                        return;
                    }
                    BaseNativeAd.this.mNativeAdView.removeAllViews();
                    BaseNativeAd.this.mNativeAdView.addView(adMediaView, ViewHelper.getMatchParent());
                    nativeAd.renderAdContainer(BaseNativeAd.this.mNativeAdView, null);
                    NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
                    nativePrepareInfo.setActivity((Activity) BaseNativeAd.this.showActivityRef.get());
                    nativeAd.prepare(nativePrepareInfo);
                    BaseNativeAd.this.pC0();
                }
            });
        }
    }

    public interface AdInfoMapper {
        AdInfo getAdInfo();

        C1188j getSource();
    }

    public interface EcpmMapper {
        int getECPM();
    }

    public interface WinAdInfoMapper {
        WinAdInfo getAdInfo();
    }

    public BaseNativeAd(@NonNull Context context, @NonNull T t2) {
        try {
            this.isNativeReady = true;
            this.responseTime = System.currentTimeMillis();
            this.mNativeAd = t2;
            this.mContext = new WeakReference<>(context);
            init(this.mNativeAd);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void checkDataUpdate() {
        try {
            NativeAdView nativeAdView = this.mNativeAdView;
            if (nativeAdView != null) {
                nativeAdView.setOnViewWindowChangedListener(new VisibilityLayout.OnViewWindowChangedListener() { // from class: com.fl.saas.adx.base.innterNative.BaseNativeAd.1
                    @Override // com.fl.saas.adx.base.widget.VisibilityLayout.OnViewWindowChangedListener
                    public void onDetachedFromWindow() {
                        BaseNativeAd.this.stopRefresh();
                        BaseNativeAd.this.pC0();
                    }

                    @Override // com.fl.saas.adx.base.widget.VisibilityLayout.OnViewWindowChangedListener
                    public void onViewWindowVisibility(boolean z2) {
                        BaseNativeAd.this.nativeAdViewVisibility = z2;
                        if (z2) {
                            BaseNativeAd.this.pAcRs();
                        } else {
                            BaseNativeAd.this.pAcP();
                        }
                    }
                });
            }
            checkRefreshAd();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void checkRefreshAd() {
        AdInfoMapper adInfoMapper;
        if (this.mTimer == null && isNativeExpress() && this.mCanRefresh && (adInfoMapper = this.mAdInfoMapper) != null && adInfoMapper.getSource() != null) {
            C1188j source = this.mAdInfoMapper.getSource();
            if (source.f30500e0 != 1 || source.f30503f0 <= 0) {
                return;
            }
            Timer timer = new Timer();
            this.mTimer = timer;
            long j2 = 1000 * source.f30503f0;
            timer.schedule(new AnonymousClass2(), j2, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eAcT() {
        try {
            if (!this.fC0 && !this.fE0) {
                this.fE0 = true;
                this.mR0 = null;
                eSx();
                pJ0();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void eSx() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            c1168c1.d();
        }
    }

    private C1168c1 gSx() {
        if (this.mSx == null) {
            this.mSx = new C1168c1();
        }
        return this.mSx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1207p0 getEventListener() {
        return C1207p0.b(this.mEventListener);
    }

    private C1207p0 getReportEventListener() {
        return C1207p0.b(this.mReportEventListener);
    }

    public static /* synthetic */ void h(InclineView.InclineListener inclineListener, ActionView.Type type, View view, int i2, int i3, int i4) {
        if (inclineListener != null) {
            inclineListener.onIncline(i2, i3, i4);
        }
        if (type != ActionView.Type.Spread) {
            ViewHelper.removeParent(view);
        }
    }

    public static /* synthetic */ NativeMaterial i(final BaseNativeAd baseNativeAd) {
        return (NativeMaterial) baseNativeAd.getNativeAdOpt().a(new Function() { // from class: com.fl.saas.adx.base.innterNative.i
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return this.f30261a.createNativeMaterial(obj);
            }
        }).c(null);
    }

    public static /* synthetic */ void j(ShakeView.ShakeListener shakeListener, ActionView.Type type, View view, int i2, int i3, int i4) {
        if (shakeListener != null) {
            shakeListener.onShake(i2, i3, i4);
        }
        if (type != ActionView.Type.Spread) {
            ViewHelper.removeParent(view);
        }
    }

    private void pAcD() {
        Runnable runnable;
        if (this.fC0 || this.fE0 || this.fP0 || (runnable = this.mR0) == null) {
            return;
        }
        long j2 = this.tT0 - this.tE1;
        if (j2 <= 0) {
            eAcT();
        } else {
            DeviceUtil.removePostUI(runnable);
            DeviceUtil.postUIDelayed(j2, this.mR0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pAcP() {
        Runnable runnable;
        if (this.fC0 || this.fE0 || this.fP0 || (runnable = this.mR0) == null) {
            return;
        }
        this.fP0 = true;
        DeviceUtil.removePostUI(runnable);
        this.tE1 += System.currentTimeMillis() - this.tS1;
        eSx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pAcRs() {
        if (this.fC0 || this.fE0 || this.mR0 == null || !this.fP0) {
            return;
        }
        this.fP0 = false;
        this.tS1 = System.currentTimeMillis();
        sSx();
        pAcD();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pC0() {
        this.tT0 = 0L;
        this.tE1 = 0L;
        this.fP0 = false;
        Runnable runnable = this.mR0;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.mR0 = null;
        }
        eSx();
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            c1168c1.c();
            this.mSx = null;
        }
    }

    private void pS0() {
        C1188j source;
        AdInfoMapper adInfoMapper = this.mAdInfoMapper;
        if (adInfoMapper == null || adInfoMapper.getSource() == null || (source = this.mAdInfoMapper.getSource()) == null || !source.b() || this.fC0 || this.fE0) {
            return;
        }
        pC0();
        sSx();
        this.tT0 = source.B2;
        this.tE1 = 0L;
        this.tS1 = System.currentTimeMillis();
        this.fP0 = false;
        this.mR0 = new Runnable() { // from class: com.fl.saas.adx.base.innterNative.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f30266b.eAcT();
            }
        };
        if (this.nativeAdViewVisibility) {
            pAcD();
        } else {
            this.fP0 = true;
            eSx();
        }
    }

    private void sSx() {
        C1188j source;
        AdInfoMapper adInfoMapper = this.mAdInfoMapper;
        if (adInfoMapper == null || (source = adInfoMapper.getSource()) == null || !source.t()) {
            return;
        }
        gSx().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRefresh() {
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public void biddingResultUpload(boolean z2, int i2, int i3) {
        LogcatUtil.d(this.TAG, "biddingResultUpload");
        try {
            if (this instanceof BiddingResult) {
                ((BiddingResult) this).biddingResult(z2, i2, i3, 0);
            }
        } catch (Throwable th) {
            LogcatUtil.d(this.TAG, "biddingResultUploadError:" + th.getMessage());
            LogcatUtil.debug(th);
        }
    }

    public void bindContainer(ViewGroup viewGroup) {
        if (this.mNativeAdView == null) {
            onAdFailedEvent(FLError.create(ErrorCodeConstant.RENDER_ERROR, "NativeAdView is null"));
            return;
        }
        LogcatUtil.d(this.TAG, "bindContainer");
        ViewGroup.LayoutParams layoutParams = this.selfRenderView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = ViewHelper.getMatchParent();
        }
        this.mNativeAdView.removeAllViews();
        this.mNativeAdView.addView(viewGroup, layoutParams);
        ViewHelper.removeParent(this.selfRenderView);
        viewGroup.addView(this.selfRenderView, ViewHelper.getMatchParent());
    }

    public abstract NativeMaterial createNativeMaterial(@NonNull T t2);

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void destroy() {
        if (this.hasDestroy) {
            return;
        }
        this.hasDestroy = true;
        LogcatUtil.d(this.TAG, C1315g.f37905b);
        NativeAd nativeAd = this.refreshNativeAD;
        if (nativeAd != null) {
            nativeAd.release();
            this.refreshNativeAD = null;
        }
        NativeAdView nativeAdView = this.mNativeAdView;
        if (nativeAdView != null) {
            nativeAdView.unOnVisibilityChanged();
            this.mNativeAdView.unOnVisibilityRatioChanged();
        }
        stopRefresh();
        NativeAdView nativeAdView2 = this.mNativeAdView;
        if (nativeAdView2 != null && this.mCanRefresh) {
            nativeAdView2.removeAllViews();
            ViewHelper.removeParent(this.mNativeAdView);
            this.mNativeAdView.detachedView();
        }
        this.mEventListener = null;
        this.mClickCallBackListener = null;
        pC0();
    }

    public float gVx() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.e();
        }
        return 0.0f;
    }

    public float gVy() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.f();
        }
        return 0.0f;
    }

    public float gVz() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.g();
        }
        return 0.0f;
    }

    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public AdInfo getAdInfo() {
        AdInfoMapper adInfoMapper = this.mAdInfoMapper;
        if (adInfoMapper != null) {
            return adInfoMapper.getAdInfo();
        }
        return null;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public NativeMaterial getAdMaterial() {
        NativeMaterial nativeMaterial = (NativeMaterial) C1207p0.b(this.mNativeMaterial).b(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.innterNative.r
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                return BaseNativeAd.i(this.f30273a);
            }
        });
        this.mNativeMaterial = nativeMaterial;
        return nativeMaterial;
    }

    public View getAreaShakesView() {
        View viewInflate = ViewHelper.inflate(getContext(), R.layout.fl_adx_view_area_shake_spread);
        FLImageLoader.getInstance(getContext()).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage((ImageView) viewInflate.findViewById(R.id.iv_bg), CommConstant.ImageUrl.CLICK_AREA_BG);
        return viewInflate;
    }

    public Context getContext() {
        WeakReference<Context> weakReference;
        Activity topActivity = null;
        try {
            WeakReference<Activity> weakReference2 = this.showActivityRef;
            if (weakReference2 != null && weakReference2.get() != null && !this.showActivityRef.get().isFinishing()) {
                topActivity = this.showActivityRef.get();
            }
            if (topActivity == null) {
                topActivity = DeviceUtil.getTopActivity();
            }
            return (topActivity != null || (weakReference = this.mContext) == null) ? topActivity : weakReference.get();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return topActivity;
        }
    }

    @Override // com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener
    public NativeAd getCycleNativeAd() {
        return null;
    }

    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public int getECPM() {
        return ((Integer) C1207p0.b(this.mEcpmMapper).a(new Function() { // from class: com.fl.saas.adx.base.innterNative.n
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((BaseNativeAd.EcpmMapper) obj).getECPM());
            }
        }).c(0)).intValue();
    }

    public View getInterstitalShakesView() {
        return ViewHelper.inflate(getContext(), R.layout.fl_adx_view_shake_interstital);
    }

    @Nullable
    public T getNativeAd() {
        return this.mNativeAd;
    }

    public C1207p0 getNativeAdOpt() {
        return C1207p0.b(this.mNativeAd);
    }

    public NativeAdView getNativeAdView() {
        return this.mNativeAdView;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public String getReqId() {
        AdInfoMapper adInfoMapper = this.mAdInfoMapper;
        return (adInfoMapper == null || adInfoMapper.getSource() == null) ? "" : this.mAdInfoMapper.getSource().f30505g;
    }

    public View getSelfRenderView() {
        return this.selfRenderView;
    }

    public View getShakeTipsView() {
        return ViewHelper.inflate(getContext(), R.layout.fl_adx_view_shake_template);
    }

    public View getSpreadInlineView() {
        return ViewHelper.inflate(getContext(), R.layout.fl_adx_view_incline_spread);
    }

    public View getSpreadShakesView(boolean z2) {
        Context context;
        int i2;
        try {
            if (z2) {
                context = getContext();
                i2 = R.layout.fl_adx_view_shake_spread;
            } else {
                context = getContext();
                i2 = R.layout.fl_adx_view_shake_type_spread;
            }
            return ViewHelper.inflate(context, i2);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    public View getSpreadSlidingTwistingView(int i2, boolean z2, int i3, FingerSlidingAndTwistingView.SlidingListener slidingListener) {
        FingerSlidingAndTwistingView fingerSlidingAndTwistingView = new FingerSlidingAndTwistingView(getContext());
        fingerSlidingAndTwistingView.setScale_type(i2);
        fingerSlidingAndTwistingView.setSlidingListener(i3, slidingListener);
        fingerSlidingAndTwistingView.createView(z2);
        return fingerSlidingAndTwistingView;
    }

    public View getSpreadSlidingView(int i2, int i3, FingerSlidingView.SlidingListener slidingListener) {
        FingerSlidingView fingerSlidingView = new FingerSlidingView(getContext());
        fingerSlidingView.setScale_type(i2);
        fingerSlidingView.setSlidingListener(i3, slidingListener);
        fingerSlidingView.createView();
        return fingerSlidingView;
    }

    public View getTemplateShakesView() {
        return ViewHelper.inflate(getContext(), R.layout.fl_adx_view_shake_template);
    }

    public View getTipsView(int i2) {
        float f2;
        TextView textView = new TextView(getContext());
        int iDip2px = DeviceUtil.dip2px(280.0f);
        int iDip2px2 = DeviceUtil.dip2px(80.0f);
        if (i2 != 1) {
            if (i2 == 2) {
                iDip2px = DeviceUtil.dip2px(320.0f);
                f2 = 100.0f;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDip2px, iDip2px2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = DeviceUtil.dip2px(30.0f);
            textView.setTextSize(16.0f);
            textView.setLayoutParams(layoutParams);
            textView.setGravity(17);
            textView.setBackgroundResource(R.drawable.fl_adx_shake_bg_template);
            textView.setText("点击跳转详情页面或第三方应用>");
            textView.setTextColor(Color.parseColor("#ffffff"));
            return textView;
        }
        iDip2px = DeviceUtil.dip2px(300.0f);
        f2 = 90.0f;
        iDip2px2 = DeviceUtil.dip2px(f2);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iDip2px, iDip2px2);
        layoutParams2.gravity = 81;
        layoutParams2.bottomMargin = DeviceUtil.dip2px(30.0f);
        textView.setTextSize(16.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setBackgroundResource(R.drawable.fl_adx_shake_bg_template);
        textView.setText("点击跳转详情页面或第三方应用>");
        textView.setTextColor(Color.parseColor("#ffffff"));
        return textView;
    }

    public WinAdInfo getWinAdInfo() {
        WinAdInfoMapper winAdInfoMapper = this.mWinAdInfoMapper;
        if (winAdInfoMapper != null) {
            return winAdInfoMapper.getAdInfo();
        }
        return null;
    }

    public abstract void init(@NonNull T t2);

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isReady() {
        try {
            AdInfoMapper adInfoMapper = this.mAdInfoMapper;
            if (adInfoMapper != null && adInfoMapper.getSource() != null) {
                return this.isNativeReady && ((((System.currentTimeMillis() - this.responseTime) / 1000) > ((long) this.mAdInfoMapper.getSource().f30418D1) ? 1 : (((System.currentTimeMillis() - this.responseTime) / 1000) == ((long) this.mAdInfoMapper.getSource().f30418D1) ? 0 : -1)) < 0);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return false;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public boolean isShakeType() {
        return false;
    }

    public void listenInclineView(final View view, boolean z2, final ActionView.Type type, int i2, final InclineView.InclineListener inclineListener) {
        InclineView inclineView;
        if (view == null || (inclineView = (InclineView) view.findViewById(R.id.yd_incline_view)) == null) {
            return;
        }
        inclineView.setCallback(z2);
        inclineView.setInclineListener(i2, new InclineView.InclineListener() { // from class: com.fl.saas.adx.base.innterNative.g
            @Override // com.fl.saas.adx.base.widget.InclineView.InclineListener
            public final void onIncline(int i3, int i4, int i5) {
                BaseNativeAd.h(inclineListener, type, view, i3, i4, i5);
            }
        });
    }

    public void listenShakeView(final View view, boolean z2, final ActionView.Type type, int i2, final ShakeView.ShakeListener shakeListener) {
        ShakeView shakeView;
        if (view == null || (shakeView = (ShakeView) view.findViewById(R.id.yd_shake_view)) == null) {
            return;
        }
        shakeView.setCallback(z2);
        shakeView.setShakeListener(i2, new ShakeView.ShakeListener() { // from class: com.fl.saas.adx.base.innterNative.p
            @Override // com.fl.saas.adx.base.widget.ShakeView.ShakeListener
            public final void onShake(int i3, int i4, int i5) {
                BaseNativeAd.j(shakeListener, type, view, i3, i4, i5);
            }
        });
    }

    public void onAdClickedCallBackEvent(String str) {
        LogcatUtil.d(this.TAG, "onAdClickedCallBackEvent");
        getReportEventListener().a((B) new e());
        NativeClickCallbackListener nativeClickCallbackListener = this.mClickCallBackListener;
        if (nativeClickCallbackListener != null) {
            nativeClickCallbackListener.onAdClicked(str);
        }
    }

    public void onAdClickedEvent() {
        LogcatUtil.d(this.TAG, "onAdClickedEvent");
        getReportEventListener().a((B) new e());
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.f
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeEventListener) obj).onAdClicked(this.f30256a.mNativeAdView);
            }
        });
        this.fC0 = true;
        pC0();
    }

    public void onAdCloseEvent() {
        LogcatUtil.d(this.TAG, "onAdCloseEvent");
        stopRefresh();
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.b
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeEventListener) obj).onAdClose(this.f30254a.mNativeAdView);
            }
        });
    }

    public void onAdFailedEvent(final FLError fLError) {
        LogcatUtil.d(this.TAG, "onAdFailed:" + fLError);
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.l
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                NativeEventListener nativeEventListener = (NativeEventListener) obj;
                nativeEventListener.onAdFailed(this.f30264a.mNativeAdView, fLError);
            }
        });
    }

    public void onAdImpressedEvent() {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onAdImpressedEvent");
        sb.append(this.isReportExposure);
        sb.append(getEventListener() == null);
        LogcatUtil.d(str, sb.toString());
        checkDataUpdate();
        if (this.isReportExposure) {
            return;
        }
        this.isReportExposure = true;
        getReportEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.c
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((D0) obj).onShowEvent();
            }
        });
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.d
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeEventListener) obj).onAdImpressed(this.f30255a.mNativeAdView);
            }
        });
        pS0();
    }

    public void onAdVideoEndEvent() {
        LogcatUtil.d(this.TAG, "onAdVideoEndEvent");
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.o
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeEventListener) obj).onAdVideoEnd(this.f30267a.mNativeAdView);
            }
        });
    }

    public void onAdVideoProgress(final long j2) {
        LogcatUtil.d(this.TAG, "onAdVideoProgress");
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.q
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                NativeEventListener nativeEventListener = (NativeEventListener) obj;
                nativeEventListener.onAdVideoProgress(this.f30271a.mNativeAdView, j2);
            }
        });
    }

    public void onAdVideoStartEvent() {
        LogcatUtil.d(this.TAG, "onAdVideoStartEvent");
        getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.a
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeEventListener) obj).onAdVideoStart(this.f30253a.mNativeAdView);
            }
        });
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void onDetachedVideo() {
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void onPause() {
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void onResume() {
    }

    public void pJ0() {
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void prepare(final NativePrepareInfo nativePrepareInfo) {
        FLError fLErrorCreate;
        try {
            if (this.mNativeAdView == null) {
                fLErrorCreate = FLError.create(ErrorCodeConstant.RENDER_ERROR, "Please execute the renderAdContainer() method first.");
            } else {
                if (nativePrepareInfo != null) {
                    if (nativePrepareInfo.getActivity() != null) {
                        this.showActivityRef = new WeakReference<>(nativePrepareInfo.getActivity());
                    }
                    getReportEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.j
                        @Override // com.fl.saas.B
                        public final void a(Object obj) {
                            ((D0) obj).reportRequestShow();
                        }
                    });
                    getNativeAdOpt().a(new B() { // from class: com.fl.saas.adx.base.innterNative.k
                        @Override // com.fl.saas.B
                        public final void a(Object obj) {
                            this.f30262a.render(obj, nativePrepareInfo);
                        }
                    });
                    return;
                }
                fLErrorCreate = FLError.create(ErrorCodeConstant.CONTEXT_ERROR, "prepareInfo is null");
            }
            onAdFailedEvent(fLErrorCreate);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            onAdFailedEvent(FLError.create(ErrorCodeConstant.RENDER_ERROR, th.getMessage()));
        }
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void release() {
        if (this.hasRelease) {
            return;
        }
        this.hasRelease = true;
        destroy();
        LogcatUtil.d(this.TAG, "release");
        MixNativeManager.OnNativeReleaseListener onNativeReleaseListener = this.onNativeReleaseListener;
        if (onNativeReleaseListener != null) {
            onNativeReleaseListener.release();
            this.onNativeReleaseListener = null;
        }
    }

    public abstract void render(T t2, NativePrepareInfo nativePrepareInfo);

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void renderAdContainer(NativeAdView nativeAdView, View view) {
        this.mNativeAdView = nativeAdView;
        this.selfRenderView = view;
    }

    public void setAdInfoMapper(AdInfoMapper adInfoMapper) {
        this.mAdInfoMapper = adInfoMapper;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void setCanRefresh(boolean z2) {
        this.mCanRefresh = z2;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void setClickCallBackListener(NativeClickCallbackListener nativeClickCallbackListener) {
        this.mClickCallBackListener = nativeClickCallbackListener;
    }

    @Override // com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener
    public void setCycleNativeAd(List<NativeAd> list, int i2) {
    }

    public void setEcpmMapper(EcpmMapper ecpmMapper) {
        this.mEcpmMapper = ecpmMapper;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void setNativeAdParams(AdParams adParams) {
        this.requestParams = adParams;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.mEventListener = nativeEventListener;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAd
    public void setOnNativeReleaseListener(MixNativeManager.OnNativeReleaseListener onNativeReleaseListener) {
        this.onNativeReleaseListener = onNativeReleaseListener;
    }

    public void setReportEventListener(D0 d02) {
        this.mReportEventListener = d02;
    }

    public void setWinAdInfoMapper(WinAdInfoMapper winAdInfoMapper) {
        this.mWinAdInfoMapper = winAdInfoMapper;
    }

    public void onAdClickedEvent(int i2) {
        LogcatUtil.d(this.TAG, "onAdClickedEvent");
        getReportEventListener().a((B) new e());
        if (i2 == 1) {
            getEventListener().a(new B() { // from class: com.fl.saas.adx.base.innterNative.h
                @Override // com.fl.saas.B
                public final void a(Object obj) {
                    ((NativeEventListener) obj).onAdClicked(this.f30260a.mNativeAdView);
                }
            });
        }
        this.fC0 = true;
        pC0();
    }
}
