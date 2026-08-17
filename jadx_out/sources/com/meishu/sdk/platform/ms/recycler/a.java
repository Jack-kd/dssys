package com.meishu.sdk.platform.ms.recycler;

import android.text.TextUtils;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.v0;

/* loaded from: classes4.dex */
public class a implements com.meishu.sdk.meishu_ad.nativ.a {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.ad.recycler.a f32911a;

    /* renamed from: b, reason: collision with root package name */
    public c f32912b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f32913c;

    public a(c cVar, com.meishu.sdk.core.ad.recycler.a aVar) {
        this.f32912b = cVar;
        this.f32911a = aVar;
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADExposure() {
        try {
            if (this.f32913c) {
                return;
            }
            this.f32913c = true;
            v0.a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32912b.f32888a).getPosId(), 3);
            String[] monitorUrl = ((com.meishu.sdk.meishu_ad.nativ.f) this.f32912b.f32888a).getMonitorUrl();
            if (monitorUrl != null) {
                for (String str : monitorUrl) {
                    if (!TextUtils.isEmpty(str)) {
                        int act_type = ((com.meishu.sdk.meishu_ad.nativ.f) this.f32912b.f32888a).getAct_type();
                        if ((act_type & 2) == 2) {
                            act_type = (act_type - 2) | 1;
                        }
                        a0.a(this.f32912b.getContext(), i0.a(i0.a(str, act_type, AdType.FEED_MIX)), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            com.meishu.sdk.core.ad.recycler.a aVar = this.f32911a;
            if (aVar != null) {
                aVar.onAdExposure();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    @Override // com.meishu.sdk.meishu_ad.m0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onADLoaded(java.util.List<com.meishu.sdk.meishu_ad.nativ.b> r7) {
        /*
            r6 = this;
            java.util.List r7 = (java.util.List) r7
            com.meishu.sdk.core.ad.recycler.a r0 = r6.f32911a     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L58
            if (r7 == 0) goto L58
            com.meishu.sdk.platform.ms.recycler.c r0 = r6.f32912b     // Catch: java.lang.Throwable -> L44
            T extends com.meishu.sdk.core.ad.AdSlot r0 = r0.f32888a     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.meishu_ad.nativ.f r0 = (com.meishu.sdk.meishu_ad.nativ.f) r0     // Catch: java.lang.Throwable -> L44
            int r0 = r0.getDrawing()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.platform.ms.recycler.c r1 = r6.f32912b     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.core.loader.c r1 = r1.getAdLoader()     // Catch: java.lang.Throwable -> L44
            boolean r1 = r1 instanceof com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader     // Catch: java.lang.Throwable -> L44
            r2 = 0
            if (r1 == 0) goto L21
            r1 = 1
            if (r0 == r1) goto L21
            goto L22
        L21:
            r1 = r2
        L22:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L44
            r0.<init>()     // Catch: java.lang.Throwable -> L44
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> L44
        L2b:
            boolean r3 = r7.hasNext()     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L53
            java.lang.Object r3 = r7.next()     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.meishu_ad.nativ.b r3 = (com.meishu.sdk.meishu_ad.nativ.b) r3     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L46
            com.meishu.sdk.platform.ms.recycler.i r4 = new com.meishu.sdk.platform.ms.recycler.i     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.platform.ms.recycler.c r5 = r6.f32912b     // Catch: java.lang.Throwable -> L44
            r4.<init>(r5, r3, r2)     // Catch: java.lang.Throwable -> L44
            r0.add(r4)     // Catch: java.lang.Throwable -> L44
            goto L50
        L44:
            r7 = move-exception
            goto L59
        L46:
            com.meishu.sdk.platform.ms.recycler.l r4 = new com.meishu.sdk.platform.ms.recycler.l     // Catch: java.lang.Throwable -> L44
            com.meishu.sdk.platform.ms.recycler.c r5 = r6.f32912b     // Catch: java.lang.Throwable -> L44
            r4.<init>(r5, r3, r2)     // Catch: java.lang.Throwable -> L44
            r0.add(r4)     // Catch: java.lang.Throwable -> L44
        L50:
            int r2 = r2 + 1
            goto L2b
        L53:
            com.meishu.sdk.core.ad.recycler.a r7 = r6.f32911a     // Catch: java.lang.Throwable -> L44
            r7.onAdReady(r0)     // Catch: java.lang.Throwable -> L44
        L58:
            return
        L59:
            r7.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.recycler.a.onADLoaded(java.lang.Object):void");
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        try {
            if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32912b.f32888a).getErrorUrl() != null) {
                a0.a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32912b.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
            }
            com.meishu.sdk.core.ad.recycler.a aVar = this.f32911a;
            if (aVar != null) {
                aVar.onAdPlatformError(new com.meishu.sdk.platform.ms.d(str, Integer.valueOf(i2)));
                this.f32911a.onAdRenderFail(str, i2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
