package com.anythink.banner.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.anythink.core.common.l.d.a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1329a = i.o.f2699c + a.class.getSimpleName();

    /* renamed from: f, reason: collision with root package name */
    private static final Map<String, a> f1330f = new ConcurrentHashMap(3);

    /* renamed from: b, reason: collision with root package name */
    ATAdCreateConfig f1331b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f1332c;

    /* renamed from: d, reason: collision with root package name */
    private final String f1333d;

    /* renamed from: e, reason: collision with root package name */
    private final f f1334e;

    private a(Context context, String str) {
        this(context, str, null);
    }

    private static a a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, a> map = f1330f;
        a aVar = map.get(str);
        if (aVar != null) {
            return aVar;
        }
        synchronized (a.class) {
            if (aVar == null) {
                try {
                    aVar = new a(context, str);
                    map.put(str, aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return aVar;
    }

    private String e() {
        f fVar = this.f1334e;
        return fVar != null ? fVar.m() : "";
    }

    public final f b() {
        return this.f1334e;
    }

    public final boolean c() {
        return this.f1334e.l();
    }

    public final void d() {
        f fVar;
        ATAdCreateConfig aTAdCreateConfig = this.f1331b;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton() || (fVar = this.f1334e) == null) {
            return;
        }
        fVar.p();
    }

    public a(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.f1332c = context.getApplicationContext();
        this.f1333d = str;
        this.f1331b = aTAdCreateConfig;
        if (aTAdCreateConfig == null) {
            this.f1334e = f.a(context, str, "2");
        } else {
            if (!aTAdCreateConfig.isMultiton()) {
                this.f1334e = f.a(context, str, "2");
                return;
            }
            f fVar = new f(context, str, "2");
            this.f1334e = fVar;
            fVar.u();
        }
    }

    public final void b(Map<String, Object> map) {
        f fVar = this.f1334e;
        if (fVar != null) {
            fVar.b(map);
        }
    }

    public final boolean a() {
        ATAdCreateConfig aTAdCreateConfig = this.f1331b;
        return aTAdCreateConfig != null && aTAdCreateConfig.isMultiton();
    }

    public final void a(Context context, int i2, com.anythink.core.common.d.a aVar, com.anythink.core.common.d.c cVar, ATAdMultipleLoadedListener aTAdMultipleLoadedListener, Map<String, Object> map, ATAdRequest aTAdRequest) {
        as asVar = new as();
        asVar.f3812d = cVar;
        asVar.f3814f = aTAdMultipleLoadedListener;
        asVar.a(context);
        asVar.a(aTAdRequest);
        asVar.f3811c = i2;
        if (map != null) {
            try {
                asVar.f3815g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        if (aTAdRequest != null) {
            asVar.f3820l = aTAdRequest.getATAdxBidFloorInfo();
        }
        this.f1334e.b(this.f1332c, "2", this.f1333d, asVar, aVar);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.f1334e.a(context);
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.f1334e.a(context, map);
    }

    public final com.anythink.core.common.h.c a(Context context, boolean z2, ae aeVar) {
        return this.f1334e.b(context, false, z2, aeVar);
    }

    public final void a(com.anythink.core.common.h.c cVar) {
        this.f1334e.a(cVar);
    }

    public final View a(Context context, com.anythink.core.common.h.c cVar, CustomBannerAdapter customBannerAdapter, final b bVar, ATNativeAdCustomRender aTNativeAdCustomRender) {
        if (customBannerAdapter != null && cVar != null) {
            if (!customBannerAdapter.isMixNative()) {
                customBannerAdapter.setAdEventListener(bVar);
                return customBannerAdapter.getBannerView();
            }
            if (cVar.f() == null) {
                return null;
            }
            com.anythink.core.common.l.c.a.a aVarA = com.anythink.core.common.inner.mixad.b.b.a(customBannerAdapter, new a.C0063a().a(context).a(customBannerAdapter.getTrackingInfo()).a(cVar.f()).a(aTNativeAdCustomRender).a(new com.anythink.core.common.l.e.a(cVar) { // from class: com.anythink.banner.a.a.1
                @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
                public final void onAdClicked(View view) {
                    super.onAdClicked(view);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onBannerAdClicked();
                    }
                }

                @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
                public final void onAdImpressed() {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onBannerAdShow();
                    }
                }

                @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
                public final void onClose() {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onBannerAdClose();
                    }
                }

                @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
                public final void onDeeplinkCallback(boolean z2) {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onDeeplinkCallback(z2);
                    }
                }

                @Override // com.anythink.core.common.l.e.a, com.anythink.core.common.l.e.a.b
                public final void onDownloadConfirmCallback(Context context2, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onDownloadConfirm(context2, aTNetworkConfirmInfo);
                    }
                }
            }).a());
            if (aVarA instanceof com.anythink.core.common.l.c.a.b) {
                return ((com.anythink.core.common.l.c.a.b) aVarA).a();
            }
        }
        return null;
    }

    public static void a(String str) {
        Map<String, a> map = f1330f;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.remove(str);
    }

    public final void a(int i2) {
        f fVar = this.f1334e;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public final void a(List<ATAdInfo> list) {
        f fVar = this.f1334e;
        if (fVar != null) {
            fVar.a(list);
        }
    }

    public final void a(Map<String, Object> map) {
        f fVar = this.f1334e;
        if (fVar != null) {
            fVar.a(map);
        }
    }
}
