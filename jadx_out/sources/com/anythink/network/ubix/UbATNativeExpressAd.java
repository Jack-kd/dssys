package com.anythink.network.ubix;

import android.content.Context;
import android.view.View;
import com.anythink.network.ubix.UbATNativeAd;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressAdListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class UbATNativeExpressAd extends UbATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10497a = UbATNativeExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final UbATNativeAd.AdListener f10498b;

    public class a implements UBiXNativeExpressAdListener {

        /* renamed from: com.anythink.network.ubix.UbATNativeExpressAd$a$a, reason: collision with other inner class name */
        public class C0117a implements UBiXNativeExpressInteractionListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f10500a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ UbATExpressAd[] f10501b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ AtomicInteger f10502c;

            /* renamed from: d, reason: collision with root package name */
            final /* synthetic */ AtomicBoolean f10503d;

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ int f10504e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ long f10505f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ List f10506g;

            public C0117a(int i2, UbATExpressAd[] ubATExpressAdArr, AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, int i3, long j2, List list) {
                this.f10500a = i2;
                this.f10501b = ubATExpressAdArr;
                this.f10502c = atomicInteger;
                this.f10503d = atomicBoolean;
                this.f10504e = i3;
                this.f10505f = j2;
                this.f10506g = list;
            }

            private void a() {
                if (this.f10502c.decrementAndGet() != 0) {
                    return;
                }
                if (this.f10503d.compareAndSet(false, true)) {
                    ArrayList arrayList = new ArrayList(this.f10504e);
                    long price = this.f10505f;
                    NativeExpressAd nativeExpressAd = null;
                    for (int i2 = 0; i2 < this.f10504e; i2++) {
                        UbATExpressAd ubATExpressAd = this.f10501b[i2];
                        if (ubATExpressAd != null) {
                            arrayList.add(ubATExpressAd);
                            if (nativeExpressAd == null) {
                                NativeExpressAd nativeExpressAd2 = (NativeExpressAd) this.f10506g.get(i2);
                                nativeExpressAd = nativeExpressAd2;
                                price = nativeExpressAd2.getPrice();
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        if (UbATNativeExpressAd.this.f10498b != null) {
                            UbATNativeExpressAd.this.f10498b.onNativeAdFailToLoad("", "all renders failed");
                        }
                    } else if (UbATNativeExpressAd.this.f10498b != null) {
                        UbATNativeExpressAd.this.f10498b.onNativeAdLoadSuccess(arrayList, nativeExpressAd, price);
                    }
                }
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdClicked(View view) {
                String unused = UbATNativeExpressAd.this.f10497a;
                UbATExpressAd ubATExpressAd = this.f10501b[this.f10500a];
                if (ubATExpressAd != null) {
                    ubATExpressAd.notifyAdClicked();
                }
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdClosed() {
                String unused = UbATNativeExpressAd.this.f10497a;
                UbATExpressAd ubATExpressAd = this.f10501b[this.f10500a];
                if (ubATExpressAd != null) {
                    ubATExpressAd.notifyAdDislikeClick();
                }
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdExposeFailed(AdError adError) {
                String unused = UbATNativeExpressAd.this.f10497a;
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdExposed() {
                String unused = UbATNativeExpressAd.this.f10497a;
                UbATExpressAd ubATExpressAd = this.f10501b[this.f10500a];
                if (ubATExpressAd != null) {
                    ubATExpressAd.notifyAdImpression();
                }
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdRenderFailed(AdError adError) {
                if (adError != null) {
                    adError.getErrorCode();
                }
                if (adError != null) {
                    adError.getErrorMessage();
                }
                String unused = UbATNativeExpressAd.this.f10497a;
                this.f10501b[this.f10500a] = null;
                a();
            }

            @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener
            public void onAdRenderSucceed(View view) {
                String unused = UbATNativeExpressAd.this.f10497a;
                Objects.toString(view);
                if (view != null) {
                    this.f10501b[this.f10500a].a(view);
                } else {
                    this.f10501b[this.f10500a] = null;
                }
                a();
            }
        }

        public a() {
        }

        @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressAdListener
        public void onAdLoadFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String unused = UbATNativeExpressAd.this.f10497a;
            if (UbATNativeExpressAd.this.f10498b != null) {
                UbATNativeExpressAd.this.f10498b.onNativeAdFailToLoad(String.valueOf(errorCode), errorMessage);
            }
        }

        @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressAdListener
        public void onAdLoadSucceed(List<NativeExpressAd> list) {
            if (list == null || list.isEmpty()) {
                if (UbATNativeExpressAd.this.f10498b != null) {
                    UbATNativeExpressAd.this.f10498b.onNativeAdFailToLoad("", "express list is null");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (NativeExpressAd nativeExpressAd : list) {
                if (nativeExpressAd != null) {
                    arrayList.add(nativeExpressAd);
                }
            }
            if (!arrayList.isEmpty()) {
                NativeExpressAd nativeExpressAd2 = (NativeExpressAd) arrayList.get(0);
                long price = nativeExpressAd2.getPrice();
                int size = arrayList.size();
                String unused = UbATNativeExpressAd.this.f10497a;
                UbATExpressAd[] ubATExpressAdArr = new UbATExpressAd[size];
                ArrayList arrayList2 = new ArrayList(size);
                for (int i2 = 0; i2 < size; i2++) {
                    UbATExpressAd ubATExpressAd = new UbATExpressAd((NativeExpressAd) arrayList.get(i2), null);
                    ubATExpressAdArr[i2] = ubATExpressAd;
                    arrayList2.add(ubATExpressAd);
                }
                if (UbATNativeExpressAd.this.f10498b != null) {
                    UbATNativeExpressAd.this.f10498b.onNativeAdDataLoaded(arrayList2, nativeExpressAd2, price);
                }
                AtomicInteger atomicInteger = new AtomicInteger(size);
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                for (int i3 = 0; i3 < size; i3++) {
                    ((NativeExpressAd) arrayList.get(i3)).renderExpressNativeAd(new C0117a(i3, ubATExpressAdArr, atomicInteger, atomicBoolean, size, price, arrayList));
                }
            } else if (UbATNativeExpressAd.this.f10498b != null) {
                UbATNativeExpressAd.this.f10498b.onNativeAdFailToLoad("", "express list contains only null items");
            }
        }
    }

    public UbATNativeExpressAd(UbATNativeAd.AdListener adListener) {
        this.f10498b = adListener;
    }

    @Override // com.anythink.network.ubix.UbATNativeAd
    public void destroy() {
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    @Override // com.anythink.network.ubix.UbATNativeAd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(android.content.Context r3, java.lang.String r4, java.util.Map<java.lang.String, java.lang.Object> r5, java.util.Map<java.lang.String, java.lang.Object> r6) {
        /*
            r2 = this;
            java.lang.String r5 = "key_height"
            java.lang.String r0 = "key_width"
            if (r6 == 0) goto L1e
            boolean r1 = r6.containsKey(r0)     // Catch: java.lang.Throwable -> L1e
            if (r1 == 0) goto L1e
            java.lang.Object r0 = r6.get(r0)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L1e
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L1e
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L1e
            int r0 = a(r3, r0)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        L1e:
            r0 = -1
        L1f:
            if (r6 == 0) goto L39
            boolean r1 = r6.containsKey(r5)     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L39
            java.lang.Object r5 = r6.get(r5)     // Catch: java.lang.Throwable -> L39
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L39
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L39
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L39
            int r5 = a(r3, r5)     // Catch: java.lang.Throwable -> L39
            goto L3a
        L39:
            r5 = 0
        L3a:
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L60
            r1.getName()     // Catch: java.lang.Throwable -> L60
            com.ubix.ssp.open.AdSize r1 = new com.ubix.ssp.open.AdSize     // Catch: java.lang.Throwable -> L60
            if (r5 > 0) goto L46
            r5 = -2
        L46:
            r1.<init>(r0, r5)     // Catch: java.lang.Throwable -> L60
            com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager r5 = com.ubix.ssp.open.manager.UBiXAdManager.createNativeExpressAd()     // Catch: java.lang.Throwable -> L60
            java.util.HashMap r6 = com.anythink.network.ubix.UbATConst.toExtraMap(r6)     // Catch: java.lang.Throwable -> L60
            r5.setExtraInfo(r6)     // Catch: java.lang.Throwable -> L60
            com.anythink.network.ubix.UbATNativeExpressAd$a r6 = new com.anythink.network.ubix.UbATNativeExpressAd$a     // Catch: java.lang.Throwable -> L60
            r6.<init>()     // Catch: java.lang.Throwable -> L60
            r5.loadNativeExpressAd(r3, r4, r1, r6)     // Catch: java.lang.Throwable -> L60
            r5.loadAd()     // Catch: java.lang.Throwable -> L60
            goto L7f
        L60:
            r3 = move-exception
            com.anythink.network.ubix.UbATNativeAd$AdListener r4 = r2.f10498b
            if (r4 == 0) goto L7f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "loadAd exception:"
            r5.append(r6)
            java.lang.String r3 = r3.getMessage()
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            java.lang.String r5 = ""
            r4.onNativeAdFailToLoad(r5, r3)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.ubix.UbATNativeExpressAd.loadAd(android.content.Context, java.lang.String, java.util.Map, java.util.Map):void");
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }
}
