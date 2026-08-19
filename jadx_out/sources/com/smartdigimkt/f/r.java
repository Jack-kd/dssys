package com.smartdigimkt.f;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: f, reason: collision with root package name */
    public static volatile r f40164f;

    /* renamed from: a, reason: collision with root package name */
    public s f40165a;

    /* renamed from: d, reason: collision with root package name */
    public Context f40168d;

    /* renamed from: c, reason: collision with root package name */
    public int f40167c = 0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f40169e = false;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f40166b = new ArrayList();

    public final void a(q qVar) {
        s sVar;
        if (qVar != null) {
            this.f40166b.add(qVar);
        } else {
            this.f40167c--;
        }
        if (this.f40166b.size() != this.f40167c || (sVar = this.f40165a) == null) {
            return;
        }
        ArrayList arrayList = this.f40166b;
        if (arrayList != null) {
            u.a(sVar.f40170a, arrayList);
        } else {
            u.a(sVar.f40170a, new ArrayList());
        }
    }

    public final synchronized void a() {
        long jElapsedRealtime;
        try {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } catch (Throwable unused) {
        }
        if (this.f40169e) {
            return;
        }
        this.f40169e = true;
        new k(new l(SDKContext.getInstance().a(), SDKContext.getInstance().b())).a(0, (com.smartdigimkt.l4.b) new o(this, jElapsedRealtime));
    }

    public final void a(JSONObject jSONObject) {
        try {
            q qVar = new q(jSONObject);
            if (TextUtils.isEmpty(qVar.f40161f) || !u.a().f40172a.contains(qVar.f40161f)) {
                qVar = null;
            }
            if (qVar != null && qVar.f40162g == 2) {
                qVar.toString();
                File fileA = j.a(this.f40168d, qVar.f40161f);
                if (fileA != null) {
                    if (new File(fileA.getAbsolutePath(), qVar.f40156a + ".jar").exists()) {
                        qVar.toString();
                        a(qVar);
                        return;
                    }
                    File file = new File(fileA.getAbsolutePath(), qVar.f40156a + ".tmp");
                    if (file.exists()) {
                        file.getName();
                        file.delete();
                    }
                    try {
                        if (TextUtils.isEmpty(qVar.f40157b)) {
                            return;
                        }
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        n nVar = new n(qVar.f40157b, file, qVar);
                        nVar.f40150e = new p(this, jElapsedRealtime);
                        nVar.b();
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
            }
            a((q) null);
        } catch (Throwable unused) {
        }
    }
}
