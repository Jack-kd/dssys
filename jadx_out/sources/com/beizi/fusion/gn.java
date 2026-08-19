package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTagView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeLogoView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.he;
import com.beizi.fusion.ie;
import com.beizi.fusion.je;

/* loaded from: classes2.dex */
public class gn implements ee, ya {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14131a;

    /* renamed from: b, reason: collision with root package name */
    private ScopeExpressContainer f14132b;

    /* renamed from: c, reason: collision with root package name */
    private ra f14133c;

    /* renamed from: d, reason: collision with root package name */
    private final ge f14134d = new ge();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gn.this.f14134d.a();
            gn.this.f14132b.measure(0, 0);
            int measuredHeight = gn.this.f14132b.getMeasuredHeight();
            int measuredWidth = gn.this.f14132b.getMeasuredWidth();
            gn gnVar = gn.this;
            gnVar.a(gnVar.f14133c, new int[]{measuredWidth, measuredHeight});
        }
    }

    public class b implements ie.a {
        private b() {
        }

        @Override // com.beizi.fusion.ie.a
        public void a(cb cbVar) {
        }

        @Override // com.beizi.fusion.ie.a
        public void b(cb cbVar) {
            gn.this.a(cbVar);
        }

        public /* synthetic */ b(gn gnVar, a aVar) {
            this();
        }
    }

    public class c implements je.a {
        private c() {
        }

        @Override // com.beizi.fusion.je.a
        public void a(String str) {
            if (gn.this.f14133c != null) {
                Object objD = gn.this.f14133c.a(str).d();
                if (objD instanceof View) {
                    gn.this.f14132b.removeView((View) objD);
                }
            }
        }

        @Override // com.beizi.fusion.je.a
        public void b(String str) {
        }

        public /* synthetic */ c(gn gnVar, a aVar) {
            this();
        }
    }

    public gn(Context context, da daVar) {
        this.f14131a = context;
    }

    @Override // com.beizi.fusion.ee
    public View a() {
        return null;
    }

    @Override // com.beizi.fusion.ya
    public xa d() {
        return this.f14134d;
    }

    @Override // com.beizi.fusion.ee
    public void b() {
        this.f14134d.b();
    }

    @Override // com.beizi.fusion.ee
    public void c() {
        ra raVar = this.f14133c;
        if (raVar == null || !raVar.e()) {
            return;
        }
        this.f14132b.post(new a());
    }

    public void a(ScopeExpressContainer scopeExpressContainer) {
        this.f14132b = scopeExpressContainer;
    }

    @Override // com.beizi.fusion.ee
    public boolean a(AdItemModel adItemModel) {
        this.f14134d.a((Object) null);
        if (adItemModel == null) {
            return false;
        }
        this.f14133c = j9.a().b(this.f14131a, adItemModel, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ra raVar, int[] iArr) {
        cb cbVarF = raVar.f();
        if (cbVarF.a() == null || iArr.length != 2) {
            return;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        cbVarF.a().b(i2);
        cbVarF.a().c(i3);
        cbVarF.a().a(new b(this, null));
        cbVarF.a().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(cb cbVar) {
        ViewGroup viewGroup;
        je jeVarD = cbVar.d();
        if (jeVarD != 0) {
            View view = (View) jeVarD;
            if (cbVar.e() == null) {
                viewGroup = this.f14132b;
            } else {
                Object objD = cbVar.e().d();
                if (objD instanceof ViewGroup) {
                    viewGroup = (ViewGroup) objD;
                } else {
                    viewGroup = this.f14132b;
                }
            }
            RelativeLayout.LayoutParams layoutParamsI = cbVar.a().i();
            if (viewGroup != null && layoutParamsI != null) {
                if ((view instanceof ScopeLogoView) || (view instanceof ScopeInteractionTagView)) {
                    ((ViewGroup.LayoutParams) layoutParamsI).width = -2;
                }
                view.setLayoutParams(layoutParamsI);
                this.f14134d.a(he.a.SINGLE_VIEW_RENDERED, view, cbVar);
                int childCount = jeVarD.getLayer() == 1 ? 0 : viewGroup.getChildCount();
                if (viewGroup == this.f14132b && viewGroup.getChildCount() > 0) {
                    viewGroup.addView(view, 1);
                } else {
                    viewGroup.addView(view, childCount);
                }
                jeVarD.fillContent(new c(this, null));
            }
            jeVarD.setExpressRoot(this.f14132b);
            this.f14132b.requestLayout();
        }
    }
}
