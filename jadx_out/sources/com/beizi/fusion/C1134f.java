package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.beta.BetaPlanModel;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;

/* renamed from: com.beizi.fusion.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1134f {

    /* renamed from: e, reason: collision with root package name */
    private static volatile C1134f f13814e;

    /* renamed from: f, reason: collision with root package name */
    public static final List f13815f;

    /* renamed from: a, reason: collision with root package name */
    private final Context f13816a;

    /* renamed from: b, reason: collision with root package name */
    private final C1135g f13817b;

    /* renamed from: c, reason: collision with root package name */
    private final oc f13818c = new b();

    /* renamed from: d, reason: collision with root package name */
    private final Set f13819d = new HashSet();

    /* renamed from: com.beizi.fusion.f$b */
    public class b implements oc {
        private b() {
        }

        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            if (configResponseModel == null || !C1135g.a.VALID.equals(aVar)) {
                return;
            }
            mb mbVar = (mb) v4.a().b(C1134f.this.f13816a);
            BetaPlanModel betaPlanModel = configResponseModel.getBetaPlanModel();
            if (betaPlanModel == null || betaPlanModel.getUnitTestModelList() == null) {
                return;
            }
            mbVar.a(m0.e(), betaPlanModel.getRelease(), new ArrayList(betaPlanModel.getUnitTestModelList()));
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f13815f = arrayList;
        arrayList.add("4dcfae5406670c0ebd29c13c287229d7");
    }

    private C1134f(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f13816a = applicationContext;
        this.f13817b = (C1135g) C1136h.a().b(applicationContext);
    }

    public void b() {
        C1135g c1135g = this.f13817b;
        if (c1135g != null) {
            c1135g.a(this.f13818c);
        }
    }

    public JSONArray a() {
        JSONArray jSONArrayA;
        synchronized (this.f13819d) {
            try {
                jSONArrayA = pg.a();
                if (!this.f13819d.isEmpty()) {
                    Iterator it = this.f13819d.iterator();
                    while (it.hasNext()) {
                        jSONArrayA.put((String) it.next());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONArrayA;
    }

    public void a(String str) {
        synchronized (this.f13819d) {
            this.f13819d.add(str);
        }
    }

    public static C1134f a(Context context) {
        if (f13814e == null) {
            synchronized (C1134f.class) {
                try {
                    if (f13814e == null) {
                        f13814e = new C1134f(context);
                    }
                } finally {
                }
            }
        }
        return f13814e;
    }
}
