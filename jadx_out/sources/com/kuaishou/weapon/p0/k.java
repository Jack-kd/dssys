package com.kuaishou.weapon.p0;

import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class k<T> implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private String f31175a;

    /* renamed from: b, reason: collision with root package name */
    private JSONObject f31176b;

    /* renamed from: c, reason: collision with root package name */
    private j f31177c;

    /* renamed from: d, reason: collision with root package name */
    private Context f31178d;

    /* renamed from: e, reason: collision with root package name */
    private String f31179e;

    /* renamed from: f, reason: collision with root package name */
    private String f31180f;

    public k(Context context, String str, String str2, String str3, JSONObject jSONObject, j jVar) {
        this.f31178d = context;
        this.f31175a = str3;
        this.f31176b = jSONObject;
        this.f31177c = jVar;
        this.f31179e = str;
        this.f31180f = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            l lVarA = l.a(this.f31178d);
            m mVar = new m(this.f31175a, this.f31176b);
            mVar.a(this.f31179e);
            mVar.b(this.f31180f);
            lVarA.b(mVar, new j() { // from class: com.kuaishou.weapon.p0.k.1
                @Override // com.kuaishou.weapon.p0.j
                public void a(String str) {
                    e.c("WeaponHttpTask sendLog response: --- " + str);
                    if (k.this.f31177c != null) {
                        k.this.f31177c.a(str);
                    }
                }

                @Override // com.kuaishou.weapon.p0.j
                public void b(String str) {
                    e.c("WeaponHttpTask sendLog errorMsg: --- " + str);
                    if (k.this.f31177c != null) {
                        k.this.f31177c.b(str);
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }
}
