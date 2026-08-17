package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.ee;

/* loaded from: classes2.dex */
class xf extends z0 implements xc {

    /* renamed from: v, reason: collision with root package name */
    private final ee f17446v;

    /* renamed from: w, reason: collision with root package name */
    private final he f17447w;

    /* renamed from: x, reason: collision with root package name */
    private fe f17448x;

    /* renamed from: y, reason: collision with root package name */
    private ScopeExpressContainer f17449y;

    public xf(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        super(context, adItemModel, daVar, adTraceModel);
        this.f17446v = ee.a.a(context, daVar);
        this.f17447w = new b();
    }

    @Override // com.beizi.fusion.xc
    public void k() {
        ee eeVar = this.f17446v;
        if (eeVar != null) {
            if (this.f17733b == null) {
                a(vf.INVALID_MEDIA_STRUCT);
                return;
            }
            if ((eeVar instanceof ya) && ((ya) eeVar).d() != null) {
                ((ya) this.f17446v).d().a(this.f17447w);
            }
            if (!this.f17446v.a(this.f17733b)) {
                a(vf.RENDER_PREPARED_ERROR);
            } else {
                this.f17738g.a(w7.EVENT_REPORT_RENDER_CODE, this.f17735d);
                this.f17446v.c();
            }
        }
    }

    public class b implements he {

        /* renamed from: a, reason: collision with root package name */
        private boolean f17450a;

        private b() {
            this.f17450a = false;
        }

        @Override // com.beizi.fusion.ab
        public void a(ge geVar) {
        }

        @Override // com.beizi.fusion.he
        public void f() {
            if (this.f17450a) {
                return;
            }
            this.f17450a = true;
            xf.this.f17738g.a(w7.EVENT_REPORT_RENDER_FAIL_CODE, xf.this.f17735d);
            xf.this.a(vf.NULL_EXPRESS_VIEW);
        }

        @Override // com.beizi.fusion.he
        public void a(cb cbVar) {
            je jeVarD = cbVar.d();
            if (jeVarD instanceof bd) {
                bd bdVar = (bd) jeVarD;
                zc zcVarA = xf.this.a(cbVar.d(), bdVar.getInteractionType(), bdVar.getActionType());
                if (zcVarA != null) {
                    bdVar.bindInteractionForm(zcVarA);
                }
            }
        }

        @Override // com.beizi.fusion.he
        public void a() {
            xf.this.f17738g.a(w7.EVENT_REPORT_RENDER_SUCCESS_CODE, xf.this.f17735d);
            View viewA = xf.this.a();
            if (viewA instanceof ScopeExpressContainer) {
                ScopeExpressContainer scopeExpressContainer = (ScopeExpressContainer) viewA;
                xf.this.f17735d.setRecorder(ScopeExpressContainer.d.f(scopeExpressContainer));
                xf xfVar = xf.this;
                ScopeExpressContainer.d.a(scopeExpressContainer, xfVar.b(xfVar.f17733b), xf.this.q(), xf.this.r());
                scopeExpressContainer.setVideoConfig(xf.this.f17734c);
                xf.this.b(viewA);
            }
        }
    }

    @Override // com.beizi.fusion.z0, com.beizi.fusion.kb
    public void b() {
        super.b();
        ScopeExpressContainer scopeExpressContainer = this.f17449y;
        if (scopeExpressContainer != null) {
            scopeExpressContainer.onViewDestroy();
            this.f17449y.removeFromParent();
        }
        ee eeVar = this.f17446v;
        if (eeVar != null) {
            eeVar.b();
        }
    }

    @Override // com.beizi.fusion.kb
    public View a() {
        ee eeVar = this.f17446v;
        if (eeVar != null) {
            return eeVar.a();
        }
        return null;
    }

    @Override // com.beizi.fusion.xc
    public void a(fe feVar) {
        this.f17448x = feVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(vf vfVar) {
        fe feVar = this.f17448x;
        if (feVar != null) {
            feVar.a(vfVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        if (view instanceof ScopeExpressContainer) {
            this.f17449y = (ScopeExpressContainer) view;
        }
        fe feVar = this.f17448x;
        if (feVar != null) {
            feVar.a(view);
        }
    }
}
