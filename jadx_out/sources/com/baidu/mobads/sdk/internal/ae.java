package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.mobads.sdk.api.NativeCPUAdData;
import com.baidu.mobads.sdk.api.NativeCPUManager;
import com.byazt.pu.TTDownloadField;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ae extends bj {

    /* renamed from: a, reason: collision with root package name */
    public static final int f10964a = 17;

    /* renamed from: t, reason: collision with root package name */
    private static final String f10965t = "javascript:";

    /* renamed from: A, reason: collision with root package name */
    private NativeCPUManager.CPUAdListener f10966A;

    /* renamed from: B, reason: collision with root package name */
    private NativeCPUManager f10967B;

    /* renamed from: C, reason: collision with root package name */
    private int f10968C;

    /* renamed from: D, reason: collision with root package name */
    private int f10969D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f10970E;

    /* renamed from: F, reason: collision with root package name */
    private String f10971F;

    /* renamed from: u, reason: collision with root package name */
    private int f10972u;

    /* renamed from: v, reason: collision with root package name */
    private int f10973v;

    /* renamed from: w, reason: collision with root package name */
    private int[] f10974w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f10975x;

    /* renamed from: y, reason: collision with root package name */
    private int f10976y;

    /* renamed from: z, reason: collision with root package name */
    private HashMap<String, Object> f10977z;

    public ae(Context context) {
        super(context);
        this.f10968C = 5;
        this.f10969D = 60;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Map<String, Object> map) {
        if (map != null) {
            Object obj = map.get("adInnerPageInterval");
            Object obj2 = map.get("adBottomRefreshInterval");
            Object obj3 = map.get("adFrontChapterInterval");
            Object obj4 = map.get("isShowFeeds");
            Object obj5 = map.get("isAdSwitch");
            Object obj6 = map.get("showCount");
            Object obj7 = map.get("clickCount");
            if (obj != null && obj2 != null) {
                ao.a(((Integer) obj).intValue());
                ao.b(((Integer) obj2).intValue());
            }
            if ((obj3 instanceof Integer) && (obj4 instanceof Boolean)) {
                ao.a(((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue());
            }
            if (obj5 instanceof Integer) {
                ao.a(((Integer) obj5).intValue() != 0);
            }
            if ((obj6 instanceof Integer) && (obj7 instanceof Integer)) {
                ao.a(((Integer) obj6).intValue(), ((Integer) obj7).intValue());
            }
        }
    }

    private String j(String str) {
        IXAdContainerFactory iXAdContainerFactoryC;
        aa aaVarA = aa.a();
        if (aaVarA == null || (iXAdContainerFactoryC = aaVarA.c()) == null) {
            return null;
        }
        Object remoteParam = iXAdContainerFactoryC.getRemoteParam(str, new Object[0]);
        if (remoteParam instanceof String) {
            return (String) remoteParam;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        ao.b();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
        if (cPUAdListener != null) {
            cPUAdListener.onExitLp();
        }
    }

    public void e() {
        ao.a(this.f10968C);
        ao.b(this.f10969D);
        ao.a(new aj(this));
    }

    public Activity f() {
        return ao.c();
    }

    public boolean g() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b(IOAdEvent iOAdEvent) {
        notifyObservers(iOAdEvent);
        setChanged();
    }

    public void a(NativeCPUManager.CPUAdListener cPUAdListener) {
        this.f10966A = cPUAdListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d(IOAdEvent iOAdEvent) {
        try {
            if (this.f10966A == null || iOAdEvent == null) {
                return;
            }
            HashMap<String, Object> map = (HashMap) iOAdEvent.getData();
            this.f10966A.onLpCustomEventCallBack(map, new ah(this, map.get(TTDownloadField.TT_ACTIVITY)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public ae(Context context, String str, NativeCPUManager nativeCPUManager) {
        super(context);
        this.f10968C = 5;
        this.f10969D = 60;
        this.f11180q = str;
        this.f10967B = nativeCPUManager;
    }

    public void a(int i2, int i3, int[] iArr, boolean z2, HashMap<String, Object> map) {
        this.f10973v = i2;
        this.f10972u = i3;
        this.f10974w = iArr;
        this.f10975x = z2;
        this.f10977z = map;
        this.f10970E = ao.f();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
        if (cPUAdListener != null) {
            cPUAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f11176m == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(IAdInterListener.AdReqParam.PROD, "cpu");
            this.f11176m.createProdHandler(jSONObject3);
            m();
            this.f11176m.addEventListener("Update_fbReader_Setting", new af(this));
            this.f11176m.addEventListener("closeInterstitialAd", new ag(this));
            jSONObject.put(IAdInterListener.AdReqParam.PROD, "cpu");
            jSONObject.put("appsid", this.f11180q);
            jSONObject.put("pageIndex", this.f10973v);
            jSONObject.put("pageSize", this.f10972u);
            jSONObject.put("channels", this.f10974w);
            jSONObject.put("showAd", this.f10975x);
            jSONObject.put("openActivitylink", this.f10971F);
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            jSONObject2.put("timeout", this.f10976y);
            HashMap<String, Object> map = this.f10977z;
            if (map == null || map.isEmpty()) {
                az.c().e("内容联盟元素需要传入 CPUAdRequest配置信息");
            }
            jSONObject2 = m.a(this.f10977z);
            if (jSONObject2 != null) {
                jSONObject2.put("isInitNovelSDK", this.f10970E);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f11176m.loadAd(jSONObject, jSONObject2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
        if (cPUAdListener != null) {
            cPUAdListener.onVideoDownloadFailed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            Map<String, Object> data = iOAdEvent.getData();
            Integer num = (Integer) data.get("position");
            String str = (String) data.get("mislikereason");
            NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
            if (cPUAdListener == null || num == null || str == null) {
                return;
            }
            cPUAdListener.onDisLikeAdClick(num.intValue(), str);
        }
    }

    public void a(int i2) {
        this.f10976y = i2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(IOAdEvent iOAdEvent) {
        if (this.f10966A != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) iOAdEvent.getData().get("cpuAdList")).iterator();
            while (it.hasNext()) {
                NativeCPUAdData nativeCPUAdData = new NativeCPUAdData(this.f11172i, it.next(), this.f10977z);
                arrayList.add(nativeCPUAdData);
                addObserver(nativeCPUAdData);
            }
            this.f10966A.onAdLoaded(arrayList);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        super.a(str, i2, str2);
        NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
        if (cPUAdListener != null) {
            cPUAdListener.onAdError(str, i2);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(int i2, String str, String str2) {
        super.a(i2, str, str2);
        NativeCPUManager.CPUAdListener cPUAdListener = this.f10966A;
        if (cPUAdListener != null) {
            cPUAdListener.onAdError(str, i2);
        }
    }

    public void a(WebView webView, JSONObject jSONObject) {
        bj.a(new ai(this, jSONObject, webView));
    }

    public void a(String str) {
        this.f10971F = str;
    }
}
