package com.qq.e.ads.interstitial2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UIADI;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import com.sigmob.sdk.mraid.C1315g;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class UnifiedInterstitialAD extends LiteAbstractAD<UIADI> implements NFBI, IReward {

    /* renamed from: i, reason: collision with root package name */
    private AtomicInteger f35207i;

    /* renamed from: j, reason: collision with root package name */
    private AtomicInteger f35208j;

    /* renamed from: k, reason: collision with root package name */
    private volatile VideoOption f35209k;

    /* renamed from: l, reason: collision with root package name */
    private volatile int f35210l;

    /* renamed from: m, reason: collision with root package name */
    private volatile int f35211m;

    /* renamed from: n, reason: collision with root package name */
    private volatile LoadAdParams f35212n;

    /* renamed from: o, reason: collision with root package name */
    private UnifiedInterstitialADListener f35213o;

    /* renamed from: p, reason: collision with root package name */
    private ServerSideVerificationOptions f35214p;

    /* renamed from: q, reason: collision with root package name */
    private final ADListenerAdapter f35215q;

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener) {
        this(activity, str, unifiedInterstitialADListener, null);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public UIADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedInterstitialADDelegate((Activity) context, str, str2, str3, this.f35215q);
    }

    public void close() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).close();
        }
    }

    public void destroy() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).destroy();
        } else {
            a(C1315g.f37905b);
        }
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((UIADI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getAdPatternType() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((UIADI) t2).getAdPatternType();
        }
        a("getAdPatternType");
        return 0;
    }

    public int getVideoDuration() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((UIADI) t2).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f35207i.incrementAndGet();
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((UIADI) t2).loadAd();
            } else {
                a("loadAD");
            }
        }
    }

    public void loadFullScreenAD() {
        if (a()) {
            if (!b()) {
                this.f35208j.incrementAndGet();
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((UIADI) t2).loadFullScreenAD();
            } else {
                a("loadFullScreenAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f35212n = loadAdParams;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).setLoadAdParams(this.f35212n);
        }
    }

    public void setMaxVideoDuration(int i2) {
        this.f35211m = i2;
        if (this.f35211m > 0 && this.f35210l > this.f35211m) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).setMaxVideoDuration(i2);
        }
    }

    public void setMediaListener(UnifiedInterstitialMediaListener unifiedInterstitialMediaListener) {
        this.f35215q.setMediaListener(unifiedInterstitialMediaListener);
    }

    public void setMinVideoDuration(int i2) {
        this.f35210l = i2;
        if (this.f35211m > 0 && this.f35210l > this.f35211m) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).setMinVideoDuration(i2);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f35215q.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(com.qq.e.comm.listeners.ADRewardListener aDRewardListener) {
        this.f35215q.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f35214p = serverSideVerificationOptions;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f35209k = videoOption;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).setVideoOption(videoOption);
        }
    }

    public void show() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).show();
        } else {
            a("show");
        }
    }

    public void showFullScreenAD(Activity activity) {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).showFullScreenAD(activity);
        } else {
            a("showFullScreenAD");
        }
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map) {
        this.f35207i = new AtomicInteger(0);
        this.f35208j = new AtomicInteger(0);
        this.f35213o = unifiedInterstitialADListener;
        this.f35215q = new ADListenerAdapter(this.f35213o);
        a(activity, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(UIADI uiadi) {
        setVideoOption(this.f35209k);
        setMinVideoDuration(this.f35210l);
        setMaxVideoDuration(this.f35211m);
        setLoadAdParams(this.f35212n);
        setServerSideVerificationOptions(this.f35214p);
        while (this.f35207i.getAndDecrement() > 0) {
            loadAD();
        }
        while (this.f35208j.getAndDecrement() > 0) {
            loadFullScreenAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        UnifiedInterstitialADListener unifiedInterstitialADListener = this.f35213o;
        if (unifiedInterstitialADListener != null) {
            unifiedInterstitialADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public void show(Activity activity) {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((UIADI) t2).show(activity);
        } else {
            a("show");
        }
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map, String str2) {
        this.f35207i = new AtomicInteger(0);
        this.f35208j = new AtomicInteger(0);
        this.f35213o = unifiedInterstitialADListener;
        this.f35215q = new ADListenerAdapter(this.f35213o);
        a(activity, str, str2);
    }
}
