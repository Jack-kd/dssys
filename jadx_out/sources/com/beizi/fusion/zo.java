package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.a1;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.xc;

/* loaded from: classes2.dex */
public class zo extends a1 implements rd {

    /* renamed from: b, reason: collision with root package name */
    protected final a f17925b;

    public static class a extends a1.a implements fe {

        /* renamed from: d, reason: collision with root package name */
        private wd f17926d;

        /* JADX INFO: Access modifiers changed from: private */
        public void a(wd wdVar) {
            this.f17926d = wdVar;
        }

        @Override // com.beizi.fusion.fe
        public void a(View view) {
            wd wdVar = this.f17926d;
            if (wdVar != null) {
                wdVar.a(view);
            }
        }

        @Override // com.beizi.fusion.fe
        public void a(vf vfVar) {
            wd wdVar = this.f17926d;
            if (wdVar != null) {
                wdVar.f();
            }
        }
    }

    public zo(td tdVar) {
        super(tdVar.getContext(), tdVar.c(), tdVar.b(), tdVar.a());
        this.f17925b = l();
    }

    @Override // com.beizi.fusion.a1
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public xc a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        return xc.a.a(context, adItemModel, daVar, adTraceModel);
    }

    public a l() {
        return new a();
    }

    @Override // com.beizi.fusion.rd
    public void a(wd wdVar) {
        this.f17925b.a(wdVar);
        ((xc) this.f12598a).a((fe) this.f17925b);
        ((xc) this.f12598a).k();
    }

    @Override // com.beizi.fusion.rd
    public View a() {
        kb kbVar = this.f12598a;
        if (kbVar != null) {
            return ((xc) kbVar).a();
        }
        return null;
    }

    @Override // com.beizi.fusion.lb
    public void a(ud udVar) {
        this.f17925b.a(udVar);
        ((xc) this.f12598a).a((gc) this.f17925b);
    }

    @Override // com.beizi.fusion.lb
    public void a(vd vdVar) {
        this.f17925b.a(vdVar);
        ((xc) this.f12598a).a((cd) this.f17925b);
    }

    @Override // com.beizi.fusion.lb
    public void a(xd xdVar) {
        this.f17925b.a(xdVar);
        ((xc) this.f12598a).a((hf) this.f17925b);
    }
}
