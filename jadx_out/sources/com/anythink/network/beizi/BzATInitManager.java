package com.anythink.network.beizi;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATDeviceUtils;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.beizi.fusion.BeiZiCustomController;
import com.beizi.fusion.BeiZiInitCallBack;
import com.beizi.fusion.BeiZis;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BzATInitManager extends ATInitMediation {

    /* renamed from: e, reason: collision with root package name */
    private static final String f9483e = "BzATInitManager";

    /* renamed from: f, reason: collision with root package name */
    private static BzATInitManager f9484f;

    /* renamed from: b, reason: collision with root package name */
    private List<MediationInitCallback> f9486b;

    /* renamed from: d, reason: collision with root package name */
    private BeiZiCustomController f9488d;
    public boolean mHasInit;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9485a = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f9487c = new AtomicBoolean(false);

    public class a extends BeiZiCustomController {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f9489a;

        public a(boolean z2) {
            this.f9489a = z2;
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean forbidSensor() {
            return this.f9489a;
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public String getDevOaid() {
            return ATDeviceUtils.getOaid();
        }
    }

    public class b implements BeiZiInitCallBack {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BzATInitManager.this.a(true, null, null);
            }
        }

        /* renamed from: com.anythink.network.beizi.BzATInitManager$b$b, reason: collision with other inner class name */
        public class RunnableC0100b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f9493a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f9494b;

            public RunnableC0100b(int i2, String str) {
                this.f9493a = i2;
                this.f9494b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                BzATInitManager.this.a(false, this.f9493a + "", this.f9494b);
            }
        }

        public b() {
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void fail(int i2, String str) {
            String unused = BzATInitManager.f9483e;
            BzATInitManager.this.runOnThreadPool(new RunnableC0100b(i2, str));
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void success() {
            String unused = BzATInitManager.f9483e;
            BzATInitManager bzATInitManager = BzATInitManager.this;
            bzATInitManager.mHasInit = true;
            bzATInitManager.runOnThreadPool(new a());
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Throwable f9496a;

        public c(Throwable th) {
            this.f9496a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            BzATInitManager.this.a(false, "", this.f9496a.getMessage());
        }
    }

    private BzATInitManager() {
    }

    public static BzATInitManager getInstance() {
        if (f9484f == null) {
            synchronized (BzATInitManager.class) {
                try {
                    if (f9484f == null) {
                        f9484f = new BzATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9484f;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "5.5.0.3.1.0";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "BeiZi";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.beizi.fusion.BeiZis";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return BeiZis.getSdkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getServiceStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.beizi.ad.DownloadService");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.mHasInit) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9485a) {
            try {
                if (this.f9487c.get()) {
                    if (mediationInitCallback != null) {
                        this.f9486b.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f9486b == null) {
                    this.f9486b = new ArrayList();
                }
                this.f9487c.set(true);
                if (mediationInitCallback != null) {
                    this.f9486b.add(mediationInitCallback);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                Thread.currentThread().getName();
                if (TextUtils.isEmpty(stringFromMap)) {
                    a(false, "", "beizi init failed: app_id is empty");
                    return;
                }
                Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(95);
                boolean z2 = (boolIsShakeEnabled == null || boolIsShakeEnabled.booleanValue()) ? false : true;
                try {
                    if (this.f9488d == null) {
                        this.f9488d = new a(z2);
                    }
                    BeiZis.asyncInit(context, stringFromMap, this.f9488d, new b());
                } catch (Throwable th) {
                    runOnThreadPool(new c(th));
                }
            } finally {
            }
        }
    }

    public void setBeiZiCustomController(BeiZiCustomController beiZiCustomController) {
        this.f9488d = beiZiCustomController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str, String str2) {
        synchronized (this.f9485a) {
            try {
                int size = this.f9486b.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f9486b.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f9486b.clear();
                this.f9487c.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Map<String, Object> a(String str, Map<String, Object> map) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    if (map == null) {
                        map = new HashMap();
                    }
                    String strOptString = new JSONObject(str).optString(BzATConst.BZ_REQUEST_ID);
                    if (!strOptString.isEmpty()) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("request_id", strOptString);
                        map.put("nw_extra_info", jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return map;
    }
}
