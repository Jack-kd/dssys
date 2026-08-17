package com.anythink.core.common.w.a.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.ak;
import com.anythink.core.common.h.an;
import com.anythink.core.common.h.ao;
import com.anythink.core.common.h.by;
import com.anythink.core.common.m.c;
import com.anythink.core.common.w.a.a;
import com.anythink.core.common.w.a.b.d;
import com.anythink.core.e.m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8406a = an.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Context f8407b;

    /* renamed from: c, reason: collision with root package name */
    private final m f8408c;

    /* renamed from: d, reason: collision with root package name */
    private final aj f8409d;

    /* renamed from: e, reason: collision with root package name */
    private final d f8410e;

    /* renamed from: f, reason: collision with root package name */
    private InterfaceC0087a f8411f;

    /* renamed from: com.anythink.core.common.w.a.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0087a {
        void a(List<ak> list, boolean z2);

        void a(boolean z2);
    }

    public a(Context context, m mVar, aj ajVar, d dVar) {
        this.f8407b = context;
        this.f8408c = mVar;
        this.f8410e = dVar;
        this.f8409d = ajVar;
    }

    private ao b() {
        m mVar;
        Map<String, Integer> mapB;
        Map<String, List<an.a>> mapA;
        List<an.a> list;
        Integer num;
        ao aoVar = new ao();
        aoVar.a(s.b().p());
        aoVar.b(s.b().q());
        aoVar.a(this.f8407b);
        m mVar2 = this.f8408c;
        if (mVar2 != null) {
            aoVar.b(mVar2.ax());
            aoVar.a(this.f8408c.ah());
            aoVar.d(this.f8408c.i());
        }
        aj ajVar = this.f8409d;
        if (ajVar != null) {
            aoVar.c(ajVar.g());
        }
        d dVar = this.f8410e;
        if (dVar != null && (mVar = this.f8408c) != null) {
            an anVarA = dVar.a(mVar.i());
            if (anVarA != null) {
                mapB = anVarA.b();
                mapA = anVarA.a();
            } else {
                mapB = null;
                mapA = null;
            }
            Map<String, by> mapX = this.f8408c.x();
            if (mapX != null) {
                Set<String> setKeySet = mapX.keySet();
                ArrayList arrayList = new ArrayList();
                for (String str : setKeySet) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        by byVar = mapX.get(str);
                        if (byVar != null) {
                            jSONObject.put("unitid", Integer.parseInt(byVar.G()));
                            jSONObject.put("nwfid", byVar.n());
                            jSONObject.put("ecpm", byVar.K());
                            jSONObject.put("unit_type", byVar.aU());
                        }
                        if (mapB != null && (num = mapB.get(str)) != null && num.intValue() > 0) {
                            jSONObject.put("request", num.intValue());
                        }
                        if (mapA != null && (list = mapA.get(str)) != null && !list.isEmpty()) {
                            JSONObject jSONObject2 = new JSONObject();
                            for (an.a aVar : list) {
                                String strA = aVar.a();
                                if (!TextUtils.isEmpty(strA)) {
                                    jSONObject2.put(strA, aVar.b());
                                }
                            }
                            if (jSONObject2.length() > 0) {
                                jSONObject.put("error_code", jSONObject2);
                            }
                        }
                        arrayList.add(jSONObject);
                    } catch (Throwable unused) {
                    }
                }
                aoVar.a(new JSONArray((Collection) arrayList));
            }
        }
        return aoVar;
    }

    public final void a(InterfaceC0087a interfaceC0087a) {
        this.f8411f = interfaceC0087a;
    }

    public final void a(final boolean z2) {
        try {
            new com.anythink.core.common.m.m(b()).a(0, (com.anythink.core.common.m.s) new c() { // from class: com.anythink.core.common.w.a.c.a.1
                @Override // com.anythink.core.common.m.s
                public final void onLoadError(int i2, String str, AdError adError) {
                    if (a.this.f8411f != null) {
                        InterfaceC0087a interfaceC0087a = a.this.f8411f;
                        adError.getCode();
                        adError.getDesc();
                        interfaceC0087a.a(z2);
                    }
                    a.b(a.this);
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadFinish(int i2, Object obj) {
                    JSONArray jSONArrayOptJSONArray;
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    try {
                        if ((obj instanceof JSONObject) && (jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("u_d")) != null && jSONArrayOptJSONArray.length() > 0) {
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                copyOnWriteArrayList.add(ak.a(String.valueOf(jSONArrayOptJSONArray.optInt(i3)), a.C0086a.f8367a));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    if (a.this.f8411f != null) {
                        a.this.f8411f.a(copyOnWriteArrayList, z2);
                    }
                    a.b(a.this);
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void a() {
        m mVar;
        d dVar = this.f8410e;
        if (dVar == null || (mVar = this.f8408c) == null) {
            return;
        }
        dVar.b(mVar.i());
    }

    public static /* synthetic */ void b(a aVar) {
        m mVar;
        d dVar = aVar.f8410e;
        if (dVar == null || (mVar = aVar.f8408c) == null) {
            return;
        }
        dVar.b(mVar.i());
    }
}
