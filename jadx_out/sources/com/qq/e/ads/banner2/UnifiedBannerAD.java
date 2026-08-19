package com.qq.e.ads.banner2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UBVI;
import com.qq.e.comm.util.AdErrorConvertor;
import com.sigmob.sdk.mraid.C1315g;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
class UnifiedBannerAD extends LiteAbstractAD<UBVI> implements NFBI, IReward {

    /* renamed from: i, reason: collision with root package name */
    private UnifiedBannerADListener f35142i;

    /* renamed from: j, reason: collision with root package name */
    private AtomicInteger f35143j;

    /* renamed from: k, reason: collision with root package name */
    private int f35144k;

    /* renamed from: l, reason: collision with root package name */
    private LoadAdParams f35145l;

    /* renamed from: m, reason: collision with root package name */
    private UnifiedBannerView f35146m;

    /* renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f35147n;

    /* renamed from: o, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f35148o;

    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public UBVI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedBannerViewDelegate(this.f35146m, (Activity) context, str, str2, str3, this.f35147n);
    }

    public void c(int i2) {
        this.f35144k = i2;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UBVI) t2).setRefresh(i2);
        }
    }

    public void destroy() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UBVI) t2).destroy();
        } else {
            a(C1315g.f37905b);
        }
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((UBVI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f35143j.incrementAndGet();
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((UBVI) t2).fetchAd();
            } else {
                a("loadAD");
            }
        }
    }

    public void onWindowFocusChanged(boolean z2) {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UBVI) t2).onWindowFocusChanged(z2);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f35145l = loadAdParams;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UBVI) t2).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f35147n.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f35147n.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f35148o = serverSideVerificationOptions;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UBVI) t2).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, String str2, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str, str2);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(UBVI ubvi) {
        c(this.f35144k);
        setLoadAdParams(this.f35145l);
        ubvi.setServerSideVerificationOptions(this.f35148o);
        while (this.f35143j.getAndDecrement() > 0) {
            loadAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        UnifiedBannerADListener unifiedBannerADListener = this.f35142i;
        if (unifiedBannerADListener != null) {
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    private UnifiedBannerAD(UnifiedBannerView unifiedBannerView, UnifiedBannerADListener unifiedBannerADListener) {
        this.f35143j = new AtomicInteger(0);
        this.f35144k = 30;
        this.f35145l = null;
        this.f35142i = unifiedBannerADListener;
        this.f35146m = unifiedBannerView;
        this.f35147n = new ADListenerAdapter(unifiedBannerADListener);
    }
}
