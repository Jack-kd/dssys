package com.anythink.network.ks;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.rewardvideo.api.ATRewardRetryTaskContract;
import com.anythink.rewardvideo.api.ATRewardRetryTaskInfo;
import com.anythink.rewardvideo.api.ATRewardRetryTaskManager;
import com.anythink.rewardvideo.api.ATRewardRetryTaskResult;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsInitCallback;
import com.kwad.sdk.api.SdkConfig;
import com.kwad.sdk.api.manager.RewardRetryTaskManager;
import com.kwad.sdk.api.model.KSAdRewardRetryTaskResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class KSATInitManager extends ATInitMediation {

    /* renamed from: q, reason: collision with root package name */
    private static final String f9820q = "KSATInitManager";

    /* renamed from: r, reason: collision with root package name */
    private static volatile KSATInitManager f9821r = null;

    /* renamed from: s, reason: collision with root package name */
    private static final int f9822s = 513;

    /* renamed from: t, reason: collision with root package name */
    private static final int f9823t = 7;

    /* renamed from: u, reason: collision with root package name */
    private static final long f9824u = 1000;

    /* renamed from: v, reason: collision with root package name */
    static final int f9825v = 0;

    /* renamed from: w, reason: collision with root package name */
    static final int f9826w = 1;

    /* renamed from: x, reason: collision with root package name */
    static final int f9827x = 2;

    /* renamed from: y, reason: collision with root package name */
    static final int f9828y = 3;

    /* renamed from: z, reason: collision with root package name */
    static final int f9829z = 4;

    /* renamed from: b, reason: collision with root package name */
    private boolean f9831b;

    /* renamed from: d, reason: collision with root package name */
    private List<MediationInitCallback> f9833d;

    /* renamed from: e, reason: collision with root package name */
    private KSATCustomController f9834e;

    /* renamed from: h, reason: collision with root package name */
    private volatile String f9837h;

    /* renamed from: k, reason: collision with root package name */
    private HandlerThread f9840k;

    /* renamed from: l, reason: collision with root package name */
    private Handler f9841l;

    /* renamed from: n, reason: collision with root package name */
    Boolean f9843n;

    /* renamed from: o, reason: collision with root package name */
    Boolean f9844o;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9830a = new Object();

    /* renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f9835f = new AtomicBoolean(false);

    /* renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f9836g = new AtomicBoolean(false);

    /* renamed from: i, reason: collision with root package name */
    private int f9838i = 0;

    /* renamed from: j, reason: collision with root package name */
    private final Object f9839j = new Object();

    /* renamed from: m, reason: collision with root package name */
    private Map<String, WeakReference> f9842m = new ConcurrentHashMap();

    /* renamed from: p, reason: collision with root package name */
    int f9845p = 0;

    /* renamed from: c, reason: collision with root package name */
    private AtomicBoolean f9832c = new AtomicBoolean(false);

    public class a implements KsInitCallback {

        /* renamed from: com.anythink.network.ks.KSATInitManager$a$a, reason: collision with other inner class name */
        public class RunnableC0104a implements Runnable {
            public RunnableC0104a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                KSATInitManager.this.a(true, null, null, "ks_callback");
            }
        }

        public class b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f9848a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f9849b;

            public b(int i2, String str) {
                this.f9848a = i2;
                this.f9849b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                KSATInitManager.this.a(false, "" + this.f9848a, this.f9849b, "ks_callback");
            }
        }

        public a() {
        }

        @Override // com.kwad.sdk.api.KsInitCallback
        public void onFail(int i2, String str) {
            String unused = KSATInitManager.f9820q;
            KSATInitManager.this.runOnThreadPool(new b(i2, str));
        }

        @Override // com.kwad.sdk.api.KsInitCallback
        public void onSuccess() {
            String unused = KSATInitManager.f9820q;
            String unused2 = KSATInitManager.this.f9837h;
            KSATInitManager.this.runOnThreadPool(new RunnableC0104a());
        }
    }

    public class b implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9851a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9852b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f9853c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ ATBidRequestInfoListener f9854d;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                KSBidRequestInfo kSBidRequestInfo = new KSBidRequestInfo(bVar.f9851a, bVar.f9852b, bVar.f9853c);
                if (kSBidRequestInfo.isValid()) {
                    ATBidRequestInfoListener aTBidRequestInfoListener = b.this.f9854d;
                    if (aTBidRequestInfoListener != null) {
                        aTBidRequestInfoListener.onSuccess(kSBidRequestInfo);
                        return;
                    }
                    return;
                }
                ATBidRequestInfoListener aTBidRequestInfoListener2 = b.this.f9854d;
                if (aTBidRequestInfoListener2 != null) {
                    aTBidRequestInfoListener2.onFailed(ATBidRequestInfo.BIDTOKEN_EMPTY_ERROR_TYPE);
                }
            }
        }

        public b(Map map, Map map2, int i2, ATBidRequestInfoListener aTBidRequestInfoListener) {
            this.f9851a = map;
            this.f9852b = map2;
            this.f9853c = i2;
            this.f9854d = aTBidRequestInfoListener;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ATBidRequestInfoListener aTBidRequestInfoListener = this.f9854d;
            if (aTBidRequestInfoListener != null) {
                aTBidRequestInfoListener.onFailed(ATBidRequestInfo.INIT_ERROR_TYPE);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATInitManager.this.runOnThreadPool(new a());
        }
    }

    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 513) {
                KSATInitManager.this.d();
            }
        }
    }

    public class d implements ATRewardRetryTaskContract {

        public class a implements RewardRetryTaskManager.RetryRewardConvertResultListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ ATRewardRetryTaskContract.RetryRewardConvertResultListener f9859a;

            public a(ATRewardRetryTaskContract.RetryRewardConvertResultListener retryRewardConvertResultListener) {
                this.f9859a = retryRewardConvertResultListener;
            }

            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardConvertResultListener
            public void onError(int i2, String str) {
                ATRewardRetryTaskContract.RetryRewardConvertResultListener retryRewardConvertResultListener = this.f9859a;
                if (retryRewardConvertResultListener != null) {
                    retryRewardConvertResultListener.onError(i2, str);
                }
            }

            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardConvertResultListener
            public void onSuccess() {
                ATRewardRetryTaskContract.RetryRewardConvertResultListener retryRewardConvertResultListener = this.f9859a;
                if (retryRewardConvertResultListener != null) {
                    retryRewardConvertResultListener.onSuccess();
                }
            }
        }

        public class b implements RewardRetryTaskManager.RetryRewardResultListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ ATRewardRetryTaskContract.RetryRewardResultListener f9861a;

            public b(ATRewardRetryTaskContract.RetryRewardResultListener retryRewardResultListener) {
                this.f9861a = retryRewardResultListener;
            }

            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardResultListener
            public void onError(int i2, String str) {
                ATRewardRetryTaskContract.RetryRewardResultListener retryRewardResultListener = this.f9861a;
                if (retryRewardResultListener != null) {
                    retryRewardResultListener.onError(i2, str);
                }
            }

            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardResultListener
            public void onSuccess(List<KSAdRewardRetryTaskResult> list) {
                if (this.f9861a == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<KSAdRewardRetryTaskResult> it = list.iterator();
                while (it.hasNext()) {
                    ATRewardRetryTaskResult aTRewardRetryTaskResultConvertFromKSResult = KSATInfoReversion.convertFromKSResult(it.next());
                    if (aTRewardRetryTaskResultConvertFromKSResult != null) {
                        arrayList.add(aTRewardRetryTaskResultConvertFromKSResult);
                    }
                }
                this.f9861a.onSuccess(arrayList);
            }
        }

        public d() {
        }

        @Override // com.anythink.rewardvideo.api.ATRewardRetryTaskContract
        public void rewardAdRetryTaskUpdate(ATRewardRetryTaskInfo aTRewardRetryTaskInfo, ATRewardRetryTaskContract.RetryRewardConvertResultListener retryRewardConvertResultListener) {
            if (aTRewardRetryTaskInfo == null || TextUtils.isEmpty(aTRewardRetryTaskInfo.getRequestId())) {
                if (retryRewardConvertResultListener != null) {
                    retryRewardConvertResultListener.onError(-1, "taskInfo is null or requestId is empty");
                    return;
                }
                return;
            }
            try {
                RewardRetryTaskManager.Builder.build().rewardAdRetryTaskUpdate(KSATInfoReversion.convertToKSAdInfoData(aTRewardRetryTaskInfo), new a(retryRewardConvertResultListener));
            } catch (Throwable th) {
                if (retryRewardConvertResultListener != null) {
                    retryRewardConvertResultListener.onError(-1, "Exception: " + th.getMessage());
                }
            }
        }

        @Override // com.anythink.rewardvideo.api.ATRewardRetryTaskContract
        public void setRetryRewardResultListener(List<ATRewardRetryTaskInfo> list, ATRewardRetryTaskContract.RetryRewardResultListener retryRewardResultListener) {
            if (list == null || list.isEmpty()) {
                if (retryRewardResultListener != null) {
                    retryRewardResultListener.onError(-1, "taskInfoList is null or empty");
                    return;
                }
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                Iterator<ATRewardRetryTaskInfo> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(KSATInfoReversion.convertToKSAdInfoData(it.next()));
                }
                if (!arrayList.isEmpty()) {
                    RewardRetryTaskManager.Builder.build().setRetryRewardResultListener(arrayList, new b(retryRewardResultListener));
                } else if (retryRewardResultListener != null) {
                    retryRewardResultListener.onError(-1, "Failed to convert taskInfoList to KSAdInfoData list");
                }
            } catch (Throwable th) {
                if (retryRewardResultListener != null) {
                    retryRewardResultListener.onError(-1, "Exception: " + th.getMessage());
                }
            }
        }
    }

    private KSATInitManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f9835f.get()) {
            return;
        }
        try {
            String appId = KsAdSDK.getAppId();
            boolean zHaseInit = KsAdSDK.haseInit();
            if (zHaseInit && TextUtils.equals(this.f9837h, appId)) {
                a(true, null, null, "poll");
                return;
            }
            int i2 = this.f9838i + 1;
            this.f9838i = i2;
            if (i2 < 7) {
                synchronized (this.f9839j) {
                    try {
                        Handler handler = this.f9841l;
                        if (handler != null) {
                            handler.sendEmptyMessageDelayed(513, 1000L);
                        }
                    } finally {
                    }
                }
                return;
            }
            a(false, "-1", "init timeout (no callback), haseInit=" + zHaseInit + ", sdkAppId=" + appId + ", requesting=" + this.f9837h, "poll_timeout");
        } catch (Throwable th) {
            int i3 = this.f9838i + 1;
            this.f9838i = i3;
            if (i3 >= 7) {
                a(false, "-1", "init poll error: " + th.getMessage(), "poll_timeout");
                return;
            }
            synchronized (this.f9839j) {
                try {
                    Handler handler2 = this.f9841l;
                    if (handler2 != null) {
                        handler2.sendEmptyMessageDelayed(513, 1000L);
                    }
                } finally {
                }
            }
        }
    }

    private void e() {
        try {
            ATRewardRetryTaskManager.getInstance().registerContract(String.valueOf(28), new d());
        } catch (Throwable unused) {
        }
    }

    private void f() {
        if (this.f9836g.compareAndSet(false, true)) {
            e();
        }
    }

    private void g() {
        int i2 = this.f9845p;
        boolean zBooleanValue = i2 != 2;
        boolean zBooleanValue2 = i2 != 2;
        Boolean bool = this.f9843n;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        }
        Boolean bool2 = this.f9844o;
        if (bool2 != null) {
            zBooleanValue2 = bool2.booleanValue();
        }
        KsAdSDK.setPersonalRecommend(zBooleanValue);
        KsAdSDK.setProgrammaticRecommend(zBooleanValue2);
        ATSDK.isNetworkLogDebug();
    }

    public static KSATInitManager getInstance() {
        if (f9821r == null) {
            synchronized (KSATInitManager.class) {
                try {
                    if (f9821r == null) {
                        f9821r = new KSATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9821r;
    }

    private void h() {
        try {
            i();
            c();
            this.f9838i = 0;
            synchronized (this.f9839j) {
                try {
                    Handler handler = this.f9841l;
                    if (handler != null) {
                        handler.sendEmptyMessageDelayed(513, 3000L);
                    }
                } finally {
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void i() {
        synchronized (this.f9839j) {
            try {
                Handler handler = this.f9841l;
                if (handler != null) {
                    handler.removeMessages(513);
                }
                HandlerThread handlerThread = this.f9840k;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                    this.f9840k = null;
                    this.f9841l = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "5.4.10.2.1.2";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Kuaishou";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.kwad.sdk.api.KsAdSDK";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return KSATConst.getNetworkVersion();
    }

    public String getPayloadInfo(String str, double d2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.getJSONArray("adBids").getJSONObject(0).put("bidEcpm", d2);
            str = jSONObject.toString();
            jSONObject.toString();
            return str;
        } catch (Throwable unused) {
            return str;
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public Map<String, Boolean> getPluginClassStatus() {
        HashMap map = new HashMap();
        map.put("recyclerview-*.aar", Boolean.FALSE);
        try {
            int i2 = RecyclerView.HORIZONTAL;
            map.put("recyclerview-*.aar", Boolean.TRUE);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            int i3 = RecyclerView.HORIZONTAL;
            map.put("recyclerview-*.aar", Boolean.TRUE);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return map;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getResourceStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("ksad_reward_order_end_dialog");
        return arrayList;
    }

    public void initSDK(Context context, Map<String, Object> map) {
        initSDK(context, map, null);
    }

    public void setKSATCustomController(KSATCustomController kSATCustomController) {
        if (kSATCustomController != null) {
            this.f9834e = kSATCustomController;
        }
    }

    public void setPersonalRecommend(boolean z2) {
        this.f9843n = Boolean.valueOf(z2);
    }

    public void setProgrammaticRecommend(boolean z2) {
        this.f9844o = Boolean.valueOf(z2);
    }

    private void c() {
        if (this.f9841l != null) {
            return;
        }
        synchronized (this.f9839j) {
            try {
                if (this.f9841l != null) {
                    return;
                }
                HandlerThread handlerThread = new HandlerThread("at_ks_init_check");
                this.f9840k = handlerThread;
                handlerThread.start();
                this.f9841l = new c(this.f9840k.getLooper());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        b();
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        Context applicationContext = context.getApplicationContext();
        try {
            this.f9845p = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(stringFromMap)) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onFail("Kuaishou init failed with empty app_id");
                return;
            }
            return;
        }
        if (TextUtils.equals(stringFromMap, KsAdSDK.getAppId()) && this.f9831b) {
            g();
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9830a) {
            try {
                if (this.f9833d == null) {
                    this.f9833d = new ArrayList();
                }
                if (mediationInitCallback != null) {
                    this.f9833d.add(mediationInitCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f9832c.compareAndSet(false, true)) {
            this.f9835f.set(false);
            KsAdSDK.getAppId();
            SdkConfig.Builder builder = new SdkConfig.Builder();
            builder.appId(stringFromMap);
            KSATCustomController kSATCustomController = this.f9834e;
            if (kSATCustomController != null) {
                builder.canReadICCID(kSATCustomController.getCanReadICCID());
                builder.canReadMacAddress(this.f9834e.getCanReadMacAddress());
                builder.canReadNearbyWifiList(this.f9834e.getCanReadNearbyWifiList());
                if (this.f9834e.getKsCustomeController() != null) {
                    builder.customController(this.f9834e.getKsCustomeController());
                }
            }
            builder.setStartCallback(new a());
            this.f9831b = false;
            this.f9837h = stringFromMap;
            KsAdSDK.init(applicationContext, builder.build());
            KsAdSDK.start();
            KsAdSDK.getAppId();
            h();
            KsAdSDK.haseInit();
        }
    }

    public void b() {
        try {
            for (Map.Entry<String, WeakReference> entry : this.f9842m.entrySet()) {
                if (entry.getValue().get() == null) {
                    this.f9842m.remove(entry.getKey());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, WeakReference weakReference) {
        try {
            this.f9842m.put(str, weakReference);
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener, int i2) {
        initSDK(context, map, new b(map, map2, i2, aTBidRequestInfoListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str, String str2, String str3) {
        ArrayList arrayList;
        int i2 = 0;
        if (this.f9835f.compareAndSet(false, true)) {
            i();
            if (z2) {
                this.f9831b = true;
                g();
                f();
            }
            synchronized (this.f9830a) {
                try {
                    arrayList = this.f9833d == null ? null : new ArrayList(this.f9833d);
                    List<MediationInitCallback> list = this.f9833d;
                    if (list != null) {
                        list.clear();
                    }
                    this.f9832c.set(false);
                } finally {
                }
            }
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                MediationInitCallback mediationInitCallback = (MediationInitCallback) obj;
                if (mediationInitCallback != null) {
                    if (z2) {
                        try {
                            mediationInitCallback.onSuccess();
                        } catch (Throwable unused) {
                        }
                    } else {
                        mediationInitCallback.onFail(str + " | " + str2);
                    }
                }
            }
        }
    }

    public Map<String, Object> a(Map<String, Object> map, Map<String, Object> map2) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    if (map2 == null) {
                        map2 = new HashMap();
                    }
                    Object obj = map.get(KSATConst.KS_LLS_ID);
                    if (obj != null) {
                        Object obj2 = map2.get("nw_extra_info");
                        JSONObject jSONObject = obj2 instanceof JSONObject ? (JSONObject) obj2 : new JSONObject();
                        jSONObject.put("request_id", obj.toString());
                        map2.put("nw_extra_info", jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return map2;
    }
}
