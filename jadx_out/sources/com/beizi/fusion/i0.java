package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
class i0 implements v9 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14396a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f14397b = new HashMap();

    public i0(Context context) {
        this.f14396a = context.getApplicationContext();
    }

    @Override // com.beizi.fusion.v9
    public void a(AdItemModel adItemModel) {
        if (adItemModel != null) {
            String adnTraceTag = adItemModel.getAdnTraceTag();
            if (TextUtils.isEmpty(adnTraceTag) || this.f14397b.containsKey(adnTraceTag)) {
                return;
            }
            ei eiVar = new ei(this.f14396a);
            eiVar.a(adItemModel);
            this.f14397b.put(adnTraceTag, eiVar);
        }
    }

    @Override // com.beizi.fusion.v9
    public void a(za zaVar, AdTraceModel adTraceModel, String str) {
        ei eiVar;
        if (this.f14397b.get(str) == null || (eiVar = (ei) this.f14397b.get(str)) == null || !eiVar.a()) {
            return;
        }
        eiVar.a(zaVar, adTraceModel);
    }
}
