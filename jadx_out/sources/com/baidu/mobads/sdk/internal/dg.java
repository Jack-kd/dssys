package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.EntryResponse;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.XAdEntryResponse;
import com.baidu.mobads.sdk.api.XAdNativeResponse;
import com.baidu.mobads.sdk.internal.g;
import com.byazt.pu.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class dg extends bj {

    /* renamed from: A, reason: collision with root package name */
    private int f11467A;

    /* renamed from: B, reason: collision with root package name */
    private RequestParameters f11468B;

    /* renamed from: C, reason: collision with root package name */
    private boolean f11469C;

    /* renamed from: D, reason: collision with root package name */
    private g.a f11470D;

    /* renamed from: E, reason: collision with root package name */
    private BaiduNativeManager.ExpressAdListener f11471E;

    /* renamed from: F, reason: collision with root package name */
    private BaiduNativeManager.EntryAdListener f11472F;

    /* renamed from: G, reason: collision with root package name */
    private g.b f11473G;

    /* renamed from: H, reason: collision with root package name */
    private int f11474H;

    /* renamed from: I, reason: collision with root package name */
    private int f11475I;

    /* renamed from: J, reason: collision with root package name */
    private int f11476J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f11477K;

    /* renamed from: L, reason: collision with root package name */
    private boolean f11478L;

    /* renamed from: a, reason: collision with root package name */
    private List<NativeResponse> f11479a;

    /* renamed from: t, reason: collision with root package name */
    private List<ExpressResponse> f11480t;

    /* renamed from: u, reason: collision with root package name */
    private List<EntryResponse> f11481u;

    /* renamed from: v, reason: collision with root package name */
    private int f11482v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f11483w;

    /* renamed from: x, reason: collision with root package name */
    private String f11484x;

    /* renamed from: y, reason: collision with root package name */
    private String f11485y;

    /* renamed from: z, reason: collision with root package name */
    private int f11486z;

    public dg(Context context, String str, String str2, boolean z2, int i2) {
        super(context);
        this.f11469C = false;
        this.f11474H = 0;
        this.f11475I = 0;
        this.f11476J = 0;
        this.f11477K = false;
        this.f11478L = false;
        this.f11485y = str;
        this.f11484x = str2;
        this.f11483w = z2;
        this.f11482v = i2;
        this.f11486z = 600;
        this.f11467A = 500;
    }

    public void a(g.a aVar) {
        this.f11470D = aVar;
    }

    public void b(boolean z2) {
        this.f11469C = z2;
    }

    public void c(boolean z2) {
        this.f11477K = z2;
    }

    public void d(boolean z2) {
        this.f11478L = z2;
    }

    public String e() {
        return this.f11484x;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void f(IOAdEvent iOAdEvent) {
        if (iOAdEvent == null) {
            return;
        }
        Map<String, Object> data = iOAdEvent.getData();
        int i2 = 0;
        if (this.f11470D != null && data != null && this.f11479a != null) {
            String str = (String) data.get("instanceInfo");
            while (i2 < this.f11479a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse != null && xAdNativeResponse.getUniqueId().equals(str)) {
                    this.f11470D.a(xAdNativeResponse, Integer.parseInt((String) data.get("showState")));
                }
                i2++;
            }
            return;
        }
        if (this.f11472F == null || data == null || this.f11481u == null) {
            return;
        }
        String str2 = (String) data.get("instanceInfo");
        while (i2 < this.f11481u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f11481u.get(i2);
            if (xAdEntryResponse != null && xAdEntryResponse.getUniqueId().equals(str2)) {
                xAdEntryResponse.onADExposureFailed(Integer.parseInt((String) data.get("showState")));
            }
            i2++;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        int i2 = 0;
        if (this.f11471E != null && this.f11480t != null) {
            while (i2 < this.f11480t.size()) {
                bs bsVar = (bs) this.f11480t.get(i2);
                if (TextUtils.equals(bsVar.a(), str)) {
                    bsVar.a(bsVar);
                }
                i2++;
            }
            return;
        }
        if (this.f11479a != null) {
            while (i2 < this.f11479a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                    xAdNativeResponse.onAdClose(xAdNativeResponse);
                }
                i2++;
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        String message = iOAdEvent.getMessage();
        int i2 = 0;
        if (this.f11470D != null && !TextUtils.isEmpty(message) && this.f11479a != null) {
            while (i2 < this.f11479a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(message)) {
                    this.f11470D.b(xAdNativeResponse);
                }
                i2++;
            }
            return;
        }
        if (this.f11471E != null && !TextUtils.isEmpty(message) && this.f11480t != null) {
            while (i2 < this.f11480t.size()) {
                bs bsVar = (bs) this.f11480t.get(i2);
                if (TextUtils.equals(message, bsVar.a())) {
                    bsVar.b();
                }
                i2++;
            }
            return;
        }
        if (this.f11472F == null || TextUtils.isEmpty(message) || this.f11481u == null) {
            return;
        }
        while (i2 < this.f11481u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f11481u.get(i2);
            if (TextUtils.equals(message, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onAdClick();
            }
            i2++;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void i(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (this.f11471E == null || iOAdEvent == null || this.f11480t == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        View view = (View) data.get("expressView");
        int iIntValue = ((Integer) data.get("viewWidth")).intValue();
        int iIntValue2 = ((Integer) data.get("viewHeight")).intValue();
        for (int i2 = 0; i2 < this.f11480t.size(); i2++) {
            bs bsVar = (bs) this.f11480t.get(i2);
            if (TextUtils.equals(bsVar.a(), str)) {
                bsVar.a(view, iIntValue, iIntValue2);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void j(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (this.f11471E == null || iOAdEvent == null || this.f11480t == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        View view = (View) data.get("expressView");
        int iIntValue = ((Integer) data.get("error_code")).intValue();
        String str2 = (String) data.get("error_message");
        for (int i2 = 0; i2 < this.f11480t.size(); i2++) {
            bs bsVar = (bs) this.f11480t.get(i2);
            if (TextUtils.equals(bsVar.a(), str)) {
                bsVar.a(view, str2, iIntValue);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void k(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || this.f11479a == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        String str2 = (String) data.get("type");
        for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
            if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                if (TextUtils.equals("dismiss", str2)) {
                    xAdNativeResponse.onShakeViewDismiss();
                } else if (TextUtils.equals("coupon_float_dismiss", str2)) {
                    xAdNativeResponse.onCouponFloatDismiss();
                } else if (TextUtils.equals("e_commerce_dismiss", str2)) {
                    xAdNativeResponse.onECommerceDismiss();
                }
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void l(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || this.f11479a == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        int code = iOAdEvent.getCode();
        String str = (String) data.remove("uniqueId");
        for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
            if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                xAdNativeResponse.onAdEvent(code, data);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00fa A[SYNTHETIC] */
    @Override // com.baidu.mobads.sdk.internal.bj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.dg.q():void");
    }

    public void a(BaiduNativeManager.ExpressAdListener expressAdListener) {
        this.f11471E = expressAdListener;
    }

    public void b(Activity activity) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "bindExpressActivity");
            map.put(TTDownloadField.TT_ACTIVITY, activity);
        } catch (JSONException e2) {
            bv.a().a(e2);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        String str2 = (String) data.get("type");
        int i2 = 0;
        if (this.f11471E != null && this.f11480t != null) {
            while (i2 < this.f11480t.size()) {
                bs bsVar = (bs) this.f11480t.get(i2);
                if (TextUtils.equals(bsVar.a(), str)) {
                    if (TextUtils.equals("show", str2)) {
                        bsVar.d();
                    } else if (TextUtils.equals("click", str2)) {
                        Object obj = data.get(MediationConstant.KEY_REASON);
                        bsVar.b(obj instanceof String ? (String) obj : "");
                    } else if (TextUtils.equals("close", str2)) {
                        bsVar.e();
                    }
                }
                i2++;
            }
            return;
        }
        if (this.f11479a != null) {
            while (i2 < this.f11479a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                    if (TextUtils.equals("show", str2)) {
                        xAdNativeResponse.onDislikeShow();
                    } else if (TextUtils.equals("click", str2)) {
                        Object obj2 = data.get(MediationConstant.KEY_REASON);
                        xAdNativeResponse.onDislikeClick(obj2 instanceof String ? (String) obj2 : "");
                    } else if (TextUtils.equals("close", str2)) {
                        xAdNativeResponse.onDislikeClose();
                    }
                }
                i2++;
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d() {
        g.a aVar = this.f11470D;
        if (aVar != null) {
            aVar.a();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.f11471E;
        if (expressAdListener != null) {
            expressAdListener.onLpClosed();
            return;
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.f11472F;
        if (entryAdListener != null) {
            entryAdListener.onLpClosed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(IOAdEvent iOAdEvent) {
        String message = iOAdEvent.getMessage();
        int i2 = 0;
        if (this.f11470D != null && !TextUtils.isEmpty(message) && this.f11479a != null) {
            while (i2 < this.f11479a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(message)) {
                    this.f11470D.a(xAdNativeResponse);
                }
                i2++;
            }
            return;
        }
        if (this.f11471E != null && !TextUtils.isEmpty(message) && this.f11480t != null) {
            while (i2 < this.f11480t.size()) {
                bs bsVar = (bs) this.f11480t.get(i2);
                if (TextUtils.equals(message, bsVar.a())) {
                    bsVar.c();
                }
                i2++;
            }
            return;
        }
        if (this.f11472F == null || TextUtils.isEmpty(message) || this.f11481u == null) {
            return;
        }
        while (i2 < this.f11481u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f11481u.get(i2);
            if (TextUtils.equals(message, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onADExposed();
            }
            i2++;
        }
    }

    public void a(BaiduNativeManager.EntryAdListener entryAdListener) {
        this.f11472F = entryAdListener;
    }

    public void a(g.b bVar) {
        this.f11473G = bVar;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener == null) {
            this.f11177n = false;
        } else {
            this.f11177n = true;
            iAdInterListener.loadAd(j(), k());
        }
    }

    public void b(ViewGroup viewGroup, a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "destroyExpressView");
            jSONObject.put("uniqueId", aVar.M());
            map.put("container", viewGroup);
        } catch (JSONException e2) {
            bv.a().a(e2);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d(String str) {
        if (!TextUtils.isEmpty(str) && this.f11479a != null) {
            for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onAdUnionClick();
                }
            }
        }
        if (!TextUtils.isEmpty(str) && this.f11480t != null) {
            for (int i3 = 0; i3 < this.f11480t.size(); i3++) {
                bs bsVar = (bs) this.f11480t.get(i3);
                if (TextUtils.equals(str, bsVar.a())) {
                    bsVar.f();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f11481u == null) {
            return;
        }
        for (int i4 = 0; i4 < this.f11481u.size(); i4++) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f11481u.get(i4);
            if (TextUtils.equals(str, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onAdUnionClick();
            }
        }
    }

    public void a(RequestParameters requestParameters) {
        int width = requestParameters.getWidth();
        int height = requestParameters.getHeight();
        if (width > 0 && height > 0) {
            this.f11486z = width;
            this.f11467A = height;
        }
        this.f11468B = requestParameters;
        a(requestParameters.getExtras());
        c(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        this.f11182s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, this.f11484x);
            this.f11176m.createProdHandler(jSONObject2);
            this.f11176m.setAdContainer(this.f11171h);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, this.f11484x);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f11485y);
            if (cs.a().b()) {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML");
            } else {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML,CLICK2VIDEO");
            }
            jSONObject.put("n", "1");
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            if ("video".equals(this.f11484x)) {
                jSONObject.put("at", PointType.SIGMOB_APP);
                jSONObject.put(IAdInterListener.AdReqParam.MIME_TYPE, "video/mp4,image/jpg,image/gif,image/png");
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,HTML,MSSP,VIDEO,NMON");
            } else {
                jSONObject.put("at", "2");
            }
            jSONObject.put("w", "" + this.f11486z);
            jSONObject.put("h", "" + this.f11467A);
            jSONObject.put("msa", this.f11477K ? 16527 : MediaPlayer.MEDIA_PLAYER_OPTION_SEEK_END_ENABLE);
            jSONObject = m.a(jSONObject, b(this.f11178o));
            jSONObject.put("opt", this.f11474H);
            if (this.f11474H == 0) {
                jSONObject.put("optn", 1);
            }
            b(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    public String g() {
        return this.f11485y;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", this.f11482v);
            jSONObject.put("isCacheVideo", this.f11483w);
            jSONObject.put("cacheVideoOnlyWifi", this.f11469C);
            RequestParameters requestParameters = this.f11468B;
            jSONObject.put("appConfirmPolicy", requestParameters == null ? 1 : requestParameters.getAPPConfirmPolicy());
            jSONObject.put("reward_on_downloaded", this.f11478L);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b(IOAdEvent iOAdEvent) {
        if (this.f11473G == null || iOAdEvent == null || this.f11479a == null) {
            return;
        }
        String message = iOAdEvent.getMessage();
        for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
            if (xAdNativeResponse.getUniqueId().equals(message)) {
                this.f11473G.a(xAdNativeResponse);
            }
        }
    }

    public void a(int i2) {
        this.f11474H = i2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void f(String str) {
        if (!TextUtils.isEmpty(str) && this.f11479a != null) {
            for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADFunctionClick();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f11480t == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f11480t.size(); i3++) {
            bs bsVar = (bs) this.f11480t.get(i3);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.h();
            }
        }
    }

    public void a(int i2, int i3) {
        this.f11475I = i2;
        this.f11476J = i3;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(String str) {
        if (!TextUtils.isEmpty(str) && this.f11479a != null) {
            for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADPrivacyClick();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f11480t == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f11480t.size(); i3++) {
            bs bsVar = (bs) this.f11480t.get(i3);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.g();
            }
        }
    }

    public ViewGroup a(a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "initExpressContainer");
            jSONObject.put("uniqueId", aVar.M());
        } catch (JSONException e2) {
            bv.a().a(e2);
        }
        a(jSONObject, map);
        Object obj = map.get("container");
        if (obj instanceof ViewGroup) {
            return (ViewGroup) obj;
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b() {
        g.a aVar = this.f11470D;
        if (aVar != null) {
            aVar.b();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.f11471E;
        if (expressAdListener != null) {
            expressAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b(String str, boolean z2) {
        if (!TextUtils.isEmpty(str) && this.f11479a != null) {
            for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onAdDownloadWindow(z2);
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f11480t == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f11480t.size(); i3++) {
            bs bsVar = (bs) this.f11480t.get(i3);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.b(z2);
            }
        }
    }

    public RequestParameters f() {
        return this.f11468B;
    }

    public void a(ViewGroup viewGroup, a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "renderExpressView");
            jSONObject.put("uniqueId", aVar.M());
            map.put("w", Integer.valueOf(this.f11475I));
            map.put("h", Integer.valueOf(this.f11476J));
            map.put("container", viewGroup);
        } catch (JSONException e2) {
            bv.a().a(e2);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c() {
        g.a aVar = this.f11470D;
        if (aVar != null) {
            aVar.c();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.f11471E;
        if (expressAdListener != null) {
            expressAdListener.onVideoDownloadFailed();
        }
    }

    public void c(Map<String, String> map) {
        try {
            HashMap<String, String> mapA = m.a(map);
            if (this.f11178o == null) {
                this.f11178o = new HashMap<>();
            }
            if (mapA.isEmpty()) {
                return;
            }
            for (String str : mapA.keySet()) {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = mapA.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        this.f11178o.put(str, str2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a(View view, a aVar, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "switchTheme");
            map.put("view", view);
            map.put("code", Integer.valueOf(i2));
        } catch (JSONException e2) {
            bv.a().a(e2);
        }
        a(jSONObject, map);
        Object obj = map.get("result");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        if (this.f11470D != null) {
            XAdNativeResponse xAdNativeResponse = new XAdNativeResponse(this.f11172i, this, null);
            xAdNativeResponse.setNoAdUniqueId(str2);
            this.f11470D.b(i2, str, xAdNativeResponse);
        }
        if (this.f11471E != null) {
            bs bsVar = new bs(this.f11172i, this, null);
            bsVar.a(str2);
            this.f11471E.onNativeFail(i2, str, bsVar);
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.f11472F;
        if (entryAdListener != null) {
            entryAdListener.onNativeFail(i2, str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(int i2, String str, String str2) {
        if (this.f11470D != null) {
            XAdNativeResponse xAdNativeResponse = new XAdNativeResponse(this.f11172i, this, null);
            xAdNativeResponse.setNoAdUniqueId(str2);
            this.f11470D.a(i2, str, xAdNativeResponse);
        }
        if (this.f11471E != null) {
            bs bsVar = new bs(this.f11172i, this, null);
            bsVar.a(str2);
            this.f11471E.onNoAd(i2, str, bsVar);
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.f11472F;
        if (entryAdListener != null) {
            entryAdListener.onNoAd(i2, str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, boolean z2) {
        if (!TextUtils.isEmpty(str) && this.f11479a != null) {
            for (int i2 = 0; i2 < this.f11479a.size(); i2++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f11479a.get(i2);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADPermissionShow(z2);
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f11480t == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f11480t.size(); i3++) {
            bs bsVar = (bs) this.f11480t.get(i3);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.a(z2);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(Map<String, String> map) {
        int length;
        if (map == null || map.isEmpty()) {
            return;
        }
        HashMap map2 = new HashMap(map);
        HashMap<String, String> map3 = new HashMap<>();
        int i2 = 0;
        for (String str : ArticleInfo.PREDEFINED_KEYS) {
            if (map2.containsKey(str)) {
                String str2 = (String) map2.remove(str);
                if (!TextUtils.isEmpty(str2) && (length = str2.length() + i2) < 150) {
                    map3.put(str, str2);
                    i2 = length;
                }
            }
        }
        for (String str3 : ArticleInfo.PREDEFINED_KEYS_UNLIMITED) {
            if (map2.containsKey(str3)) {
                String str4 = (String) map2.remove(str3);
                if (!TextUtils.isEmpty(str4)) {
                    map3.put(str3, str4);
                }
            }
        }
        if (!map2.isEmpty()) {
            for (String str5 : map2.keySet()) {
                if (!TextUtils.isEmpty(str5)) {
                    String str6 = (String) map2.get(str5);
                    if (!TextUtils.isEmpty(str6)) {
                        int length2 = i2 + str5.length() + str6.length();
                        if (length2 >= 150) {
                            break;
                        }
                        map3.put("c_" + str5, str6);
                        i2 = length2 + 2;
                    } else {
                        continue;
                    }
                }
            }
        }
        this.f11178o = map3;
    }
}
