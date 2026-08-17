package com.anythink.nativead.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.common.f;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.c;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.q;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f9181a = "a";

    /* renamed from: f, reason: collision with root package name */
    private static Map<String, a> f9182f = new ConcurrentHashMap(3);

    /* renamed from: b, reason: collision with root package name */
    ATAdCreateConfig f9183b;

    /* renamed from: c, reason: collision with root package name */
    private Context f9184c;

    /* renamed from: d, reason: collision with root package name */
    private String f9185d;

    /* renamed from: e, reason: collision with root package name */
    private final f f9186e;

    private a(Context context, String str) {
        this(context, str, null);
    }

    private static a a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a aVar = f9182f.get(str);
        if (aVar != null) {
            return aVar;
        }
        synchronized (a.class) {
            if (aVar == null) {
                try {
                    aVar = new a(context, str);
                    f9182f.put(str, aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return aVar;
    }

    private ae d(Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.a(map);
        f fVar = this.f9186e;
        if (fVar != null) {
            aeVar.a(fVar.n());
        }
        return aeVar;
    }

    public final f b() {
        return this.f9186e;
    }

    public final void c() {
        f fVar;
        ATAdCreateConfig aTAdCreateConfig = this.f9183b;
        if (aTAdCreateConfig == null || !aTAdCreateConfig.isMultiton() || (fVar = this.f9186e) == null) {
            return;
        }
        fVar.p();
    }

    public a(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.f9184c = context.getApplicationContext();
        this.f9185d = str;
        this.f9183b = aTAdCreateConfig;
        if (aTAdCreateConfig == null) {
            this.f9186e = f.a(context, str, "0");
        } else {
            if (!aTAdCreateConfig.isMultiton()) {
                this.f9186e = f.a(context, str, "0");
                return;
            }
            f fVar = new f(context, str, "0");
            this.f9186e = fVar;
            fVar.u();
        }
    }

    public final void b(Map<String, Object> map) {
        f fVar = this.f9186e;
        if (fVar != null) {
            fVar.a(map);
        }
    }

    public final void c(Map<String, Object> map) {
        f fVar = this.f9186e;
        if (fVar != null) {
            fVar.b(map);
        }
    }

    public final boolean a() {
        ATAdCreateConfig aTAdCreateConfig = this.f9183b;
        return aTAdCreateConfig != null && aTAdCreateConfig.isMultiton();
    }

    public final c a(Map<String, Object> map) {
        ae aeVarD = d(map);
        aeVarD.f();
        f fVar = this.f9186e;
        if (fVar != null) {
            return fVar.b(this.f9184c, false, false, aeVarD);
        }
        return null;
    }

    public final c a(ATShowConfig aTShowConfig, Map<String, Object> map) {
        String scenarioId;
        String showCustomExt;
        final c cVarB = this.f9186e.b(this.f9184c, false, true, d(map));
        if (cVarB == null || cVarB.f() == null || !(cVarB.e() instanceof CustomNativeAdapter)) {
            return null;
        }
        n detail = cVarB.f().getDetail();
        ah.a(this.f9186e.n(), detail);
        if (aTShowConfig != null) {
            scenarioId = aTShowConfig.getScenarioId();
            showCustomExt = aTShowConfig.getShowCustomExt();
            q.a(aTShowConfig.getATCustomContentResult(), detail);
        } else {
            scenarioId = "";
            showCustomExt = "";
        }
        detail.f4324H = scenarioId;
        detail.y(showCustomExt);
        final f fVarA = detail.a();
        if (fVarA != null) {
            detail.f4348z = fVarA.m();
        }
        cVarB.a(cVarB.c() + 1);
        com.anythink.core.common.v.b.c.a().b(new d(e.f8138u, new Runnable() { // from class: com.anythink.nativead.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = fVarA;
                if (fVar == null || fVar.e() == null) {
                    return;
                }
                fVarA.e().a(cVarB, 5);
            }
        }));
        ah.a(map, detail);
        ah.a(this.f9185d, detail);
        return cVarB;
    }

    public final void a(Context context, com.anythink.core.common.d.a aVar, com.anythink.core.common.d.c cVar, ATAdMultipleLoadedListener aTAdMultipleLoadedListener, Map<String, Object> map, ATAdRequest aTAdRequest) {
        as asVar = new as();
        asVar.a(context);
        asVar.a(aTAdRequest);
        asVar.f3812d = cVar;
        asVar.f3814f = aTAdMultipleLoadedListener;
        asVar.f3811c = 0;
        if (map != null) {
            try {
                asVar.f3815g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        if (aTAdRequest != null) {
            asVar.f3820l = aTAdRequest.getATAdxBidFloorInfo();
        }
        this.f9186e.b(this.f9184c, "0", this.f9185d, asVar, aVar);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.f9186e.a(context);
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.f9186e.a(context, map);
    }

    public final void a(int i2) {
        f fVar = this.f9186e;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public final void a(List<ATAdInfo> list) {
        f fVar = this.f9186e;
        if (fVar != null) {
            fVar.a(list);
        }
    }
}
