package com.baidu.mobads.sdk.api;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.az;
import com.baidu.mobads.sdk.internal.b.a;
import com.baidu.mobads.sdk.internal.bj;
import com.baidu.mobads.sdk.internal.z;
import com.baidu.oauth.sdkbqt.auth.C1120a;
import com.baidu.oauth.sdkbqt.auth.C1121b;
import com.baidu.oauth.sdkbqt.auth.C1122c;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONObject;
import q.AbstractC1753a;
import r.C1760a;
import s.C1764a;

/* loaded from: classes2.dex */
public class ProxyOauthHandler {
    private C1122c bdSsoHandler;

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackFail(final OauthCodeCallback oauthCodeCallback, final int i2, final String str, final JSONObject jSONObject) {
        bj.a(new Runnable() { // from class: com.baidu.mobads.sdk.api.ProxyOauthHandler.3
            @Override // java.lang.Runnable
            public void run() {
                OauthCodeCallback oauthCodeCallback2 = oauthCodeCallback;
                if (oauthCodeCallback2 != null) {
                    oauthCodeCallback2.onFailure(i2, str, jSONObject);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject resultToJson(C1764a c1764a) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sub_code", c1764a.f52737f);
            jSONObject.put("sub_msg", c1764a.f52738g);
            jSONObject.put("is_visible_auth", c1764a.f52735d);
            jSONObject.put("is_degrade", c1764a.f52736e);
            jSONObject.put("is_install_bd_app", c1764a.f52740i);
            jSONObject.put("is_pass_new_version", c1764a.f52739h);
            jSONObject.put("app_version", c1764a.f52741j);
            jSONObject.put("pass_sdk_version", c1764a.f52742k);
            jSONObject.put("allow_launch_auth_app", c1764a.f52743l);
            jSONObject.put("login_state_before_auth", c1764a.f52744m);
            jSONObject.put("login_state_after_auth", c1764a.f52745n);
            return jSONObject;
        } catch (Throwable th) {
            az.e(th);
            return jSONObject;
        }
    }

    public void authorizeCallBack(int i2, int i3, Intent intent) {
        try {
            C1122c c1122c = this.bdSsoHandler;
            if (c1122c != null) {
                c1122c.h(i2, i3, intent);
            }
        } catch (Exception e2) {
            az.e(e2);
        }
    }

    public void login(Activity activity, String str, String str2, boolean z2, boolean z3, final OauthCodeCallback oauthCodeCallback) {
        if (activity == null) {
            callbackFail(oauthCodeCallback, 303, "Init failed.", null);
            return;
        }
        C1120a c1120a = new C1120a(activity.getApplicationContext(), str, z.f11740d, "basic", z2, str2);
        c1120a.h(true);
        c1120a.j(new C1120a.InterfaceC0141a() { // from class: com.baidu.mobads.sdk.api.ProxyOauthHandler.1
            @Override // com.baidu.oauth.sdkbqt.auth.C1120a.InterfaceC0141a
            public int oauthResID(String str3) {
                Integer numA = a.a(str3);
                if (numA != null) {
                    return numA.intValue();
                }
                return 0;
            }
        });
        C1121b.c(c1120a);
        this.bdSsoHandler = new C1122c(activity);
        C1760a c1760a = new C1760a();
        c1760a.f52720a = (char) 3;
        c1760a.f52722c = UUID.randomUUID().toString();
        ArrayList arrayList = new ArrayList();
        arrayList.add("Y29tLmJhaWR1LnNlYXJjaGJveA==");
        c1760a.f52723d = arrayList;
        c1760a.f52721b = true ^ z3;
        this.bdSsoHandler.g(c1760a, new AbstractC1753a() { // from class: com.baidu.mobads.sdk.api.ProxyOauthHandler.2
            @Override // q.InterfaceC1754b
            public void onFailure(C1764a c1764a) {
                ProxyOauthHandler.this.bdSsoHandler = null;
                ProxyOauthHandler.this.callbackFail(oauthCodeCallback, c1764a.a(), c1764a.b(), ProxyOauthHandler.this.resultToJson(c1764a));
            }

            @Override // q.InterfaceC1754b
            public void onSuccess(C1764a c1764a) {
                ProxyOauthHandler.this.bdSsoHandler = null;
                final String strE = c1764a.e();
                final JSONObject jSONObjectResultToJson = ProxyOauthHandler.this.resultToJson(c1764a);
                if (TextUtils.isEmpty(strE)) {
                    ProxyOauthHandler.this.callbackFail(oauthCodeCallback, -201, "Empty code.", jSONObjectResultToJson);
                } else {
                    bj.a(new Runnable() { // from class: com.baidu.mobads.sdk.api.ProxyOauthHandler.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            OauthCodeCallback oauthCodeCallback2 = oauthCodeCallback;
                            if (oauthCodeCallback2 != null) {
                                oauthCodeCallback2.onSuccess(strE, jSONObjectResultToJson);
                            }
                        }
                    });
                }
            }
        });
    }

    public void release() {
        this.bdSsoHandler = null;
    }
}
