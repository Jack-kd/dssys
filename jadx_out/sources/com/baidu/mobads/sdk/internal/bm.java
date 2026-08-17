package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.internal.bj;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
class bm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IOAdEvent f11186a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bj.a f11187b;

    public bm(bj.a aVar, IOAdEvent iOAdEvent) {
        this.f11187b = aVar;
        this.f11186a = iOAdEvent;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        int iIntValue = 0;
        int iIntValue2 = 0;
        IOAdEvent iOAdEvent = this.f11186a;
        if (iOAdEvent == null || TextUtils.isEmpty(iOAdEvent.getType())) {
            return;
        }
        String type = this.f11186a.getType();
        if (z.f11720J.equals(type)) {
            bj.this.a(this.f11186a);
            return;
        }
        if (z.f11723M.equals(type)) {
            bj.this.f11179p = this.f11186a.getMessage();
            bj.this.q();
            return;
        }
        if (z.f11724N.equals(type)) {
            bj.this.e(this.f11186a);
            return;
        }
        if (z.f11725O.equals(type)) {
            bj.this.f(this.f11186a);
            return;
        }
        if (z.f11733W.equals(type)) {
            bj.this.g(this.f11186a);
            return;
        }
        String str3 = "";
        if (z.f11754r.equals(type)) {
            HashMap map = (HashMap) this.f11186a.getData();
            if (map != null) {
                str3 = (String) map.get("error_message");
                Object obj = map.get("error_code");
                iIntValue = ((Integer) (obj != null ? obj : 0)).intValue();
                bj.this.f11173j = (String) map.get(bj.f11168e);
                str2 = bj.this.f11173j;
            } else {
                str2 = "";
            }
            bj.this.a(str3, iIntValue, str2);
            return;
        }
        if (z.f11722L.equals(type)) {
            HashMap map2 = (HashMap) this.f11186a.getData();
            if (map2 != null) {
                str3 = (String) map2.get("error_message");
                Object obj2 = map2.get("error_code");
                iIntValue2 = ((Integer) (obj2 != null ? obj2 : 0)).intValue();
                bj.this.f11173j = (String) map2.get(bj.f11168e);
                str = bj.this.f11173j;
            } else {
                str = "";
            }
            bj.this.a(iIntValue2, str3, str);
            return;
        }
        if (z.f11718H.equals(type)) {
            bj.this.h(this.f11186a);
            return;
        }
        if (z.f11734X.equals(type)) {
            bj.this.d();
            return;
        }
        if (z.f11735Y.equals(type)) {
            bj.this.d(this.f11186a);
            return;
        }
        if (z.aa.equals(type)) {
            bj.this.s();
            return;
        }
        if (z.ab.equals(type)) {
            Map<String, Object> data = this.f11186a.getData();
            bj.this.a(data != null ? "1".equals((String) data.get("serverVerify")) : false, data);
            return;
        }
        if (z.ac.equals(type)) {
            bj.this.b();
            return;
        }
        if (z.ad.equals(type)) {
            bj.this.c();
            return;
        }
        if (z.ae.equals(type)) {
            bj.this.c();
            return;
        }
        if (z.f11721K.equals(type)) {
            bj.this.b(this.f11186a);
            return;
        }
        if (z.af.equals(type)) {
            bj.this.a(this.f11186a.getMessage(), 1 == this.f11186a.getCode());
            return;
        }
        if (z.ag.equals(type)) {
            bj.this.e(this.f11186a.getMessage());
            return;
        }
        if (z.ah.equals(type)) {
            bj.this.f(this.f11186a.getMessage());
            return;
        }
        if (z.ai.equals(type)) {
            bj.this.d(this.f11186a.getMessage());
            return;
        }
        if (z.f11714D.equals(type)) {
            bj.this.g(this.f11186a.getMessage());
            return;
        }
        if (z.f11736Z.equals(type)) {
            bj.this.t();
            return;
        }
        if (z.aj.equals(type)) {
            bj.this.b(this.f11186a.getMessage(), 1 == this.f11186a.getCode());
            return;
        }
        if (z.am.equals(type)) {
            bj.this.c(this.f11186a);
            return;
        }
        if (z.ak.equals(type)) {
            bj.this.u();
            return;
        }
        if (z.al.equals(type)) {
            bj.this.v();
            return;
        }
        if (z.ao.equals(type)) {
            bj.this.i(this.f11186a);
            return;
        }
        if (z.ap.equals(type)) {
            bj.this.j(this.f11186a);
        } else if (z.an.equals(type)) {
            bj.this.k(this.f11186a);
        } else if (z.aq.equals(type)) {
            bj.this.l(this.f11186a);
        }
    }
}
