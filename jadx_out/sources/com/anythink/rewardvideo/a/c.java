package com.anythink.rewardvideo.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdRevenueListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.s;
import com.anythink.core.common.t;
import com.anythink.core.common.v;
import com.anythink.core.common.v.aa;
import com.anythink.rewardvideo.api.ATRewardVideoAutoEventListener;
import com.anythink.rewardvideo.api.ATRewardVideoAutoLoadListener;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class c implements com.anythink.core.common.p.b {

    /* renamed from: c, reason: collision with root package name */
    private static volatile c f10724c;

    /* renamed from: a, reason: collision with root package name */
    String f10725a = "RewardVideoAuto";

    /* renamed from: b, reason: collision with root package name */
    ATRewardVideoAutoLoadListener f10726b = new ATRewardVideoAutoLoadListener() { // from class: com.anythink.rewardvideo.a.c.1
        @Override // com.anythink.rewardvideo.api.ATRewardVideoAutoLoadListener
        public final void onRewardVideoAutoLoadFail(final String str, final AdError adError) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.rewardvideo.a.c.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (c.this.f10727d != null) {
                        c.this.f10727d.onRewardVideoAutoLoadFail(str, adError);
                    }
                }
            });
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoAutoLoadListener
        public final void onRewardVideoAutoLoaded(final String str) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.rewardvideo.a.c.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (c.this.f10727d != null) {
                        c.this.f10727d.onRewardVideoAutoLoaded(str);
                    }
                }
            });
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private ATRewardVideoAutoLoadListener f10727d;

    /* renamed from: e, reason: collision with root package name */
    private ATNativeAdCustomRender f10728e;

    private ATAdStatusInfo e(String str) {
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.f10725a, "SDK init error!");
            return null;
        }
        com.anythink.core.common.f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.a(s.b().M(), (Map<String, Object>) null);
        }
        return null;
    }

    private static com.anythink.core.common.f f(String str) {
        return com.anythink.core.common.f.a(s.b().g(), str, "1");
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
        aa.b(str, i.s.f2743w, i.s.f2716B, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public final ATAdStatusInfo c(String str) {
        ATAdStatusInfo aTAdStatusInfo;
        if (TextUtils.isEmpty(str) || (aTAdStatusInfo = e(str)) == null) {
            aTAdStatusInfo = new ATAdStatusInfo(false, false, null);
        }
        aa.b(str, i.s.f2743w, i.s.f2717C, aTAdStatusInfo.toString(), "");
        return aTAdStatusInfo;
    }

    public final List<ATAdInfo> d(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(this.f10725a, "PlacementId is empty.");
            return null;
        }
        com.anythink.core.common.f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.a(s.b().M());
        }
        return null;
    }

    public static c a() {
        if (f10724c == null) {
            synchronized (c.class) {
                try {
                    if (f10724c == null) {
                        f10724c = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f10724c;
    }

    private ATRewardVideoAutoLoadListener b() {
        return this.f10726b;
    }

    public final void a(Context context, String[] strArr, ATRewardVideoAutoLoadListener aTRewardVideoAutoLoadListener, ATAdRequest aTAdRequest) {
        if (context == null) {
            Log.e("anythink", this.f10725a + " init failed: context = null");
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
        this.f10727d = aTRewardVideoAutoLoadListener;
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

    public final void a(Activity activity, String str, ATShowConfig aTShowConfig, ATRewardVideoAutoEventListener aTRewardVideoAutoEventListener, ATAdRevenueListener aTAdRevenueListener) {
        aa.b(str, i.s.f2743w, i.s.f2715A, i.s.f2735o, "");
        if (TextUtils.isEmpty(str)) {
            AdError errorCode = ErrorCode.getErrorCode("9999", "", "placementId is empty.");
            if (aTRewardVideoAutoEventListener != null) {
                aTRewardVideoAutoEventListener.onRewardedVideoAdPlayFailed(errorCode, k.a((ATBaseAdAdapter) null));
            }
            Log.e(this.f10725a, "PlacementId is Empty!");
            return;
        }
        if (s.b().g() != null && !TextUtils.isEmpty(s.b().p()) && !TextUtils.isEmpty(s.b().q())) {
            if (activity == null) {
                Log.e(this.f10725a, "RewardedVideo Show Activity is null.");
            }
            a aVarA = a.a(activity, str);
            if (aVarA != null) {
                aVarA.a(activity, aTShowConfig, new b(aTRewardVideoAutoEventListener, aTAdRevenueListener), (ATEventInterface) null, (Map<String, Object>) null, this.f10728e);
                return;
            } else {
                if (aTRewardVideoAutoEventListener != null) {
                    aTRewardVideoAutoEventListener.onRewardedVideoAdPlayFailed(ErrorCode.getErrorCode("9999", "", "adLoadManager is null"), k.a((ATBaseAdAdapter) null));
                    return;
                }
                return;
            }
        }
        AdError errorCode2 = ErrorCode.getErrorCode("9999", "", "sdk init error");
        if (aTRewardVideoAutoEventListener != null) {
            aTRewardVideoAutoEventListener.onRewardedVideoAdPlayFailed(errorCode2, k.a((ATBaseAdAdapter) null));
        }
        Log.e(this.f10725a, "SDK init error!");
    }

    public static void a(String str, String str2, Map<String, Object> map) {
        com.anythink.core.common.f fVarF;
        if (TextUtils.isEmpty(str) || (fVarF = f(str)) == null) {
            return;
        }
        s.b().a(fVarF, str2, "1", map);
    }

    @Override // com.anythink.core.common.p.b
    public final void a(String str) {
        ATRewardVideoAutoLoadListener aTRewardVideoAutoLoadListener = a().f10726b;
        if (aTRewardVideoAutoLoadListener != null) {
            aTRewardVideoAutoLoadListener.onRewardVideoAutoLoaded(str);
        }
    }

    @Override // com.anythink.core.common.p.b
    public final void a(String str, AdError adError) {
        ATRewardVideoAutoLoadListener aTRewardVideoAutoLoadListener = a().f10726b;
        if (aTRewardVideoAutoLoadListener != null) {
            aTRewardVideoAutoLoadListener.onRewardVideoAutoLoadFail(str, adError);
        }
    }

    public final void a(ATRewardVideoAutoLoadListener aTRewardVideoAutoLoadListener) {
        this.f10727d = aTRewardVideoAutoLoadListener;
    }

    public final void a(ATNativeAdCustomRender aTNativeAdCustomRender) {
        this.f10728e = aTNativeAdCustomRender;
    }
}
