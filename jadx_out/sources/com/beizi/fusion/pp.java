package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import com.beizi.fusion.a1;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view.ASNPUnifiedExpressContainer;
import com.beizi.fusion.yc;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class pp extends a1 implements cf {

    /* renamed from: b, reason: collision with root package name */
    private final b f15663b;

    public static class b extends a1.a {
        private b() {
        }
    }

    public pp(td tdVar) {
        super(tdVar.getContext(), tdVar.c(), tdVar.b(), tdVar.a());
        this.f15663b = new b();
    }

    @Override // com.beizi.fusion.a1
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public yc a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        return yc.a.a(context, adItemModel, daVar, adTraceModel);
    }

    @Override // com.beizi.fusion.cf
    public List c() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).c() : Collections.EMPTY_LIST;
    }

    @Override // com.beizi.fusion.cf
    public ef d() {
        kb kbVar = this.f12598a;
        if (kbVar != null) {
            return ((yc) kbVar).d();
        }
        return null;
    }

    @Override // com.beizi.fusion.cf
    public String g() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).g() : "";
    }

    @Override // com.beizi.fusion.cf
    public String getAdLogoUrl() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).getAdLogoUrl() : "";
    }

    @Override // com.beizi.fusion.cf
    public String getDesc() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).getDesc() : "";
    }

    @Override // com.beizi.fusion.cf
    public String getIconUrl() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).getIconUrl() : "";
    }

    @Override // com.beizi.fusion.cf
    public String getTitle() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).getTitle() : "";
    }

    @Override // com.beizi.fusion.cf
    public String h() {
        kb kbVar = this.f12598a;
        return kbVar != null ? ((yc) kbVar).h() : "";
    }

    @Override // com.beizi.fusion.cf
    public u0 i() {
        kb kbVar = this.f12598a;
        if (kbVar != null) {
            return ((yc) kbVar).i();
        }
        return null;
    }

    @Override // com.beizi.fusion.lb
    public void a(ud udVar) {
        this.f15663b.a(udVar);
        ((yc) this.f12598a).a((gc) this.f15663b);
    }

    @Override // com.beizi.fusion.lb
    public void a(vd vdVar) {
        this.f15663b.a(vdVar);
        ((yc) this.f12598a).a((cd) this.f15663b);
    }

    @Override // com.beizi.fusion.cf
    public void a(Activity activity, ASNPUnifiedExpressContainer aSNPUnifiedExpressContainer, List list) {
        kb kbVar = this.f12598a;
        if (kbVar != null) {
            ((yc) kbVar).a(activity, aSNPUnifiedExpressContainer, list);
        }
    }
}
