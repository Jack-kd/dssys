package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class a1 implements lb {

    /* renamed from: a, reason: collision with root package name */
    protected final kb f12598a;

    public static class a implements hf, cd, yd {

        /* renamed from: a, reason: collision with root package name */
        private ud f12599a;

        /* renamed from: b, reason: collision with root package name */
        private vd f12600b;

        /* renamed from: c, reason: collision with root package name */
        private xd f12601c;

        public void a(ud udVar) {
            this.f12599a = udVar;
        }

        @Override // com.beizi.fusion.gc
        public void b() {
            ud udVar = this.f12599a;
            if (udVar != null) {
                udVar.b();
            }
        }

        @Override // com.beizi.fusion.hf
        public void d() {
            xd xdVar = this.f12601c;
            if (xdVar != null) {
                xdVar.d();
            }
        }

        @Override // com.beizi.fusion.hf
        public void e() {
            xd xdVar = this.f12601c;
            if (xdVar != null) {
                xdVar.e();
            }
        }

        @Override // com.beizi.fusion.cd
        public void f() {
        }

        @Override // com.beizi.fusion.hf
        public void g() {
            xd xdVar = this.f12601c;
            if (xdVar != null) {
                xdVar.g();
            }
        }

        @Override // com.beizi.fusion.cd
        public void onAdClicked() {
            vd vdVar = this.f12600b;
            if (vdVar != null) {
                vdVar.onAdClicked();
            }
        }

        @Override // com.beizi.fusion.gc
        public void onAdClosed() {
            ud udVar = this.f12599a;
            if (udVar != null) {
                udVar.onAdClosed();
            }
        }

        @Override // com.beizi.fusion.gc
        public void onAdShown() {
            ud udVar = this.f12599a;
            if (udVar != null) {
                udVar.onAdShown();
            }
        }

        public void a(vd vdVar) {
            this.f12600b = vdVar;
        }

        public void a(xd xdVar) {
            this.f12601c = xdVar;
        }

        @Override // com.beizi.fusion.hf
        public void a() {
            xd xdVar = this.f12601c;
            if (xdVar != null) {
                xdVar.a();
            }
        }

        @Override // com.beizi.fusion.hf
        public void a(int i2) {
            xd xdVar = this.f12601c;
            if (xdVar != null) {
                xdVar.a(i2);
            }
        }

        @Override // com.beizi.fusion.yd
        public void a(String str) {
            if (this.f12599a != null) {
                throw null;
            }
        }
    }

    public a1(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        this.f12598a = a(context, adItemModel, daVar, adTraceModel);
    }

    public abstract kb a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel);

    @Override // com.beizi.fusion.lb
    public void b() {
        kb kbVar = this.f12598a;
        if (kbVar != null) {
            kbVar.b();
        }
    }

    @Override // com.beizi.fusion.lb
    public Map e() {
        kb kbVar = this.f12598a;
        return kbVar != null ? kbVar.e() : Collections.EMPTY_MAP;
    }

    @Override // com.beizi.fusion.lb
    public ob f() {
        return this.f12598a.f();
    }

    @Override // com.beizi.fusion.lb
    public boolean j() {
        kb kbVar = this.f12598a;
        return kbVar != null && kbVar.j();
    }

    public final void k() {
        kb kbVar = this.f12598a;
        if (kbVar instanceof z0) {
            ((z0) kbVar).p();
        }
    }
}
