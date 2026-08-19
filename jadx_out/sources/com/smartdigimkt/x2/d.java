package com.smartdigimkt.x2;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f45091a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f45092b;

    public d(f fVar, Object obj) {
        this.f45092b = fVar;
        this.f45091a = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        com.smartdigimkt.c2.d dVar = this.f45092b.f45104b;
        if (dVar == null || dVar.f39641h == null) {
            com.smartdigimkt.w2.a.a(this.f45091a, "videoComponent empty");
            return;
        }
        long jA = dVar.a();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("progress", jA);
            com.smartdigimkt.w2.a.a(this.f45091a, jSONObject);
        } catch (Throwable th) {
            f fVar = this.f45092b;
            Object obj = this.f45091a;
            fVar.getClass();
            f.a(obj, "playerViewGetProgress", th);
        }
    }
}
