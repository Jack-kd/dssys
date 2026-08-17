package com.anythink.interstitial.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.l;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.p;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.anythink.interstitial.api.ATInterstitialListener;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final String f9036b = "a";

    /* renamed from: c, reason: collision with root package name */
    private static final int f9037c = 1;

    /* renamed from: d, reason: collision with root package name */
    private static final int f9038d = 2;

    /* renamed from: a, reason: collision with root package name */
    ATNativeAdCustomRender f9039a;

    /* renamed from: e, reason: collision with root package name */
    private final WeakReference<Activity> f9040e;

    /* renamed from: f, reason: collision with root package name */
    private final String f9041f;

    /* renamed from: g, reason: collision with root package name */
    private final ATShowConfig f9042g;

    /* renamed from: h, reason: collision with root package name */
    private final ATInterstitialListener f9043h;

    /* renamed from: i, reason: collision with root package name */
    private final ATEventInterface f9044i;

    /* renamed from: j, reason: collision with root package name */
    private final Map<String, Object> f9045j;

    /* renamed from: k, reason: collision with root package name */
    private final b f9046k;

    /* renamed from: l, reason: collision with root package name */
    private CustomInterstitialAdapter f9047l;

    /* renamed from: m, reason: collision with root package name */
    private com.anythink.core.common.h.c f9048m;

    /* renamed from: p, reason: collision with root package name */
    private volatile int f9051p;

    /* renamed from: u, reason: collision with root package name */
    private int f9056u;

    /* renamed from: n, reason: collision with root package name */
    private volatile int f9049n = 0;

    /* renamed from: o, reason: collision with root package name */
    private volatile int f9050o = 1;

    /* renamed from: q, reason: collision with root package name */
    private final List<Integer> f9052q = Arrays.asList(8, 15, 22, 28);

    /* renamed from: r, reason: collision with root package name */
    private final List<CustomInterstitialAdapter> f9053r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    private final List<CustomInterstitialAdapter> f9054s = new ArrayList();

    /* renamed from: t, reason: collision with root package name */
    private final Map<CustomInterstitialAdapter, WeakReference<Activity>> f9055t = new HashMap();

    /* renamed from: v, reason: collision with root package name */
    private volatile int f9057v = 3;

    /* renamed from: w, reason: collision with root package name */
    private volatile int f9058w = -1;

    /* renamed from: x, reason: collision with root package name */
    private final Handler f9059x = new Handler(Looper.getMainLooper()) { // from class: com.anythink.interstitial.a.a.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                aa.b(i.f2520x, "handleMessage:0x002:" + a.this.f9049n);
                if (a.this.f9049n != 1) {
                    aa.b(i.f2520x, "handleMessage:0x002:carouselState!=1");
                    return;
                }
                Object obj = message.obj;
                if (!(obj instanceof Integer)) {
                    a.o(a.this);
                    aa.b(i.f2520x, "handleMessage:0x002:msg.obj is not Integer");
                    return;
                }
                try {
                    int iIntValue = ((Integer) obj).intValue() / 1000;
                    com.anythink.core.common.h.c cVarI = a.this.i();
                    if (cVarI == null) {
                        a.o(a.this);
                        aa.b(i.f2520x, "handleMessage:0x002:There are no ads available for carousel, so the carousel is terminated.");
                        return;
                    }
                    a.this.f9048m = cVarI;
                    if (a.this.f9048m.e() != null) {
                        aa.b(i.f2520x, "handleMessage:nextPlayAdCacheInfo:" + a.this.f9048m.e().getNetworkName());
                    }
                    Context contextG = s.b().g();
                    if (contextG == null) {
                        contextG = a.this.g();
                    }
                    if (contextG != null) {
                        String string = "";
                        try {
                            string = contextG.getString(p.a(contextG, "interstitial_text_next_play", "string"));
                        } catch (Exception unused) {
                        }
                        a.a(contextG, string, iIntValue);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    a.o(a.this);
                    th.printStackTrace();
                    return;
                }
            }
            try {
                aa.b(i.f2520x, "handleMessage:0x001:" + a.this.f9049n);
                if (a.this.f9048m == null || !a.this.f9048m.k() || a.this.f9049n != 1) {
                    if (a.this.f9048m != null) {
                        aa.b(i.f2520x, "handleMessage:0x001:nextPlayAdCacheInfo:" + a.this.f9048m.k() + ":carouselState:" + a.this.f9049n);
                    } else {
                        aa.b(i.f2520x, "handleMessage:0x001:nextPlayAdCacheInfo is null and carouselState=" + a.this.f9049n);
                    }
                    a.o(a.this);
                    return;
                }
                if (a.this.f9050o >= a.this.f9051p) {
                    a.o(a.this);
                    aa.b(i.f2520x, "handleMessage:0x001:rotation_num is out");
                    return;
                }
                String strE = a.e(a.this);
                if (!TextUtils.isEmpty(strE)) {
                    a.o(a.this);
                    com.anythink.core.common.u.f.a("1", a.this.f9047l != null ? a.this.f9047l.getTrackingInfo() : null, s.b().W(), strE);
                    aa.b(i.f2520x, "handleMessage:0x001:close is exception:".concat(String.valueOf(strE)));
                    return;
                }
                aa.b(i.f2520x, "handleMessage:0x001:close:success");
                if (a.this.f9046k == null) {
                    a.o(a.this);
                    return;
                }
                ATBaseAdAdapter aTBaseAdAdapterE = a.this.f9048m.e();
                if (aTBaseAdAdapterE != null) {
                    aa.b(i.f2520x, "handleMessage:0x001:internalShow:" + aTBaseAdAdapterE.getNetworkName());
                    aTBaseAdAdapterE.setCarouselShowType(1);
                }
                if (a.this.f9058w > 0) {
                    a.h(a.this);
                }
                a.i(a.this);
                a.this.f9046k.a(a.this.g(), a.this.f9048m, a.this.f9042g, a.this.f9043h, a.this.f9044i, a.this.f9045j, a.this.f9039a);
            } catch (Throwable th2) {
                a.o(a.this);
                th2.printStackTrace();
            }
        }
    };

    /* renamed from: y, reason: collision with root package name */
    private final l f9060y = new l() { // from class: com.anythink.interstitial.a.a.2
        @Override // com.anythink.core.common.d.l
        public final void a(boolean z2) {
            aa.b(i.f2520x, "backToForeground:".concat(String.valueOf(z2)));
            if (z2) {
                return;
            }
            a.o(a.this);
            if (a.this.f9047l == null || a.this.f9047l.getTrackingInfo() == null) {
                return;
            }
            com.anythink.core.common.u.f.a(a.this.f9047l.getTrackingInfo(), String.valueOf(a.this.f()));
        }
    };

    /* renamed from: z, reason: collision with root package name */
    private final Map<CustomInterstitialAdapter, CustomInterstitialEventListener> f9061z = new HashMap();

    public a(Activity activity, ATShowConfig aTShowConfig, ATInterstitialListener aTInterstitialListener, ATEventInterface aTEventInterface, Map<String, Object> map, ATNativeAdCustomRender aTNativeAdCustomRender, String str, b bVar) {
        this.f9040e = new WeakReference<>(activity);
        this.f9042g = aTShowConfig;
        this.f9043h = aTInterstitialListener;
        this.f9044i = aTEventInterface;
        this.f9045j = map;
        this.f9039a = aTNativeAdCustomRender;
        this.f9041f = str;
        this.f9046k = bVar;
    }

    public static /* synthetic */ String e(a aVar) {
        return aVar.a(1);
    }

    public static /* synthetic */ int h(a aVar) {
        int i2 = aVar.f9058w;
        aVar.f9058w = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int i(a aVar) {
        int i2 = aVar.f9050o;
        aVar.f9050o = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int o(a aVar) {
        aVar.f9049n = 2;
        return 2;
    }

    private static void b(Context context, String str, int i2) {
        try {
            if (!TextUtils.isEmpty(str)) {
                Toast.makeText(context, str.replace("_SEC_", String.valueOf(i2)), 1).show();
                return;
            }
            Toast.makeText(context, "Show the next ad after " + i2 + " seconds", 1).show();
        } catch (Throwable unused) {
        }
    }

    private boolean d(CustomInterstitialAdapter customInterstitialAdapter) {
        n trackingInfo;
        by unitGroupInfo;
        if (customInterstitialAdapter != null && (trackingInfo = customInterstitialAdapter.getTrackingInfo()) != null && (unitGroupInfo = customInterstitialAdapter.getUnitGroupInfo()) != null) {
            if (trackingInfo.ae() != 3) {
                return true;
            }
            int iAn = unitGroupInfo.an();
            if (this.f9052q.contains(Integer.valueOf(trackingInfo.Z())) && iAn == 1) {
                return true;
            }
        }
        return false;
    }

    private Activity e(CustomInterstitialAdapter customInterstitialAdapter) {
        WeakReference<Activity> weakReferenceRemove = this.f9055t.remove(customInterstitialAdapter);
        if (weakReferenceRemove != null) {
            return weakReferenceRemove.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity g() {
        Activity activity = this.f9040e.get() != null ? this.f9040e.get() : null;
        return activity == null ? s.b().N() : activity;
    }

    private void h() {
        boolean z2;
        n trackingInfo;
        by unitGroupInfo;
        try {
            CustomInterstitialAdapter customInterstitialAdapter = this.f9047l;
            if (customInterstitialAdapter == null || (trackingInfo = customInterstitialAdapter.getTrackingInfo()) == null || (unitGroupInfo = customInterstitialAdapter.getUnitGroupInfo()) == null) {
                z2 = false;
            } else {
                if (trackingInfo.ae() == 3) {
                    int iAn = unitGroupInfo.an();
                    if (this.f9052q.contains(Integer.valueOf(trackingInfo.Z())) && iAn == 1) {
                    }
                    z2 = false;
                }
                z2 = true;
            }
            aa.b(i.f2520x, "startCarouse:canCarouse:".concat(String.valueOf(z2)));
            if (z2) {
                s.b().a(this.f9060y);
                aa.b(i.f2520x, "startCarouse:" + this.f9049n);
                m mVarA = o.a(s.b().g()).a(this.f9041f);
                CustomInterstitialAdapter customInterstitialAdapter2 = this.f9047l;
                by unitGroupInfo2 = customInterstitialAdapter2 != null ? customInterstitialAdapter2.getUnitGroupInfo() : null;
                if (mVarA == null || unitGroupInfo2 == null) {
                    this.f9049n = 0;
                    return;
                }
                this.f9051p = mVarA.bB();
                aa.b(i.f2520x, "startCarouse:" + this.f9051p + ":" + this.f9050o);
                if (this.f9051p < 2) {
                    this.f9049n = 0;
                    return;
                }
                if (this.f9050o >= this.f9051p) {
                    this.f9049n = 2;
                    aa.b(i.f2520x, "startCarouse:The number of carousel items exceeds the limit, so the carousel is terminated.");
                    return;
                }
                int iBC = mVarA.bC();
                int iAo = unitGroupInfo2.ao();
                if (iAo == 0) {
                    iAo = iBC;
                }
                int iBD = mVarA.bD();
                this.f9056u = iBC;
                if (this.f9047l.isMixSplash()) {
                    this.f9056u = iAo;
                }
                int i2 = this.f9056u - iBD;
                aa.b(i.f2520x, "startCarouse:interval:" + this.f9056u + ":" + i2);
                if (this.f9056u <= 0 || i2 <= 0) {
                    aa.b(i.f2520x, "startCarouse:currentInterval is exception");
                    this.f9049n = 0;
                    return;
                }
                this.f9059x.removeCallbacksAndMessages(null);
                this.f9059x.sendEmptyMessageDelayed(1, this.f9056u);
                Handler handler = this.f9059x;
                handler.sendMessageDelayed(Message.obtain(handler, 2, Integer.valueOf(iBD)), i2);
                this.f9049n = 1;
            }
        } catch (Throwable unused) {
            this.f9049n = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.anythink.core.common.h.c i() {
        try {
            List<com.anythink.core.common.h.c> listJ = j();
            if (listJ != null) {
                aa.b(i.f2520x, "checkNextAdCacheInfo:" + listJ.size());
            }
            if (listJ == null || listJ.isEmpty()) {
                return null;
            }
            if (this.f9051p - this.f9050o == 1) {
                aa.b(i.f2520x, "checkNextAdCacheInfo:When it comes to the last item, just play randomly.");
                List<com.anythink.core.common.h.c> listB = b(listJ);
                if (listB.isEmpty()) {
                    return null;
                }
                return listB.get(0);
            }
            List<com.anythink.core.common.h.c> listA = a(listJ);
            if (listA.isEmpty()) {
                return null;
            }
            this.f9058w = listA.size();
            List<com.anythink.core.common.h.c> listB2 = b(listA);
            if (listB2 == null || listB2.isEmpty()) {
                return null;
            }
            return listB2.get(0);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private List<com.anythink.core.common.h.c> j() {
        com.anythink.core.common.f fVarB;
        List<com.anythink.core.common.h.c> listB;
        try {
            b bVar = this.f9046k;
            if (bVar == null || (fVarB = bVar.b()) == null) {
                return null;
            }
            Context contextG = s.b().g();
            if (contextG == null) {
                contextG = g();
            }
            if (contextG == null || (listB = fVarB.b(contextG)) == null || listB.isEmpty()) {
                return null;
            }
            aa.b(i.f2520x, "getAllAdCacheInfoList:" + listB.size());
            return listB;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final void c(CustomInterstitialAdapter customInterstitialAdapter) {
        aa.b(i.f2520x, "notifyAdClose:hashCode:" + hashCode());
        if (customInterstitialAdapter == null || customInterstitialAdapter != this.f9047l) {
            aa.b(i.f2520x, "notifyAdClose:adapter != currentPlayAdapter");
            return;
        }
        if (this.f9053r.contains(customInterstitialAdapter)) {
            this.f9057v = 1;
            aa.b(i.f2520x, "notifyAdClose:The closure triggered by the carousel ad:" + customInterstitialAdapter.getNetworkName() + ":" + this.f9049n);
            return;
        }
        if (this.f9054s.contains(customInterstitialAdapter)) {
            this.f9049n = 2;
            this.f9057v = 2;
            aa.b(i.f2520x, "notifyAdClose:The close triggered by the server-side click shutdown:" + customInterstitialAdapter.getNetworkName() + ":" + this.f9049n);
            return;
        }
        this.f9049n = 2;
        this.f9057v = 3;
        aa.b(i.f2520x, "notifyAdClose:The closure triggered by the user clicking the close button:" + customInterstitialAdapter.getNetworkName() + ":" + this.f9049n);
    }

    public final int f() {
        return this.f9058w;
    }

    private List<com.anythink.core.common.h.c> a(List<com.anythink.core.common.h.c> list) {
        by unitGroupInfo;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                com.anythink.core.common.h.c cVar = list.get(i2);
                ATBaseAdAdapter aTBaseAdAdapterE = cVar.e();
                n nVarI = cVar.i();
                if (nVarI != null && aTBaseAdAdapterE != null && (unitGroupInfo = aTBaseAdAdapterE.getUnitGroupInfo()) != null) {
                    int iAn = unitGroupInfo.an();
                    if (nVarI.ae() != 3) {
                        if (iAn == 1) {
                            arrayList.add(cVar);
                        }
                    } else if (this.f9052q.contains(Integer.valueOf(nVarI.Z())) && iAn == 1) {
                        arrayList.add(cVar);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        aa.b(i.f2520x, "getAdSupportCacheInfoList:" + arrayList.size());
        return arrayList;
    }

    public final int e() {
        return this.f9057v;
    }

    private static List<com.anythink.core.common.h.c> b(List<com.anythink.core.common.h.c> list) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    Collections.sort(list);
                    return list;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return list;
    }

    public final void b(CustomInterstitialAdapter customInterstitialAdapter) {
        n trackingInfo;
        if (customInterstitialAdapter == null || customInterstitialAdapter != this.f9047l) {
            aa.b(i.f2520x, "notifyAdClick:adapter != currentPlayAdapter");
            return;
        }
        aa.b(i.f2520x, "notifyAdClick:" + customInterstitialAdapter.getNetworkName());
        this.f9049n = 2;
        by unitGroupInfo = this.f9047l.getUnitGroupInfo();
        if (unitGroupInfo == null || unitGroupInfo.am() != 1 || (trackingInfo = this.f9047l.getTrackingInfo()) == null) {
            return;
        }
        if (trackingInfo.ae() != 3 || this.f9052q.contains(Integer.valueOf(trackingInfo.Z()))) {
            String strA = a(2);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            com.anythink.core.common.u.f.a("2", trackingInfo, s.b().W(), strA);
        }
    }

    public final int d() {
        return this.f9056u;
    }

    public final int c() {
        return this.f9050o;
    }

    public final void a(CustomInterstitialAdapter customInterstitialAdapter) {
        aa.b(i.f2520x, "notifyAdPlay:hashCode:" + hashCode());
        if (customInterstitialAdapter != null) {
            aa.b(i.f2520x, "notifyAdPlay::" + customInterstitialAdapter.getNetworkName());
            CustomInterstitialAdapter customInterstitialAdapter2 = this.f9047l;
            if (customInterstitialAdapter2 == null) {
                this.f9047l = customInterstitialAdapter;
                h();
            } else {
                if (customInterstitialAdapter != customInterstitialAdapter2) {
                    this.f9047l = customInterstitialAdapter;
                    if (this.f9049n == 1) {
                        h();
                        return;
                    } else {
                        aa.b(i.f2520x, "notifyAdPlay:Currently in a carousel-disabled state.");
                        return;
                    }
                }
                aa.b(i.f2520x, "notifyAdPlay:adapter == currentPlayAdapter");
            }
        }
    }

    public final int b() {
        return this.f9049n;
    }

    public final void a(CustomInterstitialAdapter customInterstitialAdapter, CustomInterstitialEventListener customInterstitialEventListener) {
        if (customInterstitialAdapter != null) {
            this.f9061z.put(customInterstitialAdapter, customInterstitialEventListener);
        }
    }

    private String a(int i2) {
        try {
            this.f9057v = i2;
            if (this.f9047l != null) {
                aa.b(i.f2520x, "closeAd:" + i2 + ":" + this.f9047l.getNetworkName());
                if (this.f9057v == 1) {
                    this.f9053r.add(this.f9047l);
                } else if (this.f9057v == 2) {
                    this.f9049n = 2;
                    this.f9054s.add(this.f9047l);
                } else {
                    this.f9049n = 2;
                }
                if (this.f9047l.isMixFormatAd()) {
                    WeakReference<Activity> weakReferenceRemove = this.f9055t.remove(this.f9047l);
                    Activity activity = weakReferenceRemove != null ? weakReferenceRemove.get() : null;
                    if (activity != null) {
                        aa.b(i.f2520x, "removeMixActivity:" + this.f9049n + ":" + activity.getClass().getName());
                        activity.finish();
                        activity.overridePendingTransition(0, 0);
                        CustomInterstitialEventListener customInterstitialEventListener = this.f9061z.get(this.f9047l);
                        if (customInterstitialEventListener != null) {
                            customInterstitialEventListener.onInterstitialAdClose();
                            return "";
                        }
                        return "";
                    }
                    return "mixActivityMap get is null";
                }
                return this.f9047l.internalCloseAd();
            }
            return "closeAd currentPlayAdapter is null";
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    public final void a() {
        try {
            aa.b(i.f2520x, "destroy:hashCode:" + hashCode() + ":carouselState:" + this.f9049n);
            this.f9049n = 0;
            this.f9050o = 1;
            this.f9057v = 3;
            this.f9058w = -1;
            this.f9055t.clear();
            this.f9053r.clear();
            this.f9054s.clear();
            this.f9061z.clear();
            this.f9059x.removeCallbacksAndMessages(null);
            s.b().b(this.f9060y);
        } catch (Throwable unused) {
        }
    }

    public final void a(CustomInterstitialAdapter customInterstitialAdapter, Activity activity) {
        if (customInterstitialAdapter == null || activity == null) {
            return;
        }
        aa.b(i.f2520x, "saveMixActivity:" + this.f9049n + ":" + activity.getClass().getName());
        this.f9055t.put(customInterstitialAdapter, new WeakReference<>(activity));
    }

    public static /* synthetic */ void a(Context context, String str, int i2) {
        try {
            if (!TextUtils.isEmpty(str)) {
                Toast.makeText(context, str.replace("_SEC_", String.valueOf(i2)), 1).show();
                return;
            }
            Toast.makeText(context, "Show the next ad after " + i2 + " seconds", 1).show();
        } catch (Throwable unused) {
        }
    }
}
