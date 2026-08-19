package com.beizi.fusion;

import com.beizi.fusion.jc;
import com.beizi.fusion.zo;

/* loaded from: classes2.dex */
public class im extends zo {

    public static class b extends zo.a implements wc {

        /* renamed from: e, reason: collision with root package name */
        private wc f14501e;

        private b() {
        }

        @Override // com.beizi.fusion.wc
        public void c() {
            wc wcVar = this.f14501e;
            if (wcVar != null) {
                wcVar.c();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(wc wcVar) {
            this.f14501e = wcVar;
        }
    }

    public im(td tdVar) {
        super(tdVar);
    }

    public void a(jc.a aVar) {
        kb kbVar = this.f12598a;
        if (kbVar instanceof wf) {
            ((wf) kbVar).a(aVar);
        }
    }

    @Override // com.beizi.fusion.zo
    public zo.a l() {
        return new b();
    }

    public void m() {
        kb kbVar = this.f12598a;
        if (kbVar instanceof wf) {
            ((wf) kbVar).s();
        }
    }

    public se n() {
        kb kbVar = this.f12598a;
        if (kbVar instanceof wf) {
            return ((wf) kbVar).t();
        }
        return null;
    }

    public void a(vc vcVar) {
        kb kbVar = this.f12598a;
        if (kbVar instanceof wf) {
            ((wf) kbVar).a(vcVar);
        }
    }

    public void a(wc wcVar) {
        if (this.f12598a instanceof wf) {
            zo.a aVar = this.f17925b;
            if (aVar instanceof b) {
                ((b) aVar).a(wcVar);
                ((wf) this.f12598a).a((wc) this.f17925b);
            }
        }
    }
}
