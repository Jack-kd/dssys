package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.json.CyclicObjectException;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.C1256g;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ai;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.network.f;
import com.sigmob.sdk.mraid.C1315g;
import com.sigmob.sdk.mraid2.C1326d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1326d implements InterfaceC1332j {

    /* renamed from: a, reason: collision with root package name */
    private static final String f38158a = "Mraid2Bridge";

    /* renamed from: e, reason: collision with root package name */
    private static C1338p f38159e;

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, List<String>> f38160h = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private final List<BaseAdUnit> f38161b;

    /* renamed from: c, reason: collision with root package name */
    private InterfaceC1333k f38162c;

    /* renamed from: d, reason: collision with root package name */
    private C1325c f38163d;

    /* renamed from: f, reason: collision with root package name */
    private InterfaceC1328f f38164f;

    /* renamed from: g, reason: collision with root package name */
    private final List<BaseAdUnit> f38165g;

    /* renamed from: i, reason: collision with root package name */
    private volatile boolean f38166i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f38167j;

    /* renamed from: k, reason: collision with root package name */
    private String f38168k;

    /* renamed from: com.sigmob.sdk.mraid2.d$2, reason: invalid class name */
    public class AnonymousClass2 implements f.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1326d f38170a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f38171b;

        public AnonymousClass2(C1326d c1326d, String str) {
            this.f38170a = c1326d;
            this.f38171b = str;
        }

        @Override // com.sigmob.sdk.base.network.f.a
        public void a(int i2, String str, String str2, LoadAdRequest loadAdRequest) throws JSONException {
            com.sigmob.sdk.base.utils.k.f(C1326d.f38158a, "onErrorResponse: error = " + i2 + ", message = " + str, new Object[0]);
            this.f38170a.a(this.f38171b, (BidResponse) null, i2, str);
            ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(List list, BaseAdUnit baseAdUnit, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
                options.put("request_id", baseAdUnit.getRequestId());
            }
        }

        @Override // com.sigmob.sdk.base.network.f.a
        public void a(final List<BaseAdUnit> list, LoadAdRequest loadAdRequest) throws JSONException {
            if (com.sigmob.sdk.base.utils.f.a(list)) {
                return;
            }
            com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "onSuccess: size = " + list.size(), new Object[0]);
            C1326d.this.f38165g.addAll(list);
            this.f38170a.a(this.f38171b, C1326d.this.a(list), 0, (String) null);
            final BaseAdUnit baseAdUnit = list.get(0);
            ad.a(PointCategory.RESPOND, "1", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.E
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1326d.AnonymousClass2.a(list, baseAdUnit, obj);
                }
            });
        }
    }

    /* renamed from: com.sigmob.sdk.mraid2.d$a */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<C1326d> f38173a;

        public a(C1326d c1326d) {
            this.f38173a = new WeakReference<>(c1326d);
        }

        public C1326d a() {
            return this.f38173a.get();
        }

        @JavascriptInterface
        public String addDclog(JSONObject jSONObject) {
            com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "addDclog: jsonData = " + jSONObject, new Object[0]);
            try {
                if (jSONObject == null) {
                    return C1326d.a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "not params", (Object) null);
                }
                C1326d c1326dA = a();
                final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has(PointParamKey._AC_TYPE)) {
                    return C1326d.a(300, "_ac_type is empty", (Object) null);
                }
                String strOptString = jSONObjectOptJSONObject.optString(PointParamKey._AC_TYPE);
                String strOptString2 = jSONObject.optString(PointParamKey.VID);
                if (jSONObjectOptJSONObject.optString(PointParamKey.CATEGORY).equals("start") && c1326dA != null && c1326dA.f38164f != null) {
                    c1326dA.f38164f.d();
                }
                ad.a(strOptString, c1326dA == null ? null : c1326dA.b(strOptString2), c1326dA == null ? null : c1326dA.j(), new ad.a() { // from class: com.sigmob.sdk.mraid2.I
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1326d.a.a(jSONObjectOptJSONObject, obj);
                    }
                });
                return C1326d.a(200, "add dc log success", (Object) null);
            } catch (Throwable th) {
                return C1326d.a(500, th.toString(), (Object) null);
            }
        }

        @JavascriptInterface
        public String func(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.has("func") ? jSONObject.getString("func") : null;
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) string)) {
                    return C1326d.a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "func is empty.", (Object) null);
                }
                ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(this, string.replace(":", ""));
                methodBuilder.addParam(JSONObject.class, jSONObject);
                return (String) methodBuilder.execute();
            } catch (Throwable th) {
                return C1326d.a(500, th.getMessage(), (Object) null);
            }
        }

        @JavascriptInterface
        public String getDeviceInfo() {
            try {
                com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "getDeviceInfo", new Object[0]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("clientType", ClientMetadata.getDeviceModel());
                jSONObject.put("osVersion", ClientMetadata.getDeviceOsVersion());
                jSONObject.put("appVersion", ClientMetadata.getInstance().getAppVersion());
                jSONObject.put("width", ClientMetadata.getInstance().getDisplayMetrics().widthPixels);
                jSONObject.put("height", ClientMetadata.getInstance().getDisplayMetrics().heightPixels);
                jSONObject.put("screenDensity", ClientMetadata.getInstance().getDensityDpi());
                jSONObject.put("networkType", ClientMetadata.getInstance().getActiveNetworkType());
                jSONObject.put("pkgName", ClientMetadata.getInstance().getAppPackageName());
                jSONObject.put("userAgent", Networking.getUserAgent());
                jSONObject.put("uid", ClientMetadata.getUid());
                jSONObject.put("udid", ClientMetadata.getInstance().getUDID());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("imei", "");
                jSONObject2.put("androidId", ClientMetadata.getInstance().getAndroidId());
                jSONObject2.put("googleId", ClientMetadata.getInstance().getAdvertisingId());
                jSONObject2.put("oaid", ClientMetadata.getInstance().getOAID());
                jSONObject.put("android", jSONObject2);
                return jSONObject.toString();
            } catch (Throwable th) {
                com.sigmob.sdk.base.utils.k.f(C1326d.f38158a, "getDeviceInfo: error = " + th, new Object[0]);
                return null;
            }
        }

        @JavascriptInterface
        public String getUniqueId() {
            C1326d c1326dA = a();
            if (c1326dA == null) {
                return null;
            }
            return c1326dA.a().getUniqueId();
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String handleMacro(org.json.JSONObject r12) {
            /*
                Method dump skipped, instructions count: 330
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1326d.a.handleMacro(org.json.JSONObject):java.lang.String");
        }

        @JavascriptInterface
        public void postMessage(final String str) {
            final C1326d c1326dA;
            com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "postMessage: data = " + str, new Object[0]);
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (c1326dA = a()) == null || c1326dA.f38163d == null) {
                return;
            }
            c1326dA.f38163d.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.F
                @Override // java.lang.Runnable
                public final void run() {
                    C1326d c1326d = c1326dA;
                    c1326d.a(c1326d, str);
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00b1  */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String storage(java.lang.String r12) {
            /*
                Method dump skipped, instructions count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1326d.a.storage(java.lang.String):java.lang.String");
        }

        @JavascriptInterface
        public String tracking(JSONObject jSONObject) {
            int iOptInt;
            String strOptString;
            boolean z2;
            boolean z3;
            boolean zOptBoolean;
            com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "tracking: jsonData = " + jSONObject, new Object[0]);
            try {
                if (jSONObject == null) {
                    return C1326d.a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "not params", (Object) null);
                }
                String strOptString2 = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("urls");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject == null) {
                    iOptInt = 0;
                    zOptBoolean = false;
                    z2 = false;
                    z3 = false;
                    strOptString = "";
                } else {
                    boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("inQueue");
                    boolean zOptBoolean3 = jSONObjectOptJSONObject.optBoolean("statistic");
                    iOptInt = jSONObjectOptJSONObject.optInt("retry");
                    strOptString = jSONObjectOptJSONObject.optString(PointParamKey.VID);
                    z2 = zOptBoolean2;
                    z3 = zOptBoolean3;
                    zOptBoolean = jSONObjectOptJSONObject.optBoolean("repeat");
                }
                C1326d c1326dA = a();
                Context context = c1326dA == null ? null : c1326dA.f38163d.getContext();
                BaseAdUnit baseAdUnitB = c1326dA == null ? null : c1326dA.b(strOptString);
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString2, (CharSequence) "click")) {
                    if (context == null || baseAdUnitB == null) {
                        com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "tracking: value is null.", new Object[0]);
                    } else {
                        String requestId = baseAdUnitB.getRequestId();
                        int iOptInt2 = jSONObjectOptJSONObject == null ? 0 : jSONObjectOptJSONObject.optInt("clickLoseRate");
                        int iOptInt3 = com.sigmob.sdk.base.utils.d.f36580b;
                        if (jSONObjectOptJSONObject != null) {
                            iOptInt3 = jSONObjectOptJSONObject.optInt("clickCbState", iOptInt3);
                        }
                        com.sigmob.sdk.base.utils.d.a(requestId, Integer.valueOf(iOptInt2), Integer.valueOf(iOptInt3));
                        com.sigmob.sdk.base.utils.k.c(C1326d.f38158a, "tracking: clickCbState = " + iOptInt3, new Object[0]);
                        if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.optBoolean("normalClick", true)) {
                            BaseBroadcastReceiver.a(context, baseAdUnitB.getUuid(), IntentActions.ACTION_INTERSTITIAL_CLICK);
                        }
                    }
                }
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        ai aiVar = new ai(jSONArrayOptJSONArray.optString(i2), strOptString2, baseAdUnitB != null ? baseAdUnitB.getRequestId() : "");
                        aiVar.setRetryNum(Integer.valueOf(iOptInt));
                        aiVar.setSource("js");
                        com.sigmob.sdk.base.network.h.a(aiVar, baseAdUnitB, zOptBoolean, z2, z3, null);
                    }
                    return C1326d.a(200, "tracking success", (Object) null);
                }
                List<ai> adTracker = baseAdUnitB == null ? null : baseAdUnitB.getAdTracker(strOptString2);
                if (com.sigmob.sdk.base.utils.f.b(adTracker)) {
                    for (ai aiVar2 : adTracker) {
                        aiVar2.setRetryNum(Integer.valueOf(iOptInt));
                        aiVar2.setSource("js");
                        com.sigmob.sdk.base.network.h.a(aiVar2, baseAdUnitB, zOptBoolean, z2, z3, null);
                    }
                }
                return C1326d.a(300, "urls is empty", (Object) null);
            } catch (Throwable th) {
                return C1326d.a(500, "unknown error: " + th.getMessage(), (Object) null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(final JSONObject jSONObject) {
            C1325c c1325cA;
            final C1326d c1326dA = a();
            if (c1326dA == null || (c1325cA = c1326dA.a()) == null) {
                return;
            }
            c1325cA.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.H
                @Override // java.lang.Runnable
                public final void run() {
                    c1326dA.b(jSONObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(JSONObject jSONObject, Object obj) {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!next.equalsIgnoreCase(PointParamKey._AC_TYPE)) {
                    map.put(next, jSONObject.optString(next));
                }
            }
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                if (com.sigmob.sdk.base.utils.f.b(map)) {
                    pointEntitySigmob.getOptions().putAll(map);
                }
            }
        }
    }

    public C1326d(final List<BaseAdUnit> list) {
        LinkedList linkedList = new LinkedList();
        this.f38165g = linkedList;
        this.f38167j = false;
        this.f38161b = list;
        linkedList.addAll(list);
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.mraid2.C
            @Override // java.lang.Runnable
            public final void run() {
                this.f38084b.b(list);
            }
        });
    }

    private void i() {
        this.f38166i = true;
        this.f38163d.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.B
            @Override // java.lang.Runnable
            public final void run() {
                this.f38083b.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LoadAdRequest j() {
        if (com.sigmob.sdk.base.utils.f.a(this.f38161b)) {
            return null;
        }
        return this.f38161b.get(0).getAdRequest();
    }

    private void k() {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.b();
    }

    private void l() {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.c();
    }

    private void m() {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.d();
    }

    private void n() {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        try {
            if (com.sigmob.sdk.base.utils.v.b(this.f38164f)) {
                this.f38164f.c();
            }
            a(true);
            e();
            a(this.f38163d.getAdSize());
            f();
            a(100);
            a(a(this.f38161b), this.f38168k);
        } catch (Throwable th) {
            com.sigmob.sdk.base.utils.k.f(f38158a, "handleJsLoad: error = " + th.getMessage(), new Object[0]);
        }
    }

    public BaseAdUnit b(String str) {
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) str) && !com.sigmob.sdk.base.utils.f.a(this.f38165g)) {
            for (int i2 = 0; i2 < this.f38165g.size(); i2++) {
                BaseAdUnit baseAdUnit = this.f38161b.get(i2);
                if (str.equals(baseAdUnit.getAd().vid)) {
                    return baseAdUnit;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BidResponse a(List<BaseAdUnit> list) {
        Template templateBuild;
        List<MaterialMeta> list2;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Ad ad = list.get(i2).getAd();
            ArrayList arrayList2 = new ArrayList();
            if (ad != null && (list2 = ad.materials) != null && !list2.isEmpty()) {
                MaterialMeta.Builder builderNewBuilder = ad.materials.get(0).newBuilder();
                Template template = builderNewBuilder.main_template;
                if (template != null && template.type.intValue() == 2) {
                    Template templateBuild2 = builderNewBuilder.main_template.newBuilder().context(null).build();
                    templateBuild2.templateId = builderNewBuilder.main_template.templateId;
                    builderNewBuilder.main_template(templateBuild2);
                }
                Template template2 = builderNewBuilder.sub_template;
                if (template2 != null && template2.type.intValue() == 2) {
                    Template templateBuild3 = builderNewBuilder.sub_template.newBuilder().context(null).build();
                    templateBuild3.templateId = builderNewBuilder.sub_template.templateId;
                    builderNewBuilder.sub_template(templateBuild3);
                }
                arrayList2.add(builderNewBuilder.html_snippet(null).build());
                arrayList.add(ad.newBuilder().materials(arrayList2).build());
            }
        }
        BidResponse.Builder builder = new BidResponse.Builder();
        BaseAdUnit baseAdUnit = list.get(0);
        if (baseAdUnit != null) {
            Template template3 = baseAdUnit.scene;
            if (template3 != null) {
                if (template3.type.intValue() == 2) {
                    templateBuild = baseAdUnit.scene.newBuilder().context(null).build();
                    templateBuild.templateId = baseAdUnit.scene.templateId;
                } else {
                    templateBuild = baseAdUnit.scene.newBuilder().build();
                }
                builder.scene(templateBuild);
            }
            SlotAdSetting slotAdSetting = baseAdUnit.slotAdSetting;
            if (slotAdSetting != null) {
                builder.slot_ad_setting(slotAdSetting.newBuilder().build());
            }
            BiddingResponse biddingResponse = baseAdUnit.bidding_response;
            if (biddingResponse != null) {
                builder.bidding_response(biddingResponse.newBuilder().build());
            }
            builder.request_id(baseAdUnit.getRequestId());
            builder.uid(baseAdUnit.uid);
            builder.expiration_time(Integer.valueOf(baseAdUnit.expiration_time));
        }
        return builder.ads(arrayList).build();
    }

    private void i(JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38164f) && com.sigmob.sdk.base.utils.v.b(jSONObject)) {
            this.f38164f.a(jSONObject.optInt("red"), jSONObject.optInt("green"), jSONObject.optInt("blue"), jSONObject.optInt("alpha"));
        }
    }

    private void j(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("uniqId");
        String strOptString2 = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString) || com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString2)) {
            return;
        }
        List<String> list = f38160h.get(strOptString + "~" + strOptString2);
        if (list == null) {
            return;
        }
        Iterator it = new CopyOnWriteArrayList(list).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.equals(strOptString)) {
                list.remove(str);
            }
        }
    }

    private void k(JSONObject jSONObject) throws JSONException {
        HashMap<String, C1325c> mraidWebViews;
        C1326d mraidBridge;
        if (jSONObject == null) {
            return;
        }
        String uniqueId = a().getUniqueId();
        String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) uniqueId) || com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
            return;
        }
        List<String> list = f38160h.get(uniqueId + "~" + strOptString);
        if (list == null || list.isEmpty() || (mraidWebViews = C1325c.getMraidWebViews()) == null) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            C1325c c1325c = mraidWebViews.get(it.next());
            if (c1325c != null && (mraidBridge = c1325c.getMraidBridge()) != null) {
                mraidBridge.a(uniqueId, strOptString, jSONObject);
            }
        }
    }

    private void l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("uniqId");
        String strOptString2 = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString) || com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString2)) {
            return;
        }
        HashMap<String, List<String>> map = f38160h;
        List<String> arrayList = map.get(strOptString2);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(strOptString + "~" + strOptString2, arrayList);
        }
        arrayList.add(this.f38163d.getUniqueId());
    }

    public void d() {
        a("mraidbridge.fireReadyEvent();");
    }

    public void e() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("orientation", ClientMetadata.getInstance().getOrientationInt());
            jSONObject2.put(PointCategory.LOCKED, true);
            jSONObject.put("orientation", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void f() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdkVersion", com.sigmob.sdk.base.n.f36448k);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ")");
    }

    public void g() {
        if (f38159e != null) {
            f38159e = null;
        }
        if (this.f38163d != null) {
            this.f38163d = null;
        }
        this.f38162c = null;
        this.f38164f = null;
    }

    private void b(C1326d c1326d, String str, String str2, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.b(str2, jSONObject);
        }
        c1326d.d(str);
    }

    private void d(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.b(jSONObject);
        }
        c1326d.d(str);
    }

    private void e(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.g(jSONObject);
        }
        c1326d.d(str);
    }

    private void f(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(jSONObject)) {
            this.f38163d.setVisibility(jSONObject.optBoolean("visible") ? 0 : 4);
        }
        c1326d.d(str);
    }

    private void g(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.f(jSONObject);
        }
        c1326d.d(str);
    }

    private void h(JSONObject jSONObject) {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.a(jSONObject);
    }

    public C1325c a() {
        return this.f38163d;
    }

    public List<BaseAdUnit> c() {
        return this.f38165g;
    }

    private void b(C1326d c1326d, String str, JSONObject jSONObject) {
        if (c1326d == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject == null ? null : jSONObject.optJSONObject("data");
        String strOptString = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString(PointParamKey.VID);
        BaseAdUnit baseAdUnitB = com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString) ? null : c1326d.b(strOptString);
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.a(baseAdUnitB, jSONObject);
        }
        c1326d.d(str);
    }

    private void c(C1326d c1326d, String str, String str2, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.c(str2, jSONObject);
        }
        c1326d.d(str);
    }

    public void d(String str) {
        a("mraidbridge.nativeCallComplete(" + JSONObject.quote(str) + ")");
    }

    public void e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, "fire_" + str);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void f(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void g(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public static String a(int i2, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i2);
            if (com.sigmob.sdk.base.utils.s.b(str)) {
                jSONObject.put("message", str);
            }
            if (obj != null) {
                jSONObject.put("data", obj);
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    private void b(C1326d c1326d, JSONObject jSONObject) throws JSONException {
        BaseAdUnit baseAdUnitB = null;
        String strOptString = jSONObject == null ? null : jSONObject.optString(PointParamKey.VID);
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            try {
                jSONObjectOptJSONObject.put(PointParamKey.VID, strOptString);
            } catch (Exception e2) {
                com.sigmob.sdk.base.utils.k.f(f38158a, "handleFeedbackByVid: error = " + e2.getMessage(), new Object[0]);
            }
            baseAdUnitB = c1326d.b(strOptString);
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f38164f)) {
            this.f38164f.a(baseAdUnitB);
        }
    }

    private void c(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.d(jSONObject);
        }
        c1326d.d(str);
    }

    private void d(JSONObject jSONObject) {
        String strOptString = jSONObject == null ? null : jSONObject.optString(PointParamKey.VID);
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.a(strOptString);
        }
    }

    private void e(JSONObject jSONObject) {
        InterfaceC1343v scrollTouchListener;
        C1325c c1325c = this.f38163d;
        if (c1325c == null || (scrollTouchListener = c1325c.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.a(this.f38163d, jSONObject);
    }

    private void f(JSONObject jSONObject) {
        InterfaceC1343v scrollTouchListener;
        C1325c c1325c = this.f38163d;
        if (c1325c == null || (scrollTouchListener = c1325c.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.b(jSONObject);
    }

    private void g(JSONObject jSONObject) {
        InterfaceC1343v scrollTouchListener;
        C1325c c1325c = this.f38163d;
        if (c1325c == null || (scrollTouchListener = c1325c.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.a(jSONObject);
    }

    private void c(C1326d c1326d, JSONObject jSONObject) {
        String strOptString = jSONObject == null ? null : jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject("data") : null;
        HashMap map = new HashMap();
        if (com.sigmob.sdk.base.utils.v.b(jSONObjectOptJSONObject)) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.optString(next));
            }
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f38161b.get(0))) {
            LoadAdRequest adRequest = this.f38161b.get(0).getAdRequest();
            adRequest.setOptions(map);
            adRequest.setLastCampid(C1258h.g().o());
            adRequest.setLastCrid(C1258h.g().n());
            com.sigmob.sdk.base.network.f.a(adRequest, new AnonymousClass2(c1326d, strOptString));
        }
    }

    public void a(int i2) {
        a("mraidbridge.fireChangeEvent({\"exposure\":" + i2 + "});");
    }

    public void b(String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("state", i2);
            jSONObject.put("vdLoadStateChanged", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(int i2, int i3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", i2);
            jSONObject.put(com.umeng.ccg.a.f49746H, i3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.notifyPageChangeEvent(" + jSONObject + ");");
    }

    public void b(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            if (com.sigmob.sdk.base.utils.s.b(str2)) {
                jSONObject2.put("message", str2);
            }
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void c(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject.put("wvFinished", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(List list) {
        this.f38168k = JSONSerializer.Serialize(a((List<BaseAdUnit>) list), "bidResponse", true, true);
    }

    public void a(int i2, int i3, int i4, int i5) {
        a("mraidbridge.setSafeAreaInsets(" + (i2 + "," + i3 + "," + i4 + "," + i5) + ")");
    }

    public void c(String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("currentTime", i2 / 1000.0f);
            jSONObject.put("vdPlayToEnd", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    private void c(JSONObject jSONObject) {
        InterfaceC1333k interfaceC1333k = this.f38162c;
        if (interfaceC1333k == null) {
            return;
        }
        interfaceC1333k.e(jSONObject);
    }

    public void a(C1256g c1256g) throws JSONException {
        int iPixelsToIntDips;
        int iPixelsToIntDips2;
        Context context = this.f38163d.getContext();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (c1256g == null) {
                iPixelsToIntDips2 = Dips.pixelsToIntDips(displayMetrics.widthPixels, context);
                iPixelsToIntDips = Dips.pixelsToIntDips(displayMetrics.heightPixels, context);
            } else {
                int iPixelsToIntDips3 = Dips.pixelsToIntDips(c1256g.a(), context);
                iPixelsToIntDips = Dips.pixelsToIntDips(c1256g.b(), context);
                iPixelsToIntDips2 = iPixelsToIntDips3;
            }
            jSONObject2.put("width", iPixelsToIntDips2);
            jSONObject2.put("height", iPixelsToIntDips);
            jSONObject.put("screenSize", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void b(JSONObject jSONObject) {
        a("mraidbridge.onStorageChanged(" + jSONObject.toString() + ");");
    }

    public void a(BidResponse bidResponse, String str) throws CyclicObjectException {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            str = JSONSerializer.Serialize(bidResponse, "bidResponse", true, true);
        }
        a("mraidbridge.fireChangeEvent(" + str + ");");
    }

    public boolean b() {
        return this.f38166i;
    }

    public void a(C1325c c1325c) {
        this.f38163d = c1325c;
        c1325c.setScrollContainer(false);
        this.f38163d.setVerticalScrollBarEnabled(false);
        this.f38163d.setHorizontalScrollBarEnabled(false);
        this.f38163d.setBackgroundColor(0);
        this.f38163d.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.mraid2.d.1
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return C1326d.this.f38164f == null ? super.onConsoleMessage(consoleMessage) : C1326d.this.f38164f.a(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                return super.onJsAlert(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
                super.onProgressChanged(webView, i2);
                if (C1326d.this.f38166i || C1326d.this.f38167j || i2 <= 70) {
                    return;
                }
                C1326d.this.f38167j = true;
                C1326d.this.a(C1329g.INJECTION_JAVASCRIPT, (ValueCallback) null);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.sigmob.sdk.mraid2.C1326d r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1326d.a(com.sigmob.sdk.mraid2.d, java.lang.String):void");
    }

    private void a(C1326d c1326d, String str, String str2) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38164f)) {
            str2.getClass();
            if (str2.equals("init")) {
                this.f38164f.a();
            } else if (str2.equals(C1315g.f37905b)) {
                this.f38164f.b();
            }
        }
        if (com.sigmob.sdk.base.utils.v.b(c1326d)) {
            c1326d.d(str);
        }
    }

    private void a(C1326d c1326d, String str, String str2, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.a(str2, jSONObject);
        }
        c1326d.d(str);
    }

    private void a(C1326d c1326d, String str, JSONObject jSONObject) {
        if (com.sigmob.sdk.base.utils.v.b(this.f38162c)) {
            this.f38162c.c(jSONObject);
        }
        c1326d.d(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.sigmob.sdk.mraid2.C1326d r12, java.lang.String r13, org.json.JSONObject r14, java.lang.String r15) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1326d.a(com.sigmob.sdk.mraid2.d, java.lang.String, org.json.JSONObject, java.lang.String):void");
    }

    private void a(final C1326d c1326d, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("delay");
        final String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        if (iOptInt < 0 || !com.sigmob.sdk.base.utils.s.b(strOptString)) {
            return;
        }
        c1326d.a().postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.D
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                this.f38086b.f(strOptString);
            }
        }, iOptInt);
    }

    public void a(InterfaceC1328f interfaceC1328f) {
        this.f38164f = interfaceC1328f;
    }

    public void a(InterfaceC1333k interfaceC1333k) {
        this.f38162c = interfaceC1333k;
    }

    public void a(String str) {
        if (!this.f38166i) {
            SigmobLog.w("MRAID JS Not Load attached: " + str);
            return;
        }
        if (this.f38163d == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached: " + str);
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView: " + str);
        this.f38163d.b(str, (ValueCallback) null);
    }

    public void a(String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("state", i2);
            jSONObject.put("vdPlayStateChanged", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("currentTime", i2 / 1000.0f);
            jSONObject2.put("duration", i3 / 1000.0f);
            jSONObject.put("vdPlayCurrentTime", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("duration", i2 / 1000.0f);
            jSONObject2.put("width", i3);
            jSONObject2.put("height", i4);
            jSONObject.put("vdReadyToPlay", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, int i2, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", i2);
            jSONObject2.put("message", str2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("uniqueId", str);
            jSONObject3.put("error", jSONObject2);
            jSONObject.put("wvError", jSONObject3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, ValueCallback valueCallback) {
        if (this.f38163d == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached: " + str);
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView: " + str);
        this.f38163d.b(str, valueCallback);
    }

    public void a(String str, BidResponse bidResponse, int i2, String str2) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (bidResponse == null) {
                jSONObject = new JSONObject();
                jSONObject.put("data", (Object) null);
            } else {
                jSONObject = new JSONObject(JSONSerializer.Serialize(bidResponse, "data", true, true));
            }
            jSONObject.put("code", i2);
            jSONObject.put("message", str2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject3.put("message", jSONObject);
            jSONObject2.put("notify", jSONObject3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject2 + ");");
    }

    public void a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", str);
            jSONObject2.put("error", str2);
            jSONObject.put("vdPlayError", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
    public void a(String str, String str2, String str3, HashMap<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str3);
            jSONObject2.put("uniqueId", str);
            if (map != null) {
                jSONObject2.put("args", new JSONObject(map));
            }
            jSONObject.put("onChangeFired", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, String str2, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Object objOpt = jSONObject.opt("data");
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NotificationCompat.CATEGORY_EVENT, str + "~" + str2);
            if (objOpt != null) {
                jSONObject3.put("data", objOpt);
            }
            jSONObject2.put("onChangeEvent", jSONObject3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject2 + ");");
    }

    public void a(String str, HashMap<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            if (map != null) {
                jSONObject2.put("args", new JSONObject(map));
            }
            jSONObject.put("onChangeEvent", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    private void a(String str, Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("bindData", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject2 + ");");
    }

    public void a(boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("viewable", z2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ")");
    }
}
