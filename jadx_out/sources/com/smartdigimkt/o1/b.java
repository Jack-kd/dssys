package com.smartdigimkt.o1;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.m3.l;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f42211a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f42212b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f42213c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f42214d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f42215e;

    public b(c cVar, l lVar, String str, Context context, com.smartdigimkt.m3.c cVar2) {
        this.f42215e = cVar;
        this.f42211a = lVar;
        this.f42212b = str;
        this.f42213c = context;
        this.f42214d = cVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f42215e.f42218b) {
            l lVar = (l) this.f42211a;
            ArrayList arrayList = (ArrayList) this.f42215e.f42217a.get(this.f42212b);
            if (arrayList == null) {
                arrayList = new ArrayList();
                try {
                    JSONArray jSONArray = new JSONArray(y.b(this.f42213c, "sdm_adx_rpown_offerid_impression", this.f42212b));
                    if (jSONArray.length() > 0) {
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            arrayList.add(jSONArray.optString(i2));
                        }
                    }
                } catch (Exception unused) {
                }
                this.f42215e.f42217a.put(this.f42212b, arrayList);
            }
            if (arrayList.size() >= lVar.f42062a2) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(0, this.f42214d.f41806a);
            y.a(this.f42213c, "sdm_adx_rpown_offerid_impression", this.f42212b, new JSONArray((Collection) arrayList).toString());
        }
    }
}
