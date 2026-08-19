package com.beizi.fusion;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.update.UpdateModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.InitTraceModel;
import com.beizi.fusion.kd;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.beizi.fusion.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1135g {

    /* renamed from: i, reason: collision with root package name */
    public static String f13904i = "";

    /* renamed from: c, reason: collision with root package name */
    private C1150v f13907c;

    /* renamed from: d, reason: collision with root package name */
    private ConfigResponseModel f13908d;

    /* renamed from: g, reason: collision with root package name */
    private final Context f13911g;

    /* renamed from: h, reason: collision with root package name */
    private InitTraceModel f13912h;

    /* renamed from: b, reason: collision with root package name */
    private final Object f13906b = new Object();

    /* renamed from: e, reason: collision with root package name */
    private final CopyOnWriteArrayList f13909e = new CopyOnWriteArrayList();

    /* renamed from: f, reason: collision with root package name */
    private final CopyOnWriteArrayList f13910f = new CopyOnWriteArrayList();

    /* renamed from: a, reason: collision with root package name */
    private final id f13905a = C1127b0.a().b();

    /* renamed from: com.beizi.fusion.g$a */
    public enum a {
        EXPIRED,
        PREFER_UPDATE,
        VALID
    }

    public C1135g(Context context) {
        this.f13911g = context.getApplicationContext();
        g();
    }

    private ConfigResponseModel e() {
        C1150v c1150v = this.f13907c;
        String strA = ((kd) gh.a().b(this.f13911g)).a((c1150v == null || !c1150v.z()) ? "HWw9dLkKDNgwNzWnlZfncmtPx6/S/OexIO9o3Ndz7NHBxRWzEV6Jz0AKSZAraeKqperf55vtOA7uwo/LDJxa2J4UOSxuX+RqqRylO8Xmop1cV5pcF2DIa9uwa1Znj9DH6wA+NoD6H/NVvutC40OEpiHoUKP2X7GT4IhVtxvVia9Va/rPxqkVQcWeJQHaNXcVmkbbqsMn074PHX5m7Y6tAh1u/inDt7lJNk8yKHLiPJqPKSHGJSWCqvVE2Mffi+aGEHk0sD71G8jvYy4iPmuKQ3YUe8soZxmCnFZ0cK6TeVHJNESRCbdbpotAIezV/TQKrU+L7ObzkAgr9JH+4N/WzqCgB6vkghsWvOPuOyNvam5Ozxk/U4ip1ukx+fPEwzKPBqa2hR11CBHm+dWTEgC/SmvvAb0bL7ud7SekhQJ56RszwKQUvgiXxlnjqlbBu8jEYiz+e1AjFKTHfyUS+9Un6IXP1GDKM3A2PXtayxKSH59vtI2JYCjsqvlrwlzRV1YmxcJ1mt60lMoLuUQtSmaz6vKAzi1yVs3KmaUjl1ln/EdaCbhZl0gBCQRXR2HB6YzsFVlPVabwFVjT7iQEFOH4AQZkfEIfp/a3Q3ymXZuODkxyFOkM/jbrXgZrpF9PXtUOyDFQBqiYKQx26Wxa2Cf/Eidkot/09PjPBWrnUCjFaznYk2EDUYSbr9ILqUPKrbrmaooNjSmQCcrffWwhGZ8DGBsbhYmUx7Ep9VZ7o92bV1swPJ7/3TuR+8+TFspnCDuozWtOgXjFRg3dUJcIk5hMvzIfDx//xpRkD8o1Kj+O4UVbCI16owB5iXjRnhZwXJ8Drb6nNY8VyUAXvSvtVHR/NVlG+CZCXZDx9UZmJh8v07OY0vRjmxuCuerVxnajunn5ZX63+US1pElr41R1RmfZJ9bpFjyXbLNlxSfiEjVC+RWNgfg8LRus733Mw6dHGzevCJIoj3tl24g435XoIjz/ONS6HLWJfgJeQSD3kkPFKvqSJ6ytr4KGMwMw3qX7YX89JytiJgCZ03BxGdsAXX4Ddq53Q/IoMeLgbnOTnb0Xd2tqwuexHEhu91wYgY0OdIRfTwL7OCiXa4ggEXPRUPkvRx0LjJqxFS8YyB6mFO6tNg9q/LJkcCUxbihLmiwa6oBSeW6wkutWxFaX+kF28fyHJdJkCYYG1rmD/Zl3/TBLGGPU1Rcw3PmacJ8no2Ns0kg00C26ZA2legRxxKOacwL1DEPqwUMCzBqFrRxNEOPvTJ6u+WWfUx30HC25FBlFNJR34bXIYHl1CZZJgVGWG/OatTXPQPKa9tPKdRjgHfQ3lDeaukdFgSSgyH8ZOhXa+N5Yo4+FplkVAPICgDYR5hiTdrUPKIKrzHNqqpiX/W1r//XBn2vmRaIPGhcVwbh0bL/KM0aedTvpbTiyCeyvKsCUpDTPGVaXim2SZaqOnsy4733Av2BEMPwdbAiHmVlf8rcGkZ7gYbWiXFPO0f5nKvPkoHjg+EfthW/w+zWjmtHSGgaot4CWV/jE95HcoOBAXxfCZnfxExc3vEu3c0Wf2WjJsNj1H1hSS6PtGBU7uqpF/U8Igd99K528CYs41VvfGAOAb5Csug/NoUwUp4etPtySPNjMCaY+sJ3cUaksdsbc/aE=" : "HWw9dLkKDNgwNzWnlZfncmtPx6/S/OexIO9o3Ndz7NHBxRWzEV6Jz0AKSZAraeKqperf55vtOA7uwo/LDJxa2J4UOSxuX+RqqRylO8Xmop1cV5pcF2DIa9uwa1Znj9DH6wA+NoD6H/NVvutC40OEpiHoUKP2X7GT4IhVtxvVia9Va/rPxqkVQcWeJQHaNXcVmkbbqsMn074PHX5m7Y6tAh1u/inDt7lJNk8yKHLiPJqPKSHGJSWCqvVE2Mffi+aGFQymFBwz+TyUCNXzSZPam11bmCrKEjhOnBkdbixXbhJi2qs1Uu4Bedg4LarV0DRevLTVCZOuYgFQgdGni9/uzEv7ltXSlhtnXLG05CAIoojzmPGCDz54hiMFk16YHOROgnoHRx7/WCyfd3XvVwJNpTGzhq1bNjZYLyrCznyhwDJg/Lm89JAHpfQfSo/qAFLziplAr3eQc7fQlmwv/IKkw7g89+LoZOBZNFG/z7gH1bX4QG47qpy7GajCUnTVxAaizzBxQsVXaF60CqaCYultuESuBFG8M8iaiAgvnA5vycGw+L6ZlafApaH1QzaPCZQqbggIGypZziYONW6sMpMu40EWt0nZ8cRTnk6/xmjQnFhT84RU6tTqJwTADhsAKiH1ibXH1rzgIb5eBE5jd1iC2Y3hSqE6fNdn+L6BYN+Rv2JThRmBKTrpuJcLJdRW2pdwkqzwJzVze0/hCvKN5O4J+0i8QrYp/14c6nrmmwMX21whwB4VyrZFiTSnEaqiBLWhiC0EY65UrY6VXofap712kvcGoUXGiObQpfYHtla8VvvfBdPNfFdKVlvgI26OhMB8yqXCfSN01v/A7yNxqcoK9T1MkNOEKAFwlSE6ZhTQ8fEiySnUwbDRRZxJRVwsrRBYHCz1nlwdEPL+9lhyxQyUj/g43OpJ/LUpieYNNszhZc1Lqb5hzT7vif1sH5CajEmHRpQ9oZS34s8B75u1C8OIUEVtxye4GStFHHH7yuQBEdBxnSXEPLv3IKWCvpfGM2ajO4eS9/VCf79eDKNrZFbIG1ytGtttsk5M+QZwsXp5AeVGNtRCPXUB0/Z19VhmTRMISLvH+uHth3475X5CYiWwwziHKWaCwM/g+EWx9TfTnr5QlqE+ss4vL6BmFwGVp66sR2a+C1At7vuBj8CAdbw02MxAqTqxt320M88jS+pAk9gjVS/emSbovWMeW1YsVUFNghikq4QloTD8R3fJdIOsdTu2+/FB2beVg2cGx4XQODvODpscsqzZVXs0cdRk7eL5i+h9hwWkuuF44k1jcQZDP8mIapyGlP/4XRGeXMWQsFFxy8rUypj0tazSOa28b6lgBbvnd7k0uJmW75zX8iIpk+6bKgzGA69Ceptc1fmbEOg+mnyuOmAV3o9lvbR288ThtV5+Nd1AO0KzspfXnjFUUikD4byfqDSo/Kdhzt4Xr1ei/Lzmwsaruym3iljogGnhqQFs9FsK5yKNUYWMTwaUgt7cd9Dv3Ny19u1Mds6aPON79S/VYXcb99ObaPyBgpI4gVrLz+4iOgi0Rh9Hg4wOWtPUYM3Xto2JW5o8pajyPQtCQ1GjTFwnE4KR1YPTy8tH3i+Dcos9cPPZL7yrpLgdy63H9VXjU3zvhI0h8mlw8D+9AhedjIFVSe0uF3vP/X4q", "1001", kd.a.STEP_BY_STEP, false);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        ConfigResponseModel configResponseModel = new ConfigResponseModel(pg.c(strA));
        if (configResponseModel.hasParseException()) {
            return null;
        }
        return configResponseModel;
    }

    private void g() {
        if (this.f13911g != null) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacksA = this.f13905a.a();
            Context context = this.f13911g;
            if (context instanceof Application) {
                ((Application) context).registerActivityLifecycleCallbacks(activityLifecycleCallbacksA);
            } else if (context instanceof Activity) {
                ((Activity) context).getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacksA);
            } else if (context instanceof Service) {
                ((Service) context).getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacksA);
            }
        }
    }

    public InitTraceModel b() {
        InitTraceModel initTraceModel = this.f13912h;
        if (initTraceModel != null) {
            return initTraceModel.m43deepCopy();
        }
        return null;
    }

    public long c() {
        InitTraceModel initTraceModel = this.f13912h;
        if (initTraceModel != null) {
            return initTraceModel.getInitEndTs();
        }
        return 0L;
    }

    public boolean d() {
        return this.f13908d != null;
    }

    public boolean f() {
        ConfigResponseModel configResponseModelA;
        if (this.f13907c.y()) {
            try {
                if (!TextUtils.isEmpty(f13904i)) {
                    a(new ConfigResponseModel(pg.c(be.a(this.f13911g.getAssets().open(f13904i)))), false, false);
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        String strA = p0.a(this.f13911g, p0.b(), "asnpConfigV3", "");
        String strA2 = p0.a(this.f13911g, p0.b(), "asnpCfgPattern", "101,1001");
        if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strA2)) {
            String strA3 = ((kd) gh.a().b(this.f13911g)).a(strA, strA2, kd.a.STEP_BY_STEP, false);
            if (!TextUtils.isEmpty(strA3) && (configResponseModelA = a(strA3)) != null) {
                a(configResponseModelA, false, false);
                return false;
            }
        }
        ConfigResponseModel configResponseModelE = e();
        if (configResponseModelE != null) {
            a(configResponseModelE, false, true);
        }
        return false;
    }

    public void h() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f13910f;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((nc) it.next()).a();
            }
        }
    }

    public void a(InitTraceModel initTraceModel) {
        this.f13912h = initTraceModel;
    }

    private void c(final boolean z2) {
        ((hb) fn.a().b(this.f13911g)).f(new Runnable() { // from class: com.beizi.fusion.I
            @Override // java.lang.Runnable
            public final void run() {
                this.f12536b.b(z2);
            }
        });
    }

    public C1150v a() {
        return this.f13907c;
    }

    public void b(oc ocVar) {
        this.f13909e.remove(ocVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z2) {
        a aVarA = a(System.currentTimeMillis());
        CopyOnWriteArrayList copyOnWriteArrayList = this.f13909e;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        Iterator it = this.f13909e.iterator();
        while (it.hasNext()) {
            ((oc) it.next()).a(this.f13908d, aVarA, z2);
        }
    }

    public void a(C1150v c1150v) {
        this.f13907c = c1150v;
    }

    public ConfigResponseModel a(boolean z2) {
        ConfigResponseModel configResponseModel;
        if (z2 && (configResponseModel = this.f13908d) != null) {
            return configResponseModel.m41deepCopy();
        }
        return this.f13908d;
    }

    public boolean c(long j2) {
        if (this.f13908d != null) {
            long jA = p0.a(this.f13911g, p0.b(), "asnpConfigLast", 0L);
            UpdateModel update = this.f13908d.getUpdate();
            if (update != null) {
                long j3 = j2 - jA;
                if (j3 > update.getExpireTime() && j3 < update.getMaxExpireTime()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void a(ConfigResponseModel configResponseModel, boolean z2, boolean z3) {
        ConfigResponseModel configResponseModel2 = this.f13908d;
        if (configResponseModel2 == null) {
            a(configResponseModel);
            if (z3) {
                return;
            }
            c(z2);
            return;
        }
        if (z2) {
            a(configResponseModel2.partUpdate(configResponseModel));
            p0.b(this.f13911g, p0.b(), "asnpConfigLast", System.currentTimeMillis());
            c(true);
        }
    }

    public boolean b(long j2) {
        if (this.f13908d != null) {
            long jA = p0.a(this.f13911g, p0.b(), "asnpConfigLast", 0L);
            UpdateModel update = this.f13908d.getUpdate();
            if (update != null && j2 - jA > update.getMaxExpireTime()) {
                return true;
            }
        }
        return false;
    }

    private void a(ConfigResponseModel configResponseModel) {
        synchronized (this.f13906b) {
            this.f13908d = configResponseModel;
        }
    }

    private ConfigResponseModel a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConfigResponseModel configResponseModel = new ConfigResponseModel(pg.c(str));
        if (configResponseModel.hasParseException()) {
            return null;
        }
        return configResponseModel;
    }

    public void a(oc ocVar) {
        this.f13909e.add(ocVar);
    }

    public void a(nc ncVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f13910f;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.contains(ncVar)) {
            return;
        }
        this.f13910f.add(ncVar);
    }

    public a a(long j2) {
        return b(j2) ? c(j2) ? a.PREFER_UPDATE : a.EXPIRED : a.VALID;
    }
}
