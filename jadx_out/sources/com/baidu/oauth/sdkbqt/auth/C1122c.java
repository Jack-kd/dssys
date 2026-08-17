package com.baidu.oauth.sdkbqt.auth;

import android.app.Activity;
import android.content.Intent;
import com.baidu.oauth.sdkbqt.view.WebViewActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import q.AbstractC1753a;
import r.C1760a;
import s.C1764a;

/* renamed from: com.baidu.oauth.sdkbqt.auth.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1122c {

    /* renamed from: g, reason: collision with root package name */
    public static final String f11782g = "c";

    /* renamed from: a, reason: collision with root package name */
    public Activity f11783a;

    /* renamed from: b, reason: collision with root package name */
    public AbstractC1753a f11784b;

    /* renamed from: c, reason: collision with root package name */
    public C1760a f11785c;

    /* renamed from: d, reason: collision with root package name */
    public C1764a f11786d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11787e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11788f;

    public C1122c(Activity activity) {
        o.g.g(activity, "activity is null");
        this.f11783a = activity;
    }

    public final HashMap a(List list) {
        if (list == null || list.isEmpty()) {
            return o.b.f52024a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(o.b.f52024a.size());
        Object[] array = o.b.f52024a.keySet().toArray();
        if (!"0".equals(o.g.l((String) list.get(0)))) {
            linkedHashMap.put(array[0].toString(), (String) o.b.f52024a.get(array[0]));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strL = o.g.l((String) it.next());
            Iterator it2 = o.b.f52024a.keySet().iterator();
            while (true) {
                if (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (str.equals(strL)) {
                        linkedHashMap.put(str, (String) o.b.f52024a.get(str));
                        break;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public final void b(Intent intent, String str) {
        C1120a c1120aB = C1121b.b();
        intent.putExtra("extra_calling_app_id", c1120aB.a());
        intent.putExtra("extra_redirect_url", c1120aB.f());
        intent.putExtra("extra_scope", c1120aB.g());
        intent.putExtra("extra_oauth_state", str);
        intent.putExtra("extra_oauth_sdk_version", "2.0.6.10");
        intent.putExtra("extra_use_sha1_auth", c1120aB.i());
        intent.putExtra("extra_pass_sdk_version", "8.8.8");
        this.f11783a.startActivityForResult(intent, 1001);
        HashMap map = new HashMap();
        map.put("oauth_type", "sso");
        o.e.a("bdoauth_open", map);
    }

    public final void c(String str) {
        d(str, false);
    }

    public final void d(String str, boolean z2) {
        e(str, z2, false);
    }

    public final void e(String str, boolean z2, boolean z3) {
        new C1123d().e(this.f11783a, C1121b.b().b());
        Intent intent = new Intent(this.f11783a, (Class<?>) WebViewActivity.class);
        intent.putExtra("extra_oauth_state", str);
        intent.putExtra("extra_degrade_h5_auth", z2);
        intent.putExtra("extra_degrade_exempt_auth_page", z3);
        this.f11783a.startActivityForResult(intent, 1002);
        HashMap map = new HashMap();
        map.put("oauth_type", "web");
        map.put("isDegrade", z2 ? "1" : "0");
        o.e.a("bdoauth_open", map);
    }

    public final boolean f(AbstractC1753a abstractC1753a) {
        o.g.g(abstractC1753a, "please set auth listener");
        this.f11784b = abstractC1753a;
        if (!o.g.i(com.kuaishou.weapon.p0.g.f31159a, this.f11783a)) {
            throw new IllegalArgumentException("Application requires permission to access the Internet");
        }
        if (C1121b.b() != null) {
            return true;
        }
        C1764a c1764a = new C1764a();
        c1764a.c(-206);
        abstractC1753a.onFailure(c1764a);
        return false;
    }

    public void g(C1760a c1760a, AbstractC1753a abstractC1753a) {
        o.g.g(c1760a, "please set auth dto params");
        if (f(abstractC1753a)) {
            this.f11785c = c1760a;
            HashMap mapA = a(c1760a.f52723d);
            String str = f11782g;
            o.d.b(str, "authorize isSlient:" + c1760a.f52721b);
            if (mapA.size() > 0) {
                Object[] array = mapA.keySet().toArray();
                StringBuilder sb = new StringBuilder();
                sb.append("authorize first package=");
                sb.append(array.length > 0 ? array[0] : "null");
                sb.append(", dto.authorizedPkgs.size=");
                List list = c1760a.f52723d;
                sb.append(list == null ? 0 : list.size());
                sb.append(", final authorizedPkgs.size=");
                sb.append(mapA.size());
                o.d.b(str, sb.toString());
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("authorize  to.authorizedPkgs.size=");
                List list2 = c1760a.f52723d;
                sb2.append(list2 == null ? 0 : list2.size());
                sb2.append(", final authorizedPkgs.size=");
                sb2.append(mapA.size());
                o.d.b(str, sb2.toString());
            }
            Intent intentA = new m().a(this.f11783a, mapA, c1760a.f52721b);
            if (intentA != null) {
                this.f11788f = true;
            }
            char c2 = c1760a.f52720a;
            if (c2 != 0) {
                if (c2 == 1) {
                    if (intentA != null) {
                        o.d.b(str, "authorize oauthType=OAUTH_TYPE_SSO, intent not null");
                        b(intentA, c1760a.f52722c);
                        return;
                    } else {
                        o.d.b(str, "authorize oauthType=OAUTH_TYPE_SSO, ERROR_CODE_NOT_INSTALL_BAIDU_APP");
                        C1764a c1764a = new C1764a();
                        c1764a.c(-207);
                        abstractC1753a.onFailure(c1764a);
                        return;
                    }
                }
                if (c2 == 2) {
                    o.d.b(str, "authorize oauthType=OAUTH_TYPE_WEB");
                    c(c1760a.f52722c);
                    return;
                } else if (c2 != 3) {
                    return;
                }
            }
            String str2 = c2 == 3 ? "OAUTH_TYPE_BOTH_V2" : "OAUTH_TYPE_BOTH";
            if (intentA != null) {
                o.d.b(str, "authorize oauthType=" + str2 + ", intent not null");
                b(intentA, c1760a.f52722c);
                return;
            }
            Intent intentA2 = new m().a(this.f11783a, mapA, false);
            if (intentA2 != null) {
                o.d.b(str, "authorize oauthType=" + str2 + ", intent is null, but intent2 not null");
                this.f11788f = true;
                b(intentA2, c1760a.f52722c);
                return;
            }
            o.d.b(str, "authorize oauthType=" + str2 + ", intent is null, then OAUTH_TYPE_WEB");
            if (c1760a.f52721b) {
                e(c1760a.f52722c, true, true);
            } else {
                c(c1760a.f52722c);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d1 A[Catch: Exception -> 0x01de, TryCatch #0 {Exception -> 0x01de, blocks: (B:66:0x01b2, B:68:0x01d1, B:71:0x01e0, B:74:0x01ee), top: B:141:0x01b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(int r23, int r24, android.content.Intent r25) {
        /*
            Method dump skipped, instructions count: 1018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.oauth.sdkbqt.auth.C1122c.h(int, int, android.content.Intent):void");
    }
}
