package com.baidu.oauth.sdkbqt.auth;

import org.json.JSONException;
import org.json.JSONObject;
import q.AbstractC1755c;

/* loaded from: classes2.dex */
public class h extends AbstractC1755c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f11792a;

    public h(g gVar) {
        this.f11792a = gVar;
    }

    @Override // q.InterfaceC1754b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(s.c cVar) throws JSONException {
        o.d.b(i.f11793r, "FE need get a new sso_hash");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errno", 0);
            jSONObject.put("sso_hash", cVar.f52746o);
        } catch (JSONException e2) {
            o.d.c(e2);
        }
        this.f11792a.f11791b.f11809q.confirm(cVar.f52746o);
    }
}
