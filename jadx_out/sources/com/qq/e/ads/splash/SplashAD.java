package com.qq.e.ads.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NSPVI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.HashMap;

/* loaded from: classes4.dex */
public final class SplashAD extends LiteAbstractAD<NSPVI> implements IReward {

    /* renamed from: i, reason: collision with root package name */
    private volatile ViewGroup f35276i;

    /* renamed from: j, reason: collision with root package name */
    private volatile SplashADListener f35277j;

    /* renamed from: k, reason: collision with root package name */
    private volatile ADRewardListener f35278k;

    /* renamed from: l, reason: collision with root package name */
    private volatile LoadAdParams f35279l;

    /* renamed from: m, reason: collision with root package name */
    private volatile boolean f35280m;

    /* renamed from: n, reason: collision with root package name */
    private volatile boolean f35281n;

    /* renamed from: o, reason: collision with root package name */
    private volatile boolean f35282o;

    /* renamed from: p, reason: collision with root package name */
    private volatile int f35283p;

    /* renamed from: q, reason: collision with root package name */
    private volatile byte[] f35284q;

    /* renamed from: r, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f35285r;

    /* renamed from: s, reason: collision with root package name */
    private int f35286s;

    public class ADListenerAdapter implements ADListener {
        private ADListenerAdapter() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (SplashAD.this.f35277j == null) {
                return;
            }
            int type = aDEvent.getType();
            if (type == 112) {
                Long l2 = (Long) aDEvent.getParam(Long.class);
                if (l2 != null) {
                    SplashAD.this.f35277j.onADTick(l2.longValue());
                    return;
                }
                return;
            }
            switch (type) {
                case 100:
                    Long l3 = (Long) aDEvent.getParam(Long.class);
                    if (l3 != null) {
                        SplashAD.this.f35277j.onADLoaded(l3.longValue());
                        break;
                    }
                    break;
                case 101:
                    SplashAD.this.f35277j.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                    break;
                case 102:
                    SplashAD.this.f35277j.onADPresent();
                    break;
                case 103:
                    SplashAD.this.f35277j.onADExposure();
                    break;
                case 104:
                    if (SplashAD.this.f35278k != null) {
                        HashMap map = new HashMap();
                        String str = (String) aDEvent.getParam(String.class);
                        if (str != null) {
                            map.put("transId", str);
                        }
                        String str2 = (String) aDEvent.getParam(1, String.class);
                        if (!TextUtils.isEmpty(str2)) {
                            map.put(IReward.DEV_EXT, str2);
                        }
                        SplashAD.this.f35278k.onReward(map);
                        break;
                    }
                    break;
                case 105:
                    SplashAD.this.f35277j.onADClicked();
                    break;
                case 106:
                    SplashAD.this.f35277j.onADDismissed();
                    break;
            }
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener) {
        this(context, str, splashADListener, 0);
    }

    private void fetchAndShowIn(ViewGroup viewGroup) {
        a(viewGroup, false);
    }

    private void fetchFullScreenAndShowIn(ViewGroup viewGroup) {
        a(viewGroup, true);
    }

    public void fetchAdOnly() {
        a(false);
    }

    public void fetchFullScreenAdOnly() {
        a(true);
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((NSPVI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    @Deprecated
    public Bitmap getZoomOutBitmap() {
        GDTLogger.e("注意！开屏V+功能已废弃，调用不生效");
        return null;
    }

    public void preLoad() {
        if (a()) {
            if (!b()) {
                this.f35280m = true;
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((NSPVI) t2).preload();
            } else {
                a("preLoad");
            }
        }
    }

    @Deprecated
    public void setAdLogoMargin(int i2, int i3) {
    }

    public void setDeveloperLogo(int i2) {
        T t2 = this.f35123a;
        if (t2 == 0) {
            this.f35283p = i2;
        } else {
            ((NSPVI) t2).setDeveloperLogo(i2);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NSPVI) t2).setLoadAdParams(loadAdParams);
        } else {
            this.f35279l = loadAdParams;
        }
    }

    @Deprecated
    public void setPreloadView(View view) {
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f35278k = aDRewardListener;
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f35285r = serverSideVerificationOptions;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NSPVI) t2).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAd(ViewGroup viewGroup) {
        b(viewGroup, false);
    }

    public void showFullScreenAd(ViewGroup viewGroup) {
        b(viewGroup, true);
    }

    @Deprecated
    public void zoomOutAnimationFinish() {
        GDTLogger.e("注意！开屏V+功能已废弃，调用不生效");
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i2) {
        this.f35280m = false;
        this.f35277j = splashADListener;
        this.f35286s = i2;
        a(context, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public NSPVI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeSplashAdView(context, str, str2, str3);
    }

    public void setDeveloperLogo(byte[] bArr) {
        T t2 = this.f35123a;
        if (t2 == 0) {
            this.f35284q = bArr;
        } else {
            ((NSPVI) t2).setDeveloperLogo(bArr);
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i2, String str2) {
        this.f35280m = false;
        this.f35277j = splashADListener;
        this.f35286s = i2;
        a(context, str, str2);
    }

    private void a(ViewGroup viewGroup, boolean z2) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数有误：传入container参数为空");
            a(4001);
            return;
        }
        T t2 = this.f35123a;
        if (t2 == 0) {
            this.f35282o = z2;
            this.f35276i = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t2;
        if (z2) {
            nspvi.fetchFullScreenAndShowIn(viewGroup);
        } else {
            nspvi.fetchAndShowIn(viewGroup);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        if (this.f35277j != null) {
            this.f35277j.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    private void a(boolean z2) {
        if (a()) {
            if (!b()) {
                this.f35282o = z2;
                this.f35281n = true;
                return;
            }
            T t2 = this.f35123a;
            if (t2 == 0) {
                a("fetchAdInner");
                return;
            }
            NSPVI nspvi = (NSPVI) t2;
            if (z2) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
        }
    }

    private void b(ViewGroup viewGroup, boolean z2) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数错误，container参数为空");
            a(4001);
            return;
        }
        T t2 = this.f35123a;
        if (t2 == 0) {
            this.f35276i = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t2;
        if (z2) {
            nspvi.showFullScreenAd(viewGroup);
        } else {
            nspvi.showAd(viewGroup);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(NSPVI nspvi) {
        if (this.f35279l != null) {
            nspvi.setLoadAdParams(this.f35279l);
        }
        if (this.f35283p != 0) {
            nspvi.setDeveloperLogo(this.f35283p);
        }
        if (this.f35284q != null) {
            nspvi.setDeveloperLogo(this.f35284q);
        }
        nspvi.setFetchDelay(this.f35286s);
        nspvi.setAdListener(new ADListenerAdapter());
        nspvi.setServerSideVerificationOptions(this.f35285r);
        if (this.f35276i != null) {
            if (this.f35282o) {
                fetchFullScreenAndShowIn(this.f35276i);
            } else {
                fetchAndShowIn(this.f35276i);
            }
        }
        if (this.f35280m) {
            nspvi.preload();
            this.f35280m = false;
        }
        if (this.f35281n) {
            if (this.f35282o) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
            this.f35281n = false;
        }
    }
}
