package com.ubix.ssp.ad.i;

import android.os.Bundle;
import android.view.View;
import com.qq.e.comm.constants.ErrorCode;
import com.ubix.ssp.ad.a;
import com.ubix.ssp.ad.d.l;
import com.ubix.ssp.ad.e.a0.f;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.g.k.g;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressVideoListener;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private SoftReference<com.ubix.ssp.ad.i.c> f48086a;

    /* renamed from: b, reason: collision with root package name */
    private SoftReference<NativeAd> f48087b;

    /* renamed from: c, reason: collision with root package name */
    private SoftReference<com.ubix.ssp.ad.i.a> f48088c;

    /* renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<Integer, HashMap<String, Object>> f48089d;

    /* renamed from: e, reason: collision with root package name */
    private int f48090e = 0;

    /* renamed from: f, reason: collision with root package name */
    private l f48091f;

    public class a implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressInteractionListener f48092a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f48093b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ArrayList f48094c;

        public a(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener, ArrayList arrayList, ArrayList arrayList2) {
            this.f48092a = uBiXNativeExpressInteractionListener;
            this.f48093b = arrayList;
            this.f48094c = arrayList2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(e eVar, String str, String str2, boolean z2) {
            if (b.this.a() == null) {
                AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(2, "内容加载失败");
                if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                    ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).c(adErrorG);
                }
                u.e("onAdRenderFailed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48092a;
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG);
                }
                u.e("onAdRenderFailed out");
                return;
            }
            this.f48093b.add(str);
            if (b.this.a() != null && b.this.a().getCustomizeVideo() != null) {
                this.f48094c.add(((NativeAd) b.this.f48087b.get()).getCustomizeVideo().getVideoUrl());
            }
            b bVar = b.this;
            bVar.a(((NativeAd) bVar.f48087b.get()).hashCode());
            if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).w();
            }
            try {
                u.e("onAdRenderSucceed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener2 = this.f48092a;
                if (uBiXNativeExpressInteractionListener2 != null) {
                    uBiXNativeExpressInteractionListener2.onAdRenderSucceed((View) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("native_parent_view_key"));
                    u.e("onAdRenderSucceed out");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            b.this.a(this.f48092a);
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).c(adError);
            }
            u.e("onAdRenderFailed in");
            UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48092a;
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adError);
            }
            u.e("onAdRenderFailed out");
        }
    }

    /* renamed from: com.ubix.ssp.ad.i.b$b, reason: collision with other inner class name */
    public class C0843b implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f48096a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressInteractionListener f48097b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f48098c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f48099d;

        public C0843b(ArrayList arrayList, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener, AtomicInteger atomicInteger, AtomicInteger atomicInteger2) {
            this.f48096a = arrayList;
            this.f48097b = uBiXNativeExpressInteractionListener;
            this.f48098c = atomicInteger;
            this.f48099d = atomicInteger2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(e eVar, String str, String str2, boolean z2) {
            this.f48096a.add(str);
            if (b.this.c() == null) {
                AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(2, "广告View为空");
                if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                    ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).c(adErrorG);
                }
                u.e("onAdRenderFailed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48097b;
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG);
                }
                u.e("onAdRenderFailed out");
                return;
            }
            if (this.f48098c.decrementAndGet() + this.f48099d.get() != ((NativeAd) b.this.f48087b.get()).getImageList().size() || this.f48098c.get() >= ((NativeAd) b.this.f48087b.get()).getImageList().size()) {
                return;
            }
            if (b.this.a() == null) {
                AdError adErrorG2 = com.ubix.ssp.ad.e.a0.a0.a.g(2, "广告View为空");
                if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                    ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).c(adErrorG2);
                }
                u.e("onAdRenderFailed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener2 = this.f48097b;
                if (uBiXNativeExpressInteractionListener2 != null) {
                    uBiXNativeExpressInteractionListener2.onAdRenderFailed(adErrorG2);
                }
                u.e("onAdRenderFailed out");
                return;
            }
            b bVar = b.this;
            bVar.a(((NativeAd) bVar.f48087b.get()).hashCode());
            if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).w();
            }
            try {
                u.e("onAdRenderSucceed out");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener3 = this.f48097b;
                if (uBiXNativeExpressInteractionListener3 != null) {
                    uBiXNativeExpressInteractionListener3.onAdRenderSucceed((View) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("native_parent_view_key"));
                }
                u.e("onAdRenderSucceed out");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            b.this.a(this.f48097b);
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            if (this.f48099d.decrementAndGet() == 0) {
                if (b.this.f48086a != null && b.this.f48086a.get() != null) {
                    ((com.ubix.ssp.ad.i.c) b.this.f48086a.get()).c(adError);
                }
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48097b;
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdRenderFailed(adError);
                }
            }
        }
    }

    public class c extends g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.i.c f48101a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressInteractionListener f48102b;

        public class a implements a.y {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f48104a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.ubix.ssp.ad.d.a f48105b;

            public a(int i2, com.ubix.ssp.ad.d.a aVar) {
                this.f48104a = i2;
                this.f48105b = aVar;
            }

            @Override // com.ubix.ssp.ad.a.y
            public void a() {
                if (b.this.f48088c == null || b.this.f48088c.get() == null) {
                    return;
                }
                ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).f48083q = true;
            }

            @Override // com.ubix.ssp.ad.a.y
            public boolean a(boolean z2) {
                com.ubix.ssp.ad.i.a aVar;
                if (z2) {
                    int i2 = this.f48104a;
                    if (i2 == 44) {
                        com.ubix.ssp.ad.e.s.b.c().a(((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getContext(), this.f48105b.f45773o);
                    } else if (i2 == 45) {
                        com.ubix.ssp.ad.e.s.b.c().b(((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getContext(), this.f48105b.f45773o);
                    } else {
                        int i3 = 46;
                        if (i2 == 46) {
                            if (b.this.f48088c != null && b.this.f48088c.get() != null) {
                                aVar = (com.ubix.ssp.ad.i.a) b.this.f48088c.get();
                                aVar.d(i3, 0);
                            }
                        } else if (b.this.f48088c != null && b.this.f48088c.get() != null) {
                            aVar = (com.ubix.ssp.ad.i.a) b.this.f48088c.get();
                            i3 = 42;
                            aVar.d(i3, 0);
                        }
                    }
                    c.this.h();
                    return false;
                }
                c.this.h();
                return true;
            }
        }

        public c(com.ubix.ssp.ad.i.c cVar, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
            this.f48101a = cVar;
            this.f48102b = uBiXNativeExpressInteractionListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            if (b.this.f48088c == null || b.this.f48088c.get() == null) {
                return;
            }
            ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).f48083q = false;
            ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).setShakeSensor(null);
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, long j2, long j3) {
            UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener;
            com.ubix.ssp.ad.i.c cVar;
            com.ubix.ssp.ad.d.a aVarN;
            int i3;
            if (b.this.a() == null || b.this.a().getCustomizeVideo() == null) {
                return;
            }
            if (j3 > 0 && ((int) ((100 * j2) / j3)) >= b.this.f48090e * 25) {
                if (b.this.f48090e == 0) {
                    ((NativeAd) b.this.f48087b.get()).getCustomizeVideo().reportVideoStart();
                } else {
                    if (b.this.f48090e == 1) {
                        cVar = this.f48101a;
                        aVarN = cVar.n(i2);
                        i3 = ErrorCode.NO_AD_FILL_FOR_LIST_EMPTY;
                    } else if (b.this.f48090e == 2) {
                        cVar = this.f48101a;
                        aVarN = cVar.n(i2);
                        i3 = 5050;
                    } else if (b.this.f48090e == 3) {
                        cVar = this.f48101a;
                        aVarN = cVar.n(i2);
                        i3 = 5075;
                    }
                    cVar.a(aVarN, i3);
                }
                b.h(b.this);
            }
            if (b.this.f48089d.get(Integer.valueOf(((NativeAd) b.this.f48087b.get()).hashCode())) == null || (uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(((NativeAd) b.this.f48087b.get()).hashCode()))).get("video_listener_key")) == null) {
                return;
            }
            uBiXNativeExpressVideoListener.onVideoProgressUpdate(j2, j3);
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void b(int i2) {
            try {
                if (b.this.f48087b == null || b.this.f48087b.get() == null) {
                    return;
                }
                f.a(((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getContext().getApplicationContext(), ((NativeAd) b.this.f48087b.get()).getAppIntroduceLink(), 0, b.this.f48091f, "", null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void c(int i2) {
            if (b.this.a() != null) {
                if (b.this.a().getCustomizeVideo() != null) {
                    b.this.a().getCustomizeVideo().reportVideoComplete();
                }
                if (b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) != null) {
                    com.ubix.ssp.ad.i.c cVar = this.f48101a;
                    cVar.a(cVar.n(i2), 5200);
                    UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("video_listener_key");
                    if (uBiXNativeExpressVideoListener != null) {
                        uBiXNativeExpressVideoListener.onVideoComplete();
                    }
                }
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.f
        public void d(int i2) {
            if (b.this.f48087b == null || b.this.f48087b.get() == null) {
                return;
            }
            b bVar = b.this;
            bVar.a(((NativeAd) bVar.f48087b.get()).hashCode());
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void e(int i2) {
            try {
                com.ubix.ssp.ad.d.a aVarN = this.f48101a.n(i2);
                if (aVarN.f45759a.f47449k) {
                    this.f48101a.a(aVarN, this.f48102b);
                    return;
                }
                u.e("onAdClosed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48102b;
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdClosed();
                }
                u.e("onAdClosed out");
            } catch (Throwable th) {
                th.printStackTrace();
                u.e("onAdClosed in");
                UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener2 = this.f48102b;
                if (uBiXNativeExpressInteractionListener2 != null) {
                    uBiXNativeExpressInteractionListener2.onAdClosed();
                }
                u.e("onAdClosed out");
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void f(int i2) {
            try {
                if (b.this.f48087b == null || b.this.f48087b.get() == null) {
                    return;
                }
                f.a(((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getContext().getApplicationContext(), ((NativeAd) b.this.f48087b.get()).getAppPermissionLink(), 0, b.this.f48091f, "", null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void g(int i2) {
            boolean z2;
            if (b.this.a() == null || b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) == null) {
                return;
            }
            try {
                Object obj = ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("lst_sts");
                Object obj2 = ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("lst_stp");
                boolean z3 = false;
                if (obj != null) {
                    z2 = Boolean.parseBoolean(obj + "");
                } else {
                    z2 = false;
                }
                if (obj2 != null) {
                    z3 = Boolean.parseBoolean(obj2 + "");
                }
                if (!z3 && !z2) {
                    return;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            HashMap map = (HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()));
            Boolean bool = Boolean.FALSE;
            map.put("lst_sts", bool);
            ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).put("lst_stp", bool);
            UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("video_listener_key");
            if (uBiXNativeExpressVideoListener != null) {
                uBiXNativeExpressVideoListener.onVideoPause();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void i(int i2) {
            try {
                if (b.this.f48087b == null || b.this.f48087b.get() == null) {
                    return;
                }
                f.a(((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getContext().getApplicationContext(), ((NativeAd) b.this.f48087b.get()).getAppPrivacyLink(), 0, b.this.f48091f, "", null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void j(int i2) {
            if (b.this.a() == null || b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) == null) {
                return;
            }
            long j2 = 0;
            boolean z2 = false;
            try {
                Object obj = ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("lst_res");
                Object obj2 = ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("lst_stp");
                if (obj != null) {
                    j2 = Long.parseLong(obj + "");
                }
                if (obj2 != null) {
                    z2 = Boolean.parseBoolean(obj2 + "");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (System.currentTimeMillis() - j2 <= 100 || z2) {
                return;
            }
            try {
                ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).put("lst_res", Long.valueOf(System.currentTimeMillis()));
                HashMap map = (HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()));
                Boolean bool = Boolean.TRUE;
                map.put("lst_sts", bool);
                ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).put("lst_stp", bool);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("video_listener_key");
            if (uBiXNativeExpressVideoListener != null) {
                uBiXNativeExpressVideoListener.onVideoResume();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void a(int i2, Bundle bundle) {
            if (b.this.c() != null) {
                b.this.c().a(bundle);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            com.ubix.ssp.ad.i.c cVarC = b.this.c();
            if (cVarC == null) {
                return;
            }
            if (map == null) {
                if (b.this.b() == null) {
                    return;
                } else {
                    map = ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).getClickMap();
                }
            }
            HashMap<String, String> map2 = map;
            com.ubix.ssp.ad.d.a aVarN = cVarC.n(i2);
            int iB = com.ubix.ssp.ad.e.s.b.c().b(aVarN.f45773o);
            if (iB == 46) {
                try {
                    if (!map2.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
                        map2.put("__NO_CLICK_CONFIRM_KEY__", "TRUE");
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            cVarC.a(cVarC.n(i2), new a(iB, aVarN));
            Object obj = (b.this.a() == null || b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) == null) ? null : ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("native_custom_confirm_window_listener_key");
            if (cVarC.a(cVarC.n(i2), view, map2, (UBiXNativeInteractionListener) null, this.f48102b, obj != null ? (com.ubix.ssp.ad.g.c) obj : null)) {
                aVarN.f45777s = true;
                ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).k();
                ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).s();
                if ("12".equals(map2.get("__CLICK_AREA__"))) {
                    ((com.ubix.ssp.ad.i.a) b.this.f48088c.get()).setSlideTrigger(true);
                    aVarN.f45778t = true;
                }
                map2.put("__MULTI_CLICK_KEY__", "TRUE");
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void h(int i2) {
            boolean z2;
            Object obj;
            if (b.this.a() != null) {
                try {
                    obj = ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("lst_sts");
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (obj != null) {
                    z2 = Boolean.parseBoolean(obj + "");
                } else {
                    z2 = false;
                }
                if (z2 || b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) == null) {
                    return;
                }
                ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).put("lst_sts", Boolean.TRUE);
                UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("video_listener_key");
                if (uBiXNativeExpressVideoListener != null) {
                    uBiXNativeExpressVideoListener.onVideoStart();
                }
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, AdError adError) {
            if (b.this.a() == null || b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode())) == null) {
                return;
            }
            com.ubix.ssp.ad.i.c cVar = this.f48101a;
            cVar.a(cVar.n(i2), 5200);
            UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener = (UBiXNativeExpressVideoListener) ((HashMap) b.this.f48089d.get(Integer.valueOf(b.this.a().hashCode()))).get("video_listener_key");
            if (uBiXNativeExpressVideoListener != null) {
                uBiXNativeExpressVideoListener.onVideoError(adError);
            }
        }
    }

    public class d implements UBiXNativeInteractionListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressInteractionListener f48107a;

        public d(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
            this.f48107a = uBiXNativeExpressInteractionListener;
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClicked(View view) {
            if (this.f48107a == null || b.this.f48091f.m0()) {
                return;
            }
            this.f48107a.onAdClicked(view);
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClosed() {
            UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48107a;
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdClosed();
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposeFailed(AdError adError) {
            UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48107a;
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdExposeFailed(adError);
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposed() {
            UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48107a;
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdExposed();
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdStatusChanged() {
        }
    }

    public b(com.ubix.ssp.ad.i.c cVar, NativeAd nativeAd, com.ubix.ssp.ad.i.a aVar, l lVar, ConcurrentHashMap<Integer, HashMap<String, Object>> concurrentHashMap) {
        this.f48089d = new ConcurrentHashMap<>();
        this.f48086a = new SoftReference<>(cVar);
        this.f48087b = new SoftReference<>(nativeAd);
        this.f48088c = new SoftReference<>(aVar);
        this.f48089d = concurrentHashMap;
        this.f48091f = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NativeAd a() {
        SoftReference<NativeAd> softReference = this.f48087b;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    private int b(int i2) {
        HashMap<String, Object> map = this.f48089d.get(Integer.valueOf(i2));
        if (map == null || map.get("native_ad_index_key") == null) {
            return -1;
        }
        try {
            return Integer.parseInt(map.get("native_ad_index_key") + "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static /* synthetic */ int h(b bVar) {
        int i2 = bVar.f48090e;
        bVar.f48090e = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ubix.ssp.ad.i.a b() {
        SoftReference<com.ubix.ssp.ad.i.a> softReference = this.f48088c;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ubix.ssp.ad.i.c c() {
        SoftReference<com.ubix.ssp.ad.i.c> softReference = this.f48086a;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r19) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.i.b.a(int):void");
    }

    public void a(com.ubix.ssp.ad.d.a aVar, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (a() == null) {
            AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(2, "广告View为空");
            SoftReference<com.ubix.ssp.ad.i.c> softReference = this.f48086a;
            if (softReference != null && softReference.get() != null) {
                this.f48086a.get().c(adErrorG);
            }
            u.e("onAdRenderFailed in");
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG);
            }
            u.e("onAdRenderFailed out");
            return;
        }
        SoftReference<com.ubix.ssp.ad.i.a> softReference2 = this.f48088c;
        if (softReference2 != null && softReference2.get() != null && aVar.f45777s) {
            this.f48088c.get().k();
        }
        int i2 = aVar.f45774p;
        if (i2 == 2013 || i2 == 2012 || i2 == 2014 || i2 == 2011) {
            if (this.f48087b.get().getCustomizeVideo() != null) {
                e.b().a(this.f48087b.get().getCustomizeVideo().getCoverUrl(), -1, new a(uBiXNativeExpressInteractionListener, arrayList, arrayList2));
                return;
            }
            AdError adErrorG2 = com.ubix.ssp.ad.e.a0.a0.a.g(2, "Custom视频内容为空");
            SoftReference<com.ubix.ssp.ad.i.c> softReference3 = this.f48086a;
            if (softReference3 != null && softReference3.get() != null) {
                this.f48086a.get().c(adErrorG2);
            }
            u.e("onAdRenderFailed in");
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG2);
            }
            u.e("onAdRenderFailed out");
            return;
        }
        if (a().getImageList() == null) {
            AdError adErrorG3 = com.ubix.ssp.ad.e.a0.a0.a.g(2, "广告View为空");
            SoftReference<com.ubix.ssp.ad.i.c> softReference4 = this.f48086a;
            if (softReference4 != null && softReference4.get() != null) {
                this.f48086a.get().c(adErrorG3);
            }
            u.e("onAdRenderFailed in");
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG3);
            }
            u.e("onAdRenderFailed out");
        }
        AtomicInteger atomicInteger = new AtomicInteger(this.f48087b.get().getImageList().size());
        AtomicInteger atomicInteger2 = new AtomicInteger(this.f48087b.get().getImageList().size());
        for (int i3 = 0; i3 < this.f48087b.get().getImageList().size(); i3++) {
            e.b().a(this.f48087b.get().getImageList().get(i3).getUrl(), new C0843b(arrayList, uBiXNativeExpressInteractionListener, atomicInteger, atomicInteger2));
        }
    }

    public void b(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        com.ubix.ssp.ad.i.c cVarC = c();
        SoftReference<com.ubix.ssp.ad.i.a> softReference = this.f48088c;
        if (softReference == null || softReference.get() == null || cVarC == null) {
            return;
        }
        this.f48088c.get().setInnerListener(new c(cVarC, uBiXNativeExpressInteractionListener));
    }

    public void a(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        this.f48087b.get().registerViews(this.f48088c.get(), new ArrayList(), null, new d(uBiXNativeExpressInteractionListener));
    }
}
