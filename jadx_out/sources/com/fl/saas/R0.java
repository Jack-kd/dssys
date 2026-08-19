package com.fl.saas;

import android.text.TextUtils;
import com.anythink.china.activity.TransparentActivity;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.s;
import com.fl.saas.C1188j;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class R0 {

    /* renamed from: b, reason: collision with root package name */
    private static R0 f30045b;

    /* renamed from: a, reason: collision with root package name */
    private long f30046a;

    public class a implements T {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ InterfaceC1201n0 f30047a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f30048b;

        public a(InterfaceC1201n0 interfaceC1201n0, String str) {
            this.f30047a = interfaceC1201n0;
            this.f30048b = str;
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("requestAdxResponse");
            R0.this.a(str, this.f30047a, this.f30048b);
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.e(exc.getMessage());
            InterfaceC1201n0 interfaceC1201n0 = this.f30047a;
            if (interfaceC1201n0 == null) {
                return;
            }
            interfaceC1201n0.onAdFailed(FLError.create(ErrorCodeConstant.NETWORK_ERROR, exc.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[Catch: all -> 0x0049, TryCatch #1 {all -> 0x0049, blocks: (B:10:0x001b, B:12:0x0021, B:14:0x0030, B:15:0x0045, B:19:0x004c, B:29:0x0078, B:32:0x009b, B:34:0x00a3, B:35:0x00aa, B:52:0x0610, B:54:0x0614), top: B:59:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00aa A[Catch: all -> 0x0049, TRY_LEAVE, TryCatch #1 {all -> 0x0049, blocks: (B:10:0x001b, B:12:0x0021, B:14:0x0030, B:15:0x0045, B:19:0x004c, B:29:0x0078, B:32:0x009b, B:34:0x00a3, B:35:0x00aa, B:52:0x0610, B:54:0x0614), top: B:59:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r76, com.fl.saas.InterfaceC1201n0 r77, java.lang.String r78) {
        /*
            Method dump skipped, instructions count: 1581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.R0.a(java.lang.String, com.fl.saas.n0, java.lang.String):void");
    }

    private C1188j a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        C1188j c1188j = new C1188j();
        c1188j.f30520l = this.f30046a;
        c1188j.f30559y = jSONObject.optString("adv_name", "广告");
        c1188j.f30554w0 = jSONObject.optString("ac_type");
        c1188j.f30496d = jSONObject.optInt("price");
        c1188j.f30557x0 = jSONObject.optString("landing_page");
        c1188j.f30560y0 = jSONObject.optString(g.a.f3280q);
        c1188j.f30563z0 = jSONObject.optString("download_url");
        c1188j.f30408A0 = jSONObject.optString("app_package");
        c1188j.f30414C0 = jSONObject.optString("app_name");
        c1188j.f30417D0 = jSONObject.optString("advertiser_name");
        c1188j.f30420E0 = jSONObject.optString("app_version");
        c1188j.f30423F0 = jSONObject.optString("package_size_bytes");
        c1188j.f30426G0 = jSONObject.optString("permissions_url");
        c1188j.f30435J0 = jSONObject.optString("app_intro_url");
        c1188j.f30411B0 = jSONObject.optString("ad_logo");
        c1188j.f30429H0 = jSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.PRIVACY_AGREEMENT);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(TransparentActivity.f1409d);
        if (jSONArrayOptJSONArray != null) {
            c1188j.f30432I0 = jSONArrayOptJSONArray.toString();
        }
        c1188j.f30409A1 = jSONObject.optString("wx_app_id");
        c1188j.f30412B1 = jSONObject.optString("wx_mini_pro_id");
        c1188j.f30415C1 = jSONObject.optString("wx_mini_pro_path");
        c1188j.f30418D1 = jSONObject.optInt("validityTime", 1800);
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("creative");
        C1188j.c cVar = new C1188j.c();
        if (jSONObjectOptJSONObject2 != null) {
            String strOptString = jSONObjectOptJSONObject2.optString("cid");
            c1188j.f30562z = strOptString;
            cVar.f30573a = strOptString;
            cVar.f30574b = jSONObjectOptJSONObject2.optInt("ctype");
            cVar.f30575c = jSONObjectOptJSONObject2.optString(g.a.f3271h);
            c1188j.f30530o0 = jSONObjectOptJSONObject2.optString(g.a.f3271h);
            cVar.f30576d = jSONObjectOptJSONObject2.optString("desc");
            c1188j.f30543s1 = jSONObjectOptJSONObject2.optString("desc");
            cVar.f30577e = jSONObjectOptJSONObject2.optString("button");
            cVar.f30578f = jSONObjectOptJSONObject2.optString("brand");
            jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("video");
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("imgs");
            ArrayList arrayList = new ArrayList();
            C1188j.d dVar = new C1188j.d();
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray2.optJSONObject(i2);
                    dVar.f30582a = jSONObjectOptJSONObject3.optString("url");
                    dVar.f30583b = jSONObjectOptJSONObject3.optInt("width");
                    dVar.f30584c = jSONObjectOptJSONObject3.optInt("height");
                    arrayList.add(dVar);
                    if (i2 == 0) {
                        c1188j.f30534p1 = jSONObjectOptJSONObject3.optString("url");
                        c1188j.f30552v1 = jSONObjectOptJSONObject3.optInt("width");
                        c1188j.f30555w1 = jSONObjectOptJSONObject3.optInt("height");
                    }
                }
            }
            cVar.f30580h = arrayList;
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("icon");
            C1188j.d dVar2 = new C1188j.d();
            if (jSONObjectOptJSONObject4 != null) {
                dVar2.f30582a = jSONObjectOptJSONObject4.optString("url");
                dVar2.f30583b = jSONObjectOptJSONObject4.optInt("width");
                dVar2.f30584c = jSONObjectOptJSONObject4.optInt("height");
                cVar.f30581i = dVar2;
                c1188j.f30558x1 = jSONObjectOptJSONObject4.optString("url");
            }
        } else {
            jSONObjectOptJSONObject = null;
        }
        C1188j.e eVar = new C1188j.e();
        if (jSONObjectOptJSONObject != null) {
            eVar.f30585a = jSONObjectOptJSONObject.optString(s.a.f3400b);
            c1188j.f30546t1 = jSONObjectOptJSONObject.optString(s.a.f3400b);
            eVar.f30586b = jSONObjectOptJSONObject.optInt("width");
            eVar.f30587c = jSONObjectOptJSONObject.optInt("height");
            eVar.f30588d = jSONObjectOptJSONObject.optInt("duration");
            c1188j.f30478X1 = jSONObjectOptJSONObject.optInt("duration");
            eVar.f30589e = jSONObjectOptJSONObject.optLong("size");
            eVar.f30591g = jSONObjectOptJSONObject.optString("end_url");
            c1188j.f30549u1 = jSONObjectOptJSONObject.optString("end_url");
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("cover");
            if (jSONObjectOptJSONObject5 != null) {
                C1188j.d dVar3 = new C1188j.d();
                dVar3.f30582a = jSONObjectOptJSONObject5.optString("url");
                dVar3.f30583b = jSONObjectOptJSONObject5.optInt("width");
                dVar3.f30584c = jSONObjectOptJSONObject5.optInt("height");
                eVar.f30590f = dVar3;
            }
            cVar.f30579g = eVar;
        }
        c1188j.f30453P0 = cVar;
        C1188j.a aVar = new C1188j.a();
        JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("ad_interactio_mode");
        if (jSONObjectOptJSONObject6 != null) {
            aVar.f30565a = jSONObjectOptJSONObject6.optString("normalclick", "");
            aVar.f30566b = jSONObjectOptJSONObject6.optString("shake", "");
            aVar.f30567c = jSONObjectOptJSONObject6.optString("slideclick", "");
            aVar.f30568d = jSONObjectOptJSONObject6.optString("twist", "");
        }
        c1188j.l2 = aVar;
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("notice_success_urls");
        if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                c1188j.f30519k1.add(jSONArrayOptJSONArray3.optString(i3));
            }
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("notice_failed_urls");
        if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                c1188j.f30522l1.add(jSONArrayOptJSONArray4.optString(i4));
            }
        }
        JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("imp_notice_urls");
        if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
            for (int i5 = 0; i5 < jSONArrayOptJSONArray5.length(); i5++) {
                c1188j.f30456Q0.add(jSONArrayOptJSONArray5.optString(i5));
            }
        }
        JSONArray jSONArrayOptJSONArray6 = jSONObject.optJSONArray("click_notice_urls");
        if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() > 0) {
            for (int i6 = 0; i6 < jSONArrayOptJSONArray6.length(); i6++) {
                c1188j.f30459R0.add(jSONArrayOptJSONArray6.optString(i6));
            }
        }
        JSONArray jSONArrayOptJSONArray7 = jSONObject.optJSONArray("dpsuccess_notice_urls");
        if (jSONArrayOptJSONArray7 != null && jSONArrayOptJSONArray7.length() > 0) {
            for (int i7 = 0; i7 < jSONArrayOptJSONArray7.length(); i7++) {
                c1188j.f30462S0.add(jSONArrayOptJSONArray7.optString(i7));
            }
        }
        JSONArray jSONArrayOptJSONArray8 = jSONObject.optJSONArray("video_end_notice_urls");
        if (jSONArrayOptJSONArray8 != null && jSONArrayOptJSONArray8.length() > 0) {
            for (int i8 = 0; i8 < jSONArrayOptJSONArray8.length(); i8++) {
                c1188j.f30465T0.add(jSONArrayOptJSONArray8.optString(i8));
            }
        }
        JSONArray jSONArrayOptJSONArray9 = jSONObject.optJSONArray("download_start_notice_urls");
        if (jSONArrayOptJSONArray9 != null && jSONArrayOptJSONArray9.length() > 0) {
            for (int i9 = 0; i9 < jSONArrayOptJSONArray9.length(); i9++) {
                c1188j.f30468U0.add(jSONArrayOptJSONArray9.optString(i9));
            }
        }
        JSONArray jSONArrayOptJSONArray10 = jSONObject.optJSONArray("download_end_notice_urls");
        if (jSONArrayOptJSONArray10 != null && jSONArrayOptJSONArray10.length() > 0) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray10.length(); i10++) {
                c1188j.f30471V0.add(jSONArrayOptJSONArray10.optString(i10));
            }
        }
        JSONArray jSONArrayOptJSONArray11 = jSONObject.optJSONArray("install_start_notice_urls");
        if (jSONArrayOptJSONArray11 != null && jSONArrayOptJSONArray11.length() > 0) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray11.length(); i11++) {
                c1188j.f30474W0.add(jSONArrayOptJSONArray11.optString(i11));
            }
        }
        JSONArray jSONArrayOptJSONArray12 = jSONObject.optJSONArray("install_end_notice_urls");
        if (jSONArrayOptJSONArray12 != null && jSONArrayOptJSONArray12.length() > 0) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray12.length(); i12++) {
                c1188j.f30477X0.add(jSONArrayOptJSONArray12.optString(i12));
            }
        }
        JSONArray jSONArrayOptJSONArray13 = jSONObject.optJSONArray("open_notice_urls");
        if (jSONArrayOptJSONArray13 != null && jSONArrayOptJSONArray13.length() > 0) {
            for (int i13 = 0; i13 < jSONArrayOptJSONArray13.length(); i13++) {
                c1188j.f30480Y0.add(jSONArrayOptJSONArray13.optString(i13));
            }
        }
        JSONArray jSONArrayOptJSONArray14 = jSONObject.optJSONArray("video_view_urls");
        if (jSONArrayOptJSONArray14 != null && jSONArrayOptJSONArray14.length() > 0) {
            for (int i14 = 0; i14 < jSONArrayOptJSONArray14.length(); i14++) {
                c1188j.f30483Z0.add(jSONArrayOptJSONArray14.optString(i14));
            }
        }
        JSONArray jSONArrayOptJSONArray15 = jSONObject.optJSONArray("close");
        if (jSONArrayOptJSONArray15 != null && jSONArrayOptJSONArray15.length() > 0) {
            for (int i15 = 0; i15 < jSONArrayOptJSONArray15.length(); i15++) {
                c1188j.f30487a1.add(jSONArrayOptJSONArray15.optString(i15));
            }
        }
        JSONArray jSONArrayOptJSONArray16 = jSONObject.optJSONArray("video_start_notice_urls");
        if (jSONArrayOptJSONArray16 != null && jSONArrayOptJSONArray16.length() > 0) {
            for (int i16 = 0; i16 < jSONArrayOptJSONArray16.length(); i16++) {
                c1188j.f30491b1.add(jSONArrayOptJSONArray16.optString(i16));
            }
        }
        JSONArray jSONArrayOptJSONArray17 = jSONObject.optJSONArray("video_pause_notice_urls");
        if (jSONArrayOptJSONArray17 != null && jSONArrayOptJSONArray17.length() > 0) {
            for (int i17 = 0; i17 < jSONArrayOptJSONArray17.length(); i17++) {
                c1188j.f30504f1.add(jSONArrayOptJSONArray17.optString(i17));
            }
        }
        JSONArray jSONArrayOptJSONArray18 = jSONObject.optJSONArray("video_fullscreen_notice_urls");
        if (jSONArrayOptJSONArray18 != null && jSONArrayOptJSONArray18.length() > 0) {
            for (int i18 = 0; i18 < jSONArrayOptJSONArray18.length(); i18++) {
                c1188j.f30507g1.add(jSONArrayOptJSONArray18.optString(i18));
            }
        }
        JSONArray jSONArrayOptJSONArray19 = jSONObject.optJSONArray("video_continue_notice_urls");
        if (jSONArrayOptJSONArray19 != null && jSONArrayOptJSONArray19.length() > 0) {
            for (int i19 = 0; i19 < jSONArrayOptJSONArray19.length(); i19++) {
                c1188j.f30510h1.add(jSONArrayOptJSONArray19.optString(i19));
            }
        }
        JSONArray jSONArrayOptJSONArray20 = jSONObject.optJSONArray("video_skip_notice_urls");
        if (jSONArrayOptJSONArray20 != null && jSONArrayOptJSONArray20.length() > 0) {
            for (int i20 = 0; i20 < jSONArrayOptJSONArray20.length(); i20++) {
                c1188j.f30513i1.add(jSONArrayOptJSONArray20.optString(i20));
            }
        }
        JSONArray jSONArrayOptJSONArray21 = jSONObject.optJSONArray("video_mute_notice_urls");
        if (jSONArrayOptJSONArray21 != null && jSONArrayOptJSONArray21.length() > 0) {
            for (int i21 = 0; i21 < jSONArrayOptJSONArray21.length(); i21++) {
                c1188j.f30516j1.add(jSONArrayOptJSONArray21.optString(i21));
            }
        }
        JSONArray jSONArrayOptJSONArray22 = jSONObject.optJSONArray("video_first_quartile_notice_urls");
        if (jSONArrayOptJSONArray22 != null && jSONArrayOptJSONArray22.length() > 0) {
            for (int i22 = 0; i22 < jSONArrayOptJSONArray22.length(); i22++) {
                c1188j.f30495c1.add(jSONArrayOptJSONArray22.optString(i22));
            }
        }
        JSONArray jSONArrayOptJSONArray23 = jSONObject.optJSONArray("video_midpoint_notice_urls");
        if (jSONArrayOptJSONArray23 != null && jSONArrayOptJSONArray23.length() > 0) {
            for (int i23 = 0; i23 < jSONArrayOptJSONArray23.length(); i23++) {
                c1188j.f30498d1.add(jSONArrayOptJSONArray23.optString(i23));
            }
        }
        JSONArray jSONArrayOptJSONArray24 = jSONObject.optJSONArray("video_third_quartile_notice_urls");
        if (jSONArrayOptJSONArray24 != null && jSONArrayOptJSONArray24.length() > 0) {
            for (int i24 = 0; i24 < jSONArrayOptJSONArray24.length(); i24++) {
                c1188j.f30501e1.add(jSONArrayOptJSONArray24.optString(i24));
            }
        }
        JSONArray jSONArrayOptJSONArray25 = jSONObject.optJSONArray("app_installed_notice_urls");
        if (jSONArrayOptJSONArray25 != null && jSONArrayOptJSONArray25.length() > 0) {
            for (int i25 = 0; i25 < jSONArrayOptJSONArray25.length(); i25++) {
                c1188j.f30525m1.add(jSONArrayOptJSONArray25.optString(i25));
            }
        }
        JSONArray jSONArrayOptJSONArray26 = jSONObject.optJSONArray("dp_attempt_notice_urls");
        if (jSONArrayOptJSONArray26 != null && jSONArrayOptJSONArray26.length() > 0) {
            for (int i26 = 0; i26 < jSONArrayOptJSONArray26.length(); i26++) {
                c1188j.f30528n1.add(jSONArrayOptJSONArray26.optString(i26));
            }
        }
        JSONArray jSONArrayOptJSONArray27 = jSONObject.optJSONArray("dpfail_notice_urls");
        if (jSONArrayOptJSONArray27 != null && jSONArrayOptJSONArray27.length() > 0) {
            for (int i27 = 0; i27 < jSONArrayOptJSONArray27.length(); i27++) {
                c1188j.f30531o1.add(jSONArrayOptJSONArray27.optString(i27));
            }
        }
        c1188j.f30512i0 = jSONObject.optInt("is_black", 0);
        return c1188j;
    }

    public static R0 a() {
        if (f30045b == null) {
            synchronized (R0.class) {
                f30045b = new R0();
            }
        }
        return f30045b;
    }

    public void a(String str, String str2, boolean z2, InterfaceC1201n0 interfaceC1201n0) {
        LogcatUtil.d("requestAd:" + str2);
        this.f30046a = DeviceUtil.getBootTime();
        if (TextUtils.isEmpty(str)) {
            if (interfaceC1201n0 == null) {
                return;
            }
            interfaceC1201n0.onAdFailed(FLError.create(ErrorCodeConstant.NETWORK_ERROR, "placeId null"));
        } else {
            C1166c.c().a(CommConstant.API.NEW_API_BID, new HashMap(), AbstractC1191k.e(a(str2, str, z2).toString()), new a(interfaceC1201n0, str));
        }
    }

    private JSONObject a(String str, String str2, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.putOpt("link_id", str);
            }
            jSONObject.putOpt("id", DeviceUtil.getReqID(str2));
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("place_id", str2);
            jSONObject.putOpt("mit", Integer.valueOf(AbstractC1236z.c()));
            jSONObject.putOpt("miv", Integer.valueOf(AbstractC1236z.b()));
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
            jSONObject.putOpt("is_hot_start", Integer.valueOf(z2 ? 1 : 0));
            return jSONObject;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return jSONObject;
        }
    }
}
