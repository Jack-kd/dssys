package com.beizi.fusion;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class d6 extends ea {

    /* renamed from: o, reason: collision with root package name */
    protected String f13380o;

    /* renamed from: p, reason: collision with root package name */
    protected final b f13381p;

    /* renamed from: q, reason: collision with root package name */
    protected View f13382q;

    /* renamed from: r, reason: collision with root package name */
    protected rd f13383r;

    /* renamed from: s, reason: collision with root package name */
    private final c f13384s;

    public class b implements ud, vd, wd, xd {
        public b() {
        }

        @Override // com.beizi.fusion.xd
        public void a(int i2) {
        }

        @Override // com.beizi.fusion.ud
        public void b() {
            aa aaVar = (aa) d6.this.c();
            if (aaVar != null) {
                aaVar.b();
            }
        }

        @Override // com.beizi.fusion.xd
        public void d() {
            aa aaVar = (aa) d6.this.c();
            if (aaVar instanceof ve) {
                ((ve) aaVar).f();
            }
        }

        @Override // com.beizi.fusion.xd
        public void e() {
        }

        @Override // com.beizi.fusion.wd
        public void f() {
            d6.this.b(n1.ERROR_RENDER_FAILED);
        }

        @Override // com.beizi.fusion.xd
        public void g() {
            View view = d6.this.f13382q;
            if (view != null) {
                ScopeExpressContainer.d.a(view);
            }
            aa aaVar = (aa) d6.this.c();
            if (aaVar instanceof ve) {
                ((ve) aaVar).d();
            }
        }

        public abstract boolean l();

        @Override // com.beizi.fusion.vd
        public void onAdClicked() {
            aa aaVar = (aa) d6.this.c();
            d6 d6Var = d6.this;
            if (d6Var.f13690a == EnumC1130d.SPLASH) {
                d6Var.a(System.currentTimeMillis());
            }
            if (aaVar != null) {
                aaVar.onAdClicked();
            }
        }

        @Override // com.beizi.fusion.ud
        public void onAdClosed() {
            aa aaVar = (aa) d6.this.c();
            if (aaVar != null) {
                aaVar.onAdClosed();
            }
        }

        @Override // com.beizi.fusion.ud
        public void onAdShown() {
            aa aaVar = (aa) d6.this.c();
            if (aaVar != null) {
                aaVar.onAdShown();
            }
        }

        @Override // com.beizi.fusion.wd
        public void a(View view) {
            d6.this.o();
            if (l()) {
                d6.this.f13382q = view;
            }
            aa aaVar = (aa) d6.this.c();
            if (aaVar != null) {
                aaVar.e();
            }
        }

        @Override // com.beizi.fusion.xd
        public void a() {
            aa aaVar = (aa) d6.this.c();
            if (aaVar instanceof ve) {
                ((ve) aaVar).a();
            }
        }
    }

    public static final class c extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        private aa f13386a;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (context != null) {
                ih.a(context.getApplicationContext()).a(this);
            }
            aa aaVar = this.f13386a;
            if (aaVar != null) {
                n1 n1Var = n1.ERROR_ACTIVITY_ISSUE;
                aaVar.a(n1Var.b(), n1Var.c());
            }
        }

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(aa aaVar) {
            this.f13386a = aaVar;
        }
    }

    public d6(Context context, da daVar, EnumC1130d enumC1130d) {
        super(context, daVar, enumC1130d);
        this.f13381p = j();
        this.f13384s = new c();
    }

    private void c(Context context) {
        if (context != null) {
            ih.a(context.getApplicationContext()).a(this.f13384s);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f13693d = true;
    }

    public abstract rd b(td tdVar);

    public void b(Map map) {
        rd rdVar = this.f13383r;
        if (rdVar == null || rdVar.f() == null) {
            return;
        }
        this.f13383r.f().a(map);
    }

    public void i() {
        aa aaVar = (aa) c();
        if (aaVar != null) {
            aaVar.onAdLoaded();
        }
    }

    public abstract b j();

    public void k() {
        this.f13693d = false;
        rd rdVar = this.f13383r;
        if (rdVar != null) {
            rdVar.b();
        }
        View view = this.f13382q;
        if (view == null || !(view instanceof ScopeExpressContainer)) {
            return;
        }
        ((ScopeExpressContainer) view).onViewDestroy();
    }

    public Map l() {
        rd rdVar = this.f13383r;
        return rdVar != null ? rdVar.e() : Collections.EMPTY_MAP;
    }

    public int m() {
        rd rdVar = this.f13383r;
        if (rdVar == null || rdVar.f() == null) {
            return 0;
        }
        return this.f13383r.f().getECPM();
    }

    public boolean n() {
        rd rdVar = this.f13383r;
        if (rdVar != null) {
            return rdVar.j();
        }
        return false;
    }

    @Override // com.beizi.fusion.ea
    public void a(List list) {
        td tdVar = (td) list.get(0);
        if (tdVar != null) {
            this.f13383r = b(tdVar);
            i();
            a(tdVar);
        }
    }

    public void b(n1 n1Var) {
        aa aaVar = (aa) c();
        if (aaVar != null) {
            aaVar.a(n1Var.b(), n1Var.c());
        }
    }

    public void b(Context context) {
        if (!b()) {
            a(context);
            if (zf.a(context, this.f13692c.g(), this.f13690a, this.f13380o)) {
                return;
            }
            c(context);
            return;
        }
        b(n1.ERROR_UNITE_CONTROL);
    }

    @Override // com.beizi.fusion.ea
    public void a(aa aaVar) {
        super.a((ga) aaVar);
        this.f13384s.a(aaVar);
    }

    public void a(td tdVar) {
        this.f13383r.a((vd) this.f13381p);
        this.f13383r.a((ud) this.f13381p);
        this.f13383r.a((xd) this.f13381p);
        this.f13383r.a((wd) this.f13381p);
    }

    public void a(Map map) {
        rd rdVar = this.f13383r;
        if (rdVar == null || rdVar.f() == null) {
            return;
        }
        this.f13383r.f().b(map);
    }

    public View a(boolean z2) {
        View view = this.f13382q;
        if (view == null || !z2) {
            return view;
        }
        a(view);
        return null;
    }

    private void a(View view) {
        C1124a c1124a = this.f13694e;
        if (c1124a != null) {
            this.f13380o = c1124a.a(this.f13692c, view);
        }
    }

    private void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.asnp.ad.ACTION_ACTIVITY_RESULT");
        if (context != null) {
            ih.a(context.getApplicationContext()).a(this.f13384s, intentFilter);
        }
    }
}
