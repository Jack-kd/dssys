package com.anythink.network.toutiao;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKUtils;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.k;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.toutiao.TTATNativeExpressHandler;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTClientBidding;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATAdapter extends CustomNativeAdapter {

    /* renamed from: b, reason: collision with root package name */
    String f10252b;

    /* renamed from: c, reason: collision with root package name */
    String f10253c;

    /* renamed from: d, reason: collision with root package name */
    String f10254d;

    /* renamed from: a, reason: collision with root package name */
    private final String f10251a = getClass().getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    int f10255e = 0;

    /* renamed from: f, reason: collision with root package name */
    String f10256f = "";

    /* renamed from: g, reason: collision with root package name */
    boolean f10257g = false;

    /* renamed from: h, reason: collision with root package name */
    boolean f10258h = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10259a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10260b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10261c;

        public a(Context context, Map map, Map map2) {
            this.f10259a = context;
            this.f10260b = map;
            this.f10261c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            TTATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            TTATAdapter tTATAdapter = TTATAdapter.this;
            tTATAdapter.a(this.f10259a, (Map<String, Object>) this.f10260b, (Map<String, Object>) this.f10261c, tTATAdapter.f10257g ? 1 : ((ATBaseAdInternalAdapter) tTATAdapter).mRequestNum);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10263a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10264b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10265c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f10266d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f10267e;

        public class a implements TTAdNative.NativeExpressAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10269a;

            public a(boolean z2) {
                this.f10269a = z2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                b bVar = b.this;
                TTATAdapter.this.a(bVar.f10263a, list, this.f10269a, false);
            }
        }

        /* renamed from: com.anythink.network.toutiao.TTATAdapter$b$b, reason: collision with other inner class name */
        public class C0114b implements TTAdNative.NativeExpressAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10271a;

            public C0114b(boolean z2) {
                this.f10271a = z2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                b bVar = b.this;
                TTATAdapter.this.a(bVar.f10263a, list, this.f10271a, true);
            }
        }

        public class c implements TTAdNative.FeedAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10273a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f10274b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f10275c;

            public c(boolean z2, Bitmap bitmap, int i2) {
                this.f10273a = z2;
                this.f10274b = bitmap;
                this.f10275c = i2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onFeedAdLoad(List<TTFeedAd> list) {
                ArrayList arrayList = new ArrayList();
                for (TTFeedAd tTFeedAd : list) {
                    b bVar = b.this;
                    Context context = bVar.f10263a;
                    TTATAdapter tTATAdapter = TTATAdapter.this;
                    arrayList.add(new TTATNativeAd(context, tTATAdapter.f10252b, tTFeedAd, this.f10273a, this.f10274b, this.f10275c, tTATAdapter.f10258h));
                }
                TTATAdapter.this.c(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
            }
        }

        public class d implements TTAdNative.DrawFeedAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10277a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f10278b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f10279c;

            public d(boolean z2, Bitmap bitmap, int i2) {
                this.f10277a = z2;
                this.f10278b = bitmap;
                this.f10279c = i2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
            public void onDrawFeedAdLoad(List<TTDrawFeedAd> list) {
                ArrayList arrayList = new ArrayList();
                for (TTDrawFeedAd tTDrawFeedAd : list) {
                    b bVar = b.this;
                    Context context = bVar.f10263a;
                    TTATAdapter tTATAdapter = TTATAdapter.this;
                    arrayList.add(new TTATNativeAd(context, tTATAdapter.f10252b, tTDrawFeedAd, this.f10277a, this.f10278b, this.f10279c, tTATAdapter.f10258h));
                }
                TTATAdapter.this.c(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }
        }

        public class e implements TTAdNative.NativeAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10281a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f10282b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f10283c;

            public e(boolean z2, Bitmap bitmap, int i2) {
                this.f10281a = z2;
                this.f10282b = bitmap;
                this.f10283c = i2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
            public void onNativeAdLoad(List<TTNativeAd> list) {
                ArrayList arrayList = new ArrayList();
                for (TTNativeAd tTNativeAd : list) {
                    b bVar = b.this;
                    Context context = bVar.f10263a;
                    TTATAdapter tTATAdapter = TTATAdapter.this;
                    arrayList.add(new TTATNativeAd(context, tTATAdapter.f10252b, tTNativeAd, this.f10281a, this.f10282b, this.f10283c, tTATAdapter.f10258h));
                }
                TTATAdapter.this.c(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
            }
        }

        public class f implements TTAdNative.NativeAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10285a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f10286b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f10287c;

            public f(boolean z2, Bitmap bitmap, int i2) {
                this.f10285a = z2;
                this.f10286b = bitmap;
                this.f10287c = i2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
            public void onNativeAdLoad(List<TTNativeAd> list) {
                ArrayList arrayList = new ArrayList();
                for (TTNativeAd tTNativeAd : list) {
                    b bVar = b.this;
                    Context context = bVar.f10263a;
                    TTATAdapter tTATAdapter = TTATAdapter.this;
                    arrayList.add(new TTATNativeAd(context, tTATAdapter.f10252b, tTNativeAd, this.f10285a, this.f10286b, this.f10287c, tTATAdapter.f10258h));
                }
                TTATAdapter.this.c(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
            }
        }

        public class g implements TTAdNative.FeedAdListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f10289a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f10290b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f10291c;

            public g(boolean z2, Bitmap bitmap, int i2) {
                this.f10289a = z2;
                this.f10290b = bitmap;
                this.f10291c = i2;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onError(int i2, String str) {
                TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onFeedAdLoad(List<TTFeedAd> list) {
                if (list == null || list.isEmpty()) {
                    TTATAdapter.this.notifyATLoadFail("", "Ad list is empty.");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (TTFeedAd tTFeedAd : list) {
                    b bVar = b.this;
                    Context context = bVar.f10263a;
                    TTATAdapter tTATAdapter = TTATAdapter.this;
                    arrayList.add(new TTATNativePatchAd(context, tTATAdapter.f10252b, tTFeedAd, this.f10289a, this.f10290b, this.f10291c, tTATAdapter.f10258h));
                }
                TTATAdapter.this.c(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
            }
        }

        public b(Context context, Map map, Map map2, int i2, Context context2) {
            this.f10263a = context;
            this.f10264b = map;
            this.f10265c = map2;
            this.f10266d = i2;
            this.f10267e = context2;
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0239  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0246  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0256  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0266  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0273  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01e5  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01fa  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0205  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0210  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x021b  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0224  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 668
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.toutiao.TTATAdapter.b.run():void");
        }
    }

    public class c implements TTATNativeExpressHandler.RenderCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10293a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f10294b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f10295c;

        public c(Context context, boolean z2, boolean z3) {
            this.f10293a = context;
            this.f10294b = z2;
            this.f10295c = z3;
        }

        @Override // com.anythink.network.toutiao.TTATNativeExpressHandler.RenderCallback
        public void onRenderFail(String str, int i2) {
            TTATAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
        }

        @Override // com.anythink.network.toutiao.TTATNativeExpressHandler.RenderCallback
        public void onRenderSuccess(List<TTATNativeExpressHandler.TTNativeExpressAdWrapper> list) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (TTATNativeExpressHandler.TTNativeExpressAdWrapper tTNativeExpressAdWrapper : list) {
                arrayList.add(new TTATNativeExpressAd(this.f10293a, TTATAdapter.this.f10252b, tTNativeExpressAdWrapper.ttNativeExpressAd, this.f10294b, this.f10295c, tTNativeExpressAdWrapper.expressWidth, tTNativeExpressAdWrapper.expressHeight));
                arrayList2.add(tTNativeExpressAdWrapper.ttNativeExpressAd);
            }
            TTATAdapter.this.c(arrayList2, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<? extends TTClientBidding> list, CustomNativeAd... customNativeAdArr) {
        if (list.size() == 0 || customNativeAdArr.length == 0) {
            notifyATLoadFail("", "Ad list is empty.");
            return;
        }
        if (this.f10257g) {
            if (this.mBiddingListener != null) {
                TTATInitManager.getInstance().a(a(list, customNativeAdArr), customNativeAdArr[0], list.get(0), this.mBiddingListener);
                this.mBiddingListener = null;
                return;
            }
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(customNativeAdArr);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return TTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return TTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10252b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return TTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws Throwable {
        if (a(map, map2)) {
            TTATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        } else {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws Throwable {
        this.f10257g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    private void b(List<? extends TTClientBidding> list, CustomNativeAd... customNativeAdArr) {
        if (list.size() == 0 || customNativeAdArr.length == 0) {
            notifyATLoadFail("", "Ad list is empty.");
        } else {
            TTATInitManager.getInstance().notifyAdDataLoad(this.f10257g, a(list, customNativeAdArr), list.get(0), this.mLoadListener, this.mBiddingListener, customNativeAdArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2, int i2) {
        Context applicationContext = context.getApplicationContext();
        if (TextUtils.isEmpty(this.f10254d)) {
            notifyATLoadFail("", "nativeType is empty");
        } else {
            runOnNetworkRequestThread(new b(applicationContext, map2, map, i2, context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, List<TTNativeExpressAd> list, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        Iterator<TTNativeExpressAd> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new TTATNativeExpressAd(context, this.f10252b, it.next(), z2, z3));
        }
        b(list, (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]));
        new TTATNativeExpressHandler(list).startRender(new c(context, z2, z3));
    }

    private Map<String, Object> a(List<? extends TTClientBidding> list, CustomNativeAd... customNativeAdArr) {
        TTClientBidding tTClientBidding = list.get(0);
        HashMap map = new HashMap(3);
        if (tTClientBidding instanceof TTNativeAd) {
            try {
                Map<String, Object> mediaExtraInfo = ((TTNativeAd) tTClientBidding).getMediaExtraInfo();
                if (mediaExtraInfo != null) {
                    map.putAll(mediaExtraInfo);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (tTClientBidding instanceof TTNativeExpressAd) {
            try {
                Map<String, Object> mediaExtraInfo2 = ((TTNativeExpressAd) tTClientBidding).getMediaExtraInfo();
                if (mediaExtraInfo2 != null) {
                    map.putAll(mediaExtraInfo2);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return map;
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String str = (String) map.get("app_id");
        this.f10252b = (String) map.get("slot_id");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.f10252b)) {
            return false;
        }
        this.f10253c = "1";
        if (map.containsKey("layout_type")) {
            this.f10253c = (String) map.get("layout_type");
        } else {
            this.f10253c = "0";
        }
        if (map.containsKey("is_video")) {
            this.f10254d = map.get("is_video").toString();
        }
        try {
            if (map.containsKey("media_size")) {
                this.f10255e = Integer.parseInt(map.get("media_size").toString());
            }
        } catch (Exception unused) {
        }
        if (map.containsKey("payload")) {
            this.f10256f = map.get("payload").toString();
        }
        this.f10258h = ATInitMediation.getIntFromMap(map, k.aK, 2) == 2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<Integer, Integer> a(Context context, Map<String, Object> map) {
        try {
            String stringFromMap = ATInitMediation.getStringFromMap(map, "size");
            if (!TextUtils.isEmpty(stringFromMap)) {
                if (stringFromMap.split("x").length == 2) {
                    return new Pair<>(Integer.valueOf(ATSDKUtils.dip2px(context, Integer.parseInt(r4[0]))), Integer.valueOf(ATSDKUtils.dip2px(context, Integer.parseInt(r4[1]))));
                }
            }
        } catch (Throwable unused) {
        }
        return new Pair<>(Integer.valueOf(ATSDKUtils.dip2px(context, 300.0f)), Integer.valueOf(ATSDKUtils.dip2px(context, 250.0f)));
    }
}
