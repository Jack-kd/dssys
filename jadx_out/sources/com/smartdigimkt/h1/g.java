package com.smartdigimkt.h1;

import android.text.TextUtils;
import android.view.View;
import com.smartdigimkt.m3.k;
import com.smartdigimkt.x.m;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40430a;

    public g(i iVar) {
        this.f40430a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i iVar = this.f40430a;
        com.smartdigimkt.m3.c cVar = iVar.f40433b;
        com.smartdigimkt.l3.a aVar = iVar.f40434c;
        String str = TextUtils.isEmpty(iVar.f40449r) ? "0" : this.f40430a.f40449r;
        String string = this.f40430a.f40437f.getText().toString();
        if (cVar != null && aVar != null) {
            com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
            cVar2.f42817a = "1004652";
            cVar2.a(aVar);
            cVar2.f42828l = String.valueOf(aVar.f41636j);
            cVar2.f42829m = aVar.f41631e;
            if (cVar instanceof com.smartdigimkt.p3.a) {
                cVar2.f42830n = "1";
            } else if (cVar instanceof com.smartdigimkt.m3.b) {
                cVar2.f42830n = "2";
            }
            cVar2.f42831o = str;
            cVar2.f42832p = string;
            cVar2.f42833q = cVar.f41806a;
            cVar2.f42834r = cVar.f41808b;
            cVar2.f42835s = cVar.f41822m;
            cVar2.f42836t = cVar.f41810c;
            cVar2.f42837u = cVar.f41812d;
            cVar2.f42838v = cVar.f41814e;
            cVar2.f42839w = cVar.f41815f;
            cVar2.f42840x = cVar.f41818i;
            try {
                if (cVar instanceof k) {
                    StringBuilder sb = new StringBuilder();
                    String str2 = ((k) cVar).f42047h0;
                    if (!TextUtils.isEmpty(str2)) {
                        JSONArray jSONArray = new JSONArray(str2);
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            sb.append(jSONArray.optString(i2));
                            sb.append(",");
                        }
                        if (sb.length() > 1) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        cVar2.f42841y = sb.toString();
                    }
                }
            } catch (Throwable unused) {
            }
            com.smartdigimkt.y3.h.a(cVar2);
        }
        i iVar2 = this.f40430a;
        m mVar = iVar2.f40435d;
        com.smartdigimkt.b4.e.a().a(30L, (Runnable) new h(iVar2));
    }
}
