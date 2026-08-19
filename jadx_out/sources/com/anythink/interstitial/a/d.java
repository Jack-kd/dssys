package com.anythink.interstitial.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdRevenueListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.t;
import com.anythink.core.common.v;
import com.anythink.core.common.v.aa;
import com.anythink.interstitial.api.ATInterstitialAutoEventListener;
import com.anythink.interstitial.api.ATInterstitialAutoLoadListener;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class d implements com.anythink.core.common.p.b {

    /* renamed from: c, reason: collision with root package name */
    private static volatile d f9104c;

    /* renamed from: a, reason: collision with root package name */
    String f9105a = "InterstitialAuto";

    /* renamed from: b, reason: collision with root package name */
    ATInterstitialAutoLoadListener f9106b = new ATInterstitialAutoLoadListener() { // from class: com.anythink.interstitial.a.d.1
        @Override // com.anythink.interstitial.api.ATInterstitialAutoLoadListener
        public final void onInterstitialAutoLoadFail(final String str, final AdError adError) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.interstitial.a.d.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.this.f9107d != null) {
                        d.this.f9107d.onInterstitialAutoLoadFail(str, adError);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialAutoLoadListener
        public final void onInterstitialAutoLoaded(final String str) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.interstitial.a.d.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.this.f9107d != null) {
                        d.this.f9107d.onInterstitialAutoLoaded(str);
                    }
                }
            });
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private ATInterstitialAutoLoadListener f9107d;

    /* renamed from: e, reason: collision with root package name */
    private ATNativeAdCustomRender f9108e;

    public static List<ATAdInfo> d(String str) {
        com.anythink.core.common.f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.a(s.b().M());
        }
        return null;
    }

    private ATAdStatusInfo e(String str) {
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.f9105a, "SDK init error!");
            return null;
        }
        com.anythink.core.common.f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.a(s.b().M(), (Map<String, Object>) null);
        }
        return null;
    }

    private static com.anythink.core.common.f f(String str) {
        return com.anythink.core.common.f.a(s.b().g(), str, "3");
    }

    public final boolean b(String str) {
        boolean zIsReady = false;
        if (!TextUtils.isEmpty(str)) {
            ATAdStatusInfo aTAdStatusInfoE = e(str);
            if (aTAdStatusInfoE == null) {
                return false;
            }
            zIsReady = aTAdStatusInfoE.isReady();
        }
        aa.b(str, i.s.f2742v, i.s.f2716B, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public final ATAdStatusInfo c(String str) {
        ATAdStatusInfo aTAdStatusInfo;
        if (TextUtils.isEmpty(str) || (aTAdStatusInfo = e(str)) == null) {
            aTAdStatusInfo = new ATAdStatusInfo(false, false, null);
        }
        aa.b(str, i.s.f2742v, i.s.f2717C, aTAdStatusInfo.toString(), "");
        return aTAdStatusInfo;
    }

    public static d a() {
        if (f9104c == null) {
            synchronized (d.class) {
                try {
                    if (f9104c == null) {
                        f9104c = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9104c;
    }

    private ATInterstitialAutoLoadListener b() {
        return this.f9106b;
    }

    public final void a(Context context, String[] strArr, ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener, ATAdRequest aTAdRequest) {
        if (context == null) {
            Log.e("anythink", this.f9105a + " init failed: context = null");
            return;
        }
        if (context instanceof Activity) {
            s.b().a((Activity) context);
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str) && !ATAdxSetting.getInstance().isAdxNetworkMode(str) && !v.a().a(str) && !t.a().a(str)) {
                    t.a().a(str, true);
                    com.anythink.core.common.p.d dVarA = f(str).a();
                    if (dVarA != null) {
                        dVarA.a(this);
                        dVarA.a(context, aTAdRequest, 3);
                    }
                }
            }
        }
        this.f9107d = aTInterstitialAutoLoadListener;
    }

    public final void a(ATAdRequest aTAdRequest, String... strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && !ATAdxSetting.getInstance().isAdxNetworkMode(str) && !v.a().a(str) && !t.a().a(str)) {
                t.a().a(str, true);
                com.anythink.core.common.p.d dVarA = f(str).a();
                if (dVarA != null) {
                    dVarA.a(this);
                    dVarA.a(s.b().M(), aTAdRequest, 3);
                }
            }
        }
    }

    public static void a(String... strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                t.a().a(str, false);
                com.anythink.core.common.p.d dVarA = f(str).a();
                if (dVarA != null) {
                    dVarA.a((com.anythink.core.common.p.b) null);
                    dVarA.d();
                }
            }
        }
    }

    public static void a(String str, Map<String, Object> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f(str).b(map);
    }

    public static void a(String str, String str2, Map<String, Object> map) {
        com.anythink.core.common.f fVarF;
        if (TextUtils.isEmpty(str) || (fVarF = f(str)) == null) {
            return;
        }
        s.b().a(fVarF, str2, "3", map);
    }

    @Override // com.anythink.core.common.p.b
    public final void a(String str) {
        ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener = a().f9106b;
        if (aTInterstitialAutoLoadListener != null) {
            aTInterstitialAutoLoadListener.onInterstitialAutoLoaded(str);
        }
    }

    @Override // com.anythink.core.common.p.b
    public final void a(String str, AdError adError) {
        ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener = a().f9106b;
        if (aTInterstitialAutoLoadListener != null) {
            aTInterstitialAutoLoadListener.onInterstitialAutoLoadFail(str, adError);
        }
    }

    public final void a(ATNativeAdCustomRender aTNativeAdCustomRender) {
        this.f9108e = aTNativeAdCustomRender;
    }

    public final void a(Activity activity, String str, ATShowConfig aTShowConfig, ATInterstitialAutoEventListener aTInterstitialAutoEventListener, ATAdRevenueListener aTAdRevenueListener) {
        aa.b(str, i.s.f2742v, i.s.f2715A, i.s.f2735o, "");
        if (TextUtils.isEmpty(str)) {
            Log.e(this.f9105a, "PlacementId is Empty!");
            AdError errorCode = ErrorCode.getErrorCode("9999", "", "placementId is empty.");
            if (aTInterstitialAutoEventListener != null) {
                aTInterstitialAutoEventListener.onInterstitialAdVideoError(errorCode);
                return;
            }
            return;
        }
        if (s.b().g() != null && !TextUtils.isEmpty(s.b().p()) && !TextUtils.isEmpty(s.b().q())) {
            if (activity == null) {
                Log.e(this.f9105a, "Interstitial Show Activity is null.");
            }
            b bVarA = b.a(activity, str);
            if (bVarA != null) {
                bVarA.a(activity, aTShowConfig, new e(aTInterstitialAutoEventListener, aTAdRevenueListener), null, null, this.f9108e);
                return;
            } else {
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdVideoError(ErrorCode.getErrorCode("9999", "", "adLoadManager is null"));
                    return;
                }
                return;
            }
        }
        Log.e(this.f9105a, "Show error: SDK init error!");
        AdError errorCode2 = ErrorCode.getErrorCode("9999", "", "sdk init error");
        if (aTInterstitialAutoEventListener != null) {
            aTInterstitialAutoEventListener.onInterstitialAdVideoError(errorCode2);
        }
    }

    public final void a(ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener) {
        this.f9107d = aTInterstitialAutoLoadListener;
    }
}
