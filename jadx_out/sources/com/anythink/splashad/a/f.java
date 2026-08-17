package com.anythink.splashad.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.Toast;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.common.a.b;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.u.g;
import com.anythink.core.common.v.a.f;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.d;
import com.anythink.core.common.v.p;
import com.anythink.splashad.api.ATSplashAdExtraInfo;
import com.anythink.splashad.api.ATSplashExListener;
import com.anythink.splashad.api.ATSplashSkipAdListener;
import com.anythink.splashad.api.ATSplashSkipInfo;
import com.anythink.splashad.api.IATSplashEyeAd;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public final class f implements CustomSplashEventListener {

    /* renamed from: f, reason: collision with root package name */
    private static final String f10821f = "anythink_s_m_i";

    /* renamed from: j, reason: collision with root package name */
    private static final int f10822j = 1;

    /* renamed from: k, reason: collision with root package name */
    private static final int f10823k = 2;

    /* renamed from: a, reason: collision with root package name */
    CustomSplashAdapter f10824a;

    /* renamed from: b, reason: collision with root package name */
    a f10825b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10826c;

    /* renamed from: d, reason: collision with root package name */
    long f10827d;

    /* renamed from: e, reason: collision with root package name */
    private Timer f10828e;

    /* renamed from: g, reason: collision with root package name */
    private boolean f10829g = false;

    /* renamed from: h, reason: collision with root package name */
    private volatile int f10830h = 0;

    /* renamed from: i, reason: collision with root package name */
    private final List<Integer> f10831i = Arrays.asList(8, 15, 22, 28);

    /* renamed from: l, reason: collision with root package name */
    private Handler f10832l = null;

    /* renamed from: m, reason: collision with root package name */
    private final com.anythink.core.common.f f10833m;

    /* renamed from: com.anythink.splashad.a.f$10, reason: invalid class name */
    public class AnonymousClass10 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f10835a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ CustomSplashAdapter f10836b;

        public AnonymousClass10(n nVar, CustomSplashAdapter customSplashAdapter) {
            this.f10835a = nVar;
            this.f10836b = customSplashAdapter;
        }

        @Override // com.anythink.core.common.v.d.a
        public final void a() {
            ah.b(this.f10835a, this.f10836b);
            com.anythink.core.common.u.e.a(s.b().g());
            com.anythink.core.common.u.e.a(4, this.f10835a, this.f10836b.getUnitGroupInfo());
        }

        @Override // com.anythink.core.common.v.d.a
        public final void b() {
        }
    }

    /* renamed from: com.anythink.splashad.a.f$11, reason: invalid class name */
    public class AnonymousClass11 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomSplashAdapter f10838a;

        public AnonymousClass11(CustomSplashAdapter customSplashAdapter) {
            this.f10838a = customSplashAdapter;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ATSplashSkipInfo splashSkipInfo = this.f10838a.getSplashSkipInfo();
            if (splashSkipInfo != null && splashSkipInfo.canUseCustomSkipView() && this.f10838a.isSupportCustomSkipView()) {
                f.a(f.this, splashSkipInfo);
            }
        }
    }

    /* renamed from: com.anythink.splashad.a.f$6, reason: invalid class name */
    public class AnonymousClass6 extends TimerTask {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f10860a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ f.b f10861b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ATSplashSkipAdListener f10862c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f10863d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f10864e;

        public AnonymousClass6(ViewGroup viewGroup, f.b bVar, ATSplashSkipAdListener aTSplashSkipAdListener, long j2, long j3) {
            this.f10860a = viewGroup;
            this.f10861b = bVar;
            this.f10862c = aTSplashSkipAdListener;
            this.f10863d = j2;
            this.f10864e = j3;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ViewGroup viewGroup = this.f10860a;
            if (viewGroup == null || ak.a(viewGroup, this.f10861b)) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.a.f.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        f fVar = f.this;
                        long j2 = fVar.f10827d;
                        if (j2 <= 0) {
                            fVar.a(3);
                            f.this.onSplashAdDismiss();
                        } else {
                            ATSplashSkipAdListener aTSplashSkipAdListener = anonymousClass6.f10862c;
                            if (aTSplashSkipAdListener != null) {
                                aTSplashSkipAdListener.onAdTick(anonymousClass6.f10863d, j2);
                            }
                        }
                        AnonymousClass6 anonymousClass62 = AnonymousClass6.this;
                        f.this.f10827d -= anonymousClass62.f10864e;
                    }
                });
            }
        }
    }

    /* renamed from: com.anythink.splashad.a.f$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATSplashSkipAdListener f10867a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f10868b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f10869c;

        public AnonymousClass7(ATSplashSkipAdListener aTSplashSkipAdListener, long j2, long j3) {
            this.f10867a = aTSplashSkipAdListener;
            this.f10868b = j2;
            this.f10869c = j3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ATSplashSkipAdListener aTSplashSkipAdListener = this.f10867a;
            if (aTSplashSkipAdListener != null) {
                aTSplashSkipAdListener.onAdTick(this.f10868b, f.this.f10827d);
                f.this.f10827d -= this.f10869c;
            }
        }
    }

    public f(CustomSplashAdapter customSplashAdapter, a aVar, com.anythink.core.common.f fVar) {
        this.f10824a = customSplashAdapter;
        this.f10825b = aVar;
        this.f10833m = fVar;
    }

    public static /* synthetic */ void c(f fVar) {
        Timer timer = fVar.f10828e;
        if (timer != null) {
            timer.cancel();
            fVar.f10828e = null;
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onDeeplinkCallback(final boolean z2) {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cN, new Runnable() { // from class: com.anythink.splashad.a.f.3
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = f.this.f10825b;
                if (aVar != null) {
                    aVar.onDeeplinkCallback(k.a(customSplashAdapter), z2);
                }
                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                if (customSplashAdapter2 != null) {
                    aa.a(customSplashAdapter2.getTrackingInfo(), i.s.f2730j, z2 ? i.s.f2733m : i.s.f2734n, "");
                }
            }
        }));
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onDownloadConfirm(final Context context, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cO, new Runnable() { // from class: com.anythink.splashad.a.f.4
            @Override // java.lang.Runnable
            public final void run() {
                Object obj = f.this.f10825b;
                if (obj != null && (obj instanceof ATSplashExListener)) {
                    ((ATSplashExListener) obj).onDownloadConfirm(context, k.a(customSplashAdapter), aTNetworkConfirmInfo);
                }
                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                if (customSplashAdapter2 != null) {
                    aa.a(customSplashAdapter2.getTrackingInfo(), i.s.f2731k, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdClicked() {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cP, new Runnable() { // from class: com.anythink.splashad.a.f.12
            @Override // java.lang.Runnable
            public final void run() {
                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                if (customSplashAdapter2 != null) {
                    n trackingInfo = customSplashAdapter2.getTrackingInfo();
                    ah.c(trackingInfo, customSplashAdapter);
                    com.anythink.core.common.u.e.a(s.b().g());
                    com.anythink.core.common.u.e.a(6, trackingInfo);
                    if (trackingInfo != null ? trackingInfo.aB() : false) {
                        return;
                    } else {
                        aa.a(trackingInfo, i.s.f2724d, i.s.f2733m, "");
                    }
                }
                com.anythink.core.common.v.c.a().b(customSplashAdapter);
                a aVar = f.this.f10825b;
                if (aVar != null) {
                    aVar.onAdClick(k.a(customSplashAdapter));
                }
                by byVarA = f.this.a();
                if (byVarA == null || byVarA.f() != 1) {
                    return;
                }
                f.this.a(2, 0L);
            }
        }));
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdDismiss() {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        aa.b(f10821f, "onSplashAdDismiss");
        Timer timer = this.f10828e;
        if (timer != null) {
            timer.cancel();
        }
        Handler handler = this.f10832l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f10832l = null;
        }
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cQ, new Runnable() { // from class: com.anythink.splashad.a.f.14
            @Override // java.lang.Runnable
            public final void run() {
                f.this.a(customSplashAdapter);
            }
        }));
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdReward() {
        aa.b(f10821f, "onSplashAdReward");
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cR, new Runnable() { // from class: com.anythink.splashad.a.f.13
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = f.this.f10825b;
                if (aVar != null) {
                    aVar.onAdReward(k.a(customSplashAdapter));
                }
                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                if (customSplashAdapter2 != null) {
                    aa.a(customSplashAdapter2.getTrackingInfo(), i.s.f2729i, i.s.f2733m, "");
                }
            }
        }));
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdShow() {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        if (customSplashAdapter == null || (com.anythink.core.common.v.d.a().a(customSplashAdapter) && com.anythink.core.common.v.d.a().b(customSplashAdapter))) {
            com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cS, new Runnable() { // from class: com.anythink.splashad.a.f.9
                @Override // java.lang.Runnable
                public final void run() {
                    f.a(f.this, customSplashAdapter);
                }
            }));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdShowFail(final AdError adError) {
        final CustomSplashAdapter customSplashAdapter = this.f10824a;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cT, new Runnable() { // from class: com.anythink.splashad.a.f.5
            @Override // java.lang.Runnable
            public final void run() {
                String strAQ;
                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                if (customSplashAdapter2 != null) {
                    n trackingInfo = customSplashAdapter2.getTrackingInfo();
                    com.anythink.core.common.u.f.a(trackingInfo, adError, customSplashAdapter.getInternalNetworkInfoMap());
                    if (trackingInfo != null) {
                        strAQ = trackingInfo.aQ();
                        f.b(trackingInfo);
                    } else {
                        strAQ = "";
                    }
                    f.this.a(strAQ, 7);
                    AdError adError2 = adError;
                    aa.a(trackingInfo, i.s.f2732l, i.s.f2734n, adError2 != null ? adError2.getFullErrorInfo() : "");
                }
            }
        }));
    }

    private void b(CustomSplashAdapter customSplashAdapter) {
        if (this.f10826c) {
            return;
        }
        this.f10826c = true;
        com.anythink.core.common.v.c.a().a(customSplashAdapter);
        k kVarA = k.a(customSplashAdapter);
        if (customSplashAdapter != null) {
            n trackingInfo = customSplashAdapter.getTrackingInfo();
            trackingInfo.a(customSplashAdapter.getInternalNetworkInfoMap());
            com.anythink.core.common.v.d.a().a(trackingInfo, customSplashAdapter.getUnitGroupInfo(), 6);
            com.anythink.core.common.v.d.a().a(customSplashAdapter, new AnonymousClass10(trackingInfo, customSplashAdapter));
            aa.a(trackingInfo, i.s.f2723c, i.s.f2733m, "");
            s.b();
            s.b(new AnonymousClass11(customSplashAdapter));
            com.anythink.core.common.f fVarA = trackingInfo.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            a(trackingInfo.aQ(), 6);
        }
        if (this.f10825b != null) {
            if (kVarA.getNetworkFirmId() == -1) {
                g.a("Splash", customSplashAdapter, null);
            }
            this.f10825b.onAdShow(kVarA);
        }
        by byVarA = a();
        if (byVarA == null || byVarA.h() <= 0) {
            return;
        }
        a(1, byVarA.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public by a() {
        CustomSplashAdapter customSplashAdapter = this.f10824a;
        if (customSplashAdapter == null) {
            return null;
        }
        boolean zIsMixInterstitial = customSplashAdapter.isMixInterstitial();
        aa.b(f10821f, "onSplashAdShow:mixInterstitial:".concat(String.valueOf(zIsMixInterstitial)));
        by unitGroupInfo = this.f10824a.getUnitGroupInfo();
        if (!zIsMixInterstitial || unitGroupInfo == null) {
            return null;
        }
        int iG = unitGroupInfo.g();
        int iN = unitGroupInfo.n();
        aa.b(f10821f, "onSplashAdShow:networkFirmId:" + iN + ":" + iG);
        if (iG == 1 && this.f10831i.contains(Integer.valueOf(iN))) {
            return unitGroupInfo;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, final long j2) {
        if (this.f10832l == null) {
            this.f10832l = new Handler(Looper.getMainLooper()) { // from class: com.anythink.splashad.a.f.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    if (message != null) {
                        try {
                            CustomSplashAdapter customSplashAdapter = f.this.f10824a;
                            if (customSplashAdapter != null) {
                                String strInternalCloseAd = customSplashAdapter.internalCloseAd();
                                if (TextUtils.isEmpty(strInternalCloseAd)) {
                                    aa.b(f.f10821f, "onSplashAdShow:0x001:close:success");
                                } else {
                                    aa.b(f.f10821f, "onSplashAdShow:0x001:close is exception:".concat(String.valueOf(strInternalCloseAd)));
                                    com.anythink.core.common.u.f.a(String.valueOf(message.arg1), f.this.f10824a.getTrackingInfo(), s.b().W(), strInternalCloseAd);
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            };
        }
        if (i2 != 1) {
            if (i2 == 2) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                messageObtain.arg1 = 2;
                this.f10832l.sendMessage(messageObtain);
                return;
            }
            return;
        }
        Message messageObtain2 = Message.obtain();
        messageObtain2.what = 1;
        messageObtain2.arg1 = 1;
        this.f10832l.sendMessageDelayed(messageObtain2, j2);
        final Context contextG = s.b().g();
        if (contextG != null) {
            try {
                final String string = contextG.getString(p.a(contextG, "splash_mix_inter_will_close", "string"));
                if (!TextUtils.isEmpty(string)) {
                    s.b();
                    try {
                        s.b(new Runnable() { // from class: com.anythink.splashad.a.f.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                Toast.makeText(contextG, string.replace("_SEC_", String.valueOf(j2 / 1000)), 0).show();
                            }
                        });
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private void b() {
        Timer timer = this.f10828e;
        if (timer != null) {
            timer.cancel();
            this.f10828e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(n nVar) {
        com.anythink.core.common.f fVarA;
        com.anythink.core.common.h.i iVarS;
        if (nVar == null || (fVarA = nVar.a()) == null || (iVarS = fVarA.s()) == null) {
            return;
        }
        fVarA.t();
        fVarA.c(fVarA.d(iVarS.a()));
    }

    public final void a(final CustomSplashAdapter customSplashAdapter) {
        int dismissType;
        boolean zBooleanValue;
        if (customSplashAdapter != null) {
            n trackingInfo = customSplashAdapter.getTrackingInfo();
            if (this.f10830h != 0) {
                dismissType = this.f10830h;
                trackingInfo.K(this.f10830h);
            } else {
                dismissType = customSplashAdapter.getDismissType();
                if (dismissType == 0) {
                    dismissType = 1;
                }
                trackingInfo.K(dismissType);
            }
            Map<String, Object> adExtraInfoMap = customSplashAdapter.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object objRemove = adExtraInfoMap.remove(b.C0047b.f2179a);
                Object objRemove2 = adExtraInfoMap.remove(b.C0047b.f2180b);
                if (objRemove instanceof Integer) {
                    trackingInfo.S(((Integer) objRemove).intValue());
                }
                zBooleanValue = objRemove2 instanceof Boolean ? ((Boolean) objRemove2).booleanValue() : true;
                Object objRemove3 = adExtraInfoMap.remove(b.C0047b.f2181c);
                Object objRemove4 = adExtraInfoMap.remove(b.C0047b.f2182d);
                if (objRemove3 instanceof Integer) {
                    trackingInfo.T(((Integer) objRemove3).intValue());
                } else {
                    trackingInfo.T(2);
                }
                if (objRemove4 instanceof Integer) {
                    trackingInfo.U(((Integer) objRemove4).intValue());
                } else {
                    trackingInfo.U(2);
                }
            } else {
                zBooleanValue = true;
            }
            com.anythink.core.common.v.c.a().c(customSplashAdapter);
            com.anythink.core.common.u.f.a(trackingInfo, false);
            s.b();
            s.b(new Runnable() { // from class: com.anythink.splashad.a.f.15
                @Override // java.lang.Runnable
                public final void run() {
                    ATSplashSkipInfo splashSkipInfo = customSplashAdapter.getSplashSkipInfo();
                    if (splashSkipInfo == null || !splashSkipInfo.canUseCustomSkipView()) {
                        return;
                    }
                    customSplashAdapter.startSplashCustomSkipViewClickEye();
                    f.c(f.this);
                    splashSkipInfo.destroy();
                    customSplashAdapter.setSplashSkipInfo(null);
                }
            });
            aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, "");
            b(trackingInfo);
            IATSplashEyeAd splashEyeAd = customSplashAdapter.getSplashEyeAd();
            if (this.f10825b != null && !this.f10829g) {
                this.f10829g = true;
                if (trackingInfo.Z() != 66 || zBooleanValue) {
                    this.f10825b.onCallbackAdDismiss(k.a(trackingInfo, customSplashAdapter), new ATSplashAdExtraInfo(dismissType, splashEyeAd));
                }
            }
            if (splashEyeAd == null) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.a.f.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                        if (customSplashAdapter2 != null) {
                            customSplashAdapter2.cleanImpressionListener();
                        }
                        if (customSplashAdapter != null) {
                            com.anythink.core.common.v.d.a().d(customSplashAdapter);
                            customSplashAdapter.internalDestroy();
                        }
                    }
                });
            }
            a(trackingInfo != null ? trackingInfo.aQ() : "", 18);
        }
        s.b().ai();
    }

    private void a(ATSplashSkipInfo aTSplashSkipInfo) {
        if (this.f10828e == null) {
            long callbackInterval = aTSplashSkipInfo.getCallbackInterval();
            long countDownDuration = aTSplashSkipInfo.getCountDownDuration();
            ViewGroup container = aTSplashSkipInfo.getContainer();
            f.b bVar = new f.b(1);
            ATSplashSkipAdListener aTSplashSkipAdListener = aTSplashSkipInfo.getATSplashSkipAdListener();
            this.f10827d = countDownDuration;
            Timer timer = new Timer();
            this.f10828e = timer;
            timer.schedule(new AnonymousClass6(container, bVar, aTSplashSkipAdListener, countDownDuration, callbackInterval), callbackInterval, callbackInterval);
            s.b();
            s.b(new AnonymousClass7(aTSplashSkipAdListener, countDownDuration, callbackInterval));
        }
    }

    public final void a(int i2) {
        this.f10830h = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        com.anythink.core.common.f fVar;
        if (TextUtils.isEmpty(str) || (fVar = this.f10833m) == null || !fVar.a((ATAdStatusInfo) null, i2)) {
            return;
        }
        as asVar = new as();
        asVar.a(s.b().M());
        asVar.f3811c = i2;
        fVar.b(s.b().M(), "4", str, asVar, null);
    }

    public static /* synthetic */ void a(f fVar, CustomSplashAdapter customSplashAdapter) {
        if (fVar.f10826c) {
            return;
        }
        fVar.f10826c = true;
        com.anythink.core.common.v.c.a().a(customSplashAdapter);
        k kVarA = k.a(customSplashAdapter);
        if (customSplashAdapter != null) {
            n trackingInfo = customSplashAdapter.getTrackingInfo();
            trackingInfo.a(customSplashAdapter.getInternalNetworkInfoMap());
            com.anythink.core.common.v.d.a().a(trackingInfo, customSplashAdapter.getUnitGroupInfo(), 6);
            com.anythink.core.common.v.d.a().a(customSplashAdapter, fVar.new AnonymousClass10(trackingInfo, customSplashAdapter));
            aa.a(trackingInfo, i.s.f2723c, i.s.f2733m, "");
            s.b();
            s.b(fVar.new AnonymousClass11(customSplashAdapter));
            com.anythink.core.common.f fVarA = trackingInfo.a();
            if (fVarA != null) {
                fVarA.a(kVarA);
            }
            fVar.a(trackingInfo.aQ(), 6);
        }
        if (fVar.f10825b != null) {
            if (kVarA.getNetworkFirmId() == -1) {
                g.a("Splash", customSplashAdapter, null);
            }
            fVar.f10825b.onAdShow(kVarA);
        }
        by byVarA = fVar.a();
        if (byVarA == null || byVarA.h() <= 0) {
            return;
        }
        fVar.a(1, byVarA.h());
    }

    public static /* synthetic */ void a(f fVar, ATSplashSkipInfo aTSplashSkipInfo) {
        if (fVar.f10828e == null) {
            long callbackInterval = aTSplashSkipInfo.getCallbackInterval();
            long countDownDuration = aTSplashSkipInfo.getCountDownDuration();
            ViewGroup container = aTSplashSkipInfo.getContainer();
            f.b bVar = new f.b(1);
            ATSplashSkipAdListener aTSplashSkipAdListener = aTSplashSkipInfo.getATSplashSkipAdListener();
            fVar.f10827d = countDownDuration;
            Timer timer = new Timer();
            fVar.f10828e = timer;
            timer.schedule(fVar.new AnonymousClass6(container, bVar, aTSplashSkipAdListener, countDownDuration, callbackInterval), callbackInterval, callbackInterval);
            s.b();
            s.b(fVar.new AnonymousClass7(aTSplashSkipAdListener, countDownDuration, callbackInterval));
        }
    }
}
