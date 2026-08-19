package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.jc;
import com.beizi.fusion.z0;

/* loaded from: classes2.dex */
class wf extends xf {

    /* renamed from: A, reason: collision with root package name */
    private jc.a f16957A;

    /* renamed from: B, reason: collision with root package name */
    private final b f16958B;

    /* renamed from: C, reason: collision with root package name */
    private wc f16959C;

    /* renamed from: z, reason: collision with root package name */
    private vc f16960z;

    public class b implements se {
        private b() {
        }

        @Override // com.beizi.fusion.ab
        public void a(re reVar) {
        }

        @Override // com.beizi.fusion.se
        public void g(za zaVar) {
            wf.this.f17746o.a(zaVar, wf.this.f17735d, wf.this.n());
            if (wf.this.f16959C != null) {
                wf.this.f16959C.c();
            }
        }
    }

    public class c extends z0.b implements qe {
        private c() {
            super();
        }

        @Override // com.beizi.fusion.qe
        public void a(za zaVar) {
            if (wf.this.f16960z != null) {
                wf.this.f16960z.h();
            }
        }

        @Override // com.beizi.fusion.qe
        public void b(za zaVar) {
            if (wf.this.f16960z != null) {
                wf.this.f16960z.k();
            }
        }

        @Override // com.beizi.fusion.qe
        public void h(za zaVar) {
            if (wf.this.f16960z != null) {
                wf.this.f16960z.i();
            }
        }

        @Override // com.beizi.fusion.qe
        public void k(za zaVar) {
            if (wf.this.f16960z != null) {
                wf.this.f16960z.j();
            }
        }
    }

    public wf(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        super(context, adItemModel, daVar, adTraceModel);
        this.f16958B = new b();
    }

    @Override // com.beizi.fusion.z0
    public z9 m() {
        return new c();
    }

    public void s() {
        d3 d3Var = this.f17752u;
        if (d3Var != null) {
            d3Var.a();
        }
    }

    public se t() {
        return this.f16958B;
    }

    public void a(vc vcVar) {
        this.f16960z = vcVar;
    }

    public void a(wc wcVar) {
        this.f16959C = wcVar;
    }

    @Override // com.beizi.fusion.z0
    public fc a(String str, int i2, NativeModel nativeModel, String str2) {
        fc fcVarA = super.a(str, i2, nativeModel, str2);
        if (fcVarA instanceof jc) {
            ((jc) fcVarA).a(this.f16957A);
        }
        return fcVarA;
    }

    public void a(jc.a aVar) {
        this.f16957A = aVar;
    }
}
