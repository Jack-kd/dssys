package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.he;
import com.beizi.fusion.ie;
import com.beizi.fusion.je;
import com.beizi.fusion.ra;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class cn implements ee, ya {

    /* renamed from: a, reason: collision with root package name */
    private ra f13243a;

    /* renamed from: b, reason: collision with root package name */
    private final ge f13244b = new ge();

    /* renamed from: c, reason: collision with root package name */
    private final Context f13245c;

    /* renamed from: d, reason: collision with root package name */
    private final da f13246d;

    /* renamed from: e, reason: collision with root package name */
    private final s0 f13247e;

    /* renamed from: f, reason: collision with root package name */
    private ScopeExpressContainer f13248f;

    /* renamed from: g, reason: collision with root package name */
    private AtomicInteger f13249g;

    /* renamed from: h, reason: collision with root package name */
    private String f13250h;

    /* renamed from: i, reason: collision with root package name */
    private b f13251i;

    public class a implements ra.a {
        public a() {
        }

        @Override // com.beizi.fusion.ra.a
        public List a(String str) {
            return cn.this.f13247e.a(cn.this.f13246d.b(), str);
        }
    }

    public static class b extends p3 {
        public /* synthetic */ b(int i2, a aVar) {
            this(i2);
        }

        private b(int i2) {
            super(i2);
        }
    }

    public class c implements ie.a {
        private c() {
        }

        @Override // com.beizi.fusion.ie.a
        public void a(cb cbVar) {
            if (cn.this.f13243a != null) {
                cn.this.f13243a.c();
                cn.this.c();
            }
        }

        @Override // com.beizi.fusion.ie.a
        public void b(cb cbVar) {
            cn.this.c(cbVar);
        }

        public /* synthetic */ c(cn cnVar, a aVar) {
            this();
        }
    }

    public class d implements je.a {
        private d() {
        }

        @Override // com.beizi.fusion.je.a
        public void a(String str) {
            if (cn.this.f13243a != null) {
                cn.this.a(cn.this.f13243a.a(str));
            }
        }

        @Override // com.beizi.fusion.je.a
        public void b(String str) {
            if (cn.this.f13243a != null) {
                cn.this.f13244b.a(he.a.SINGLE_VIEW_RENDERED, null, cn.this.f13243a.a(str));
            }
            if (cn.this.f13249g == null || cn.this.f13249g.decrementAndGet() != 0) {
                return;
            }
            String strD = cn.this.f13243a != null ? cn.this.f13243a.d() : "";
            if (!TextUtils.isEmpty(cn.this.f13250h) && !TextUtils.isEmpty(strD)) {
                cn.this.f13247e.a(cn.this.f13246d.b(), cn.this.f13250h, strD);
            }
            cn.this.f13244b.a(he.a.RENDER_SUCCESS, null, null);
        }

        public /* synthetic */ d(cn cnVar, a aVar) {
            this();
        }
    }

    public cn(Context context, da daVar) {
        this.f13245c = context;
        this.f13246d = daVar;
        this.f13247e = (s0) t0.a().b(context);
    }

    @Override // com.beizi.fusion.ee
    public void c() {
        ra raVar = this.f13243a;
        if (raVar == null || !raVar.e()) {
            a((cb) null);
        } else {
            this.f13244b.a();
            a(this.f13243a);
        }
    }

    @Override // com.beizi.fusion.ya
    public xa d() {
        return this.f13244b;
    }

    @Override // com.beizi.fusion.ee
    public boolean a(AdItemModel adItemModel) {
        if (adItemModel == null) {
            return false;
        }
        this.f13244b.a((Object) null);
        this.f13243a = j9.a().b(this.f13245c, adItemModel, new a());
        this.f13249g = new AtomicInteger(this.f13243a.g());
        this.f13251i = new b(this.f13243a.g(), null);
        this.f13248f = new ScopeExpressContainer(this.f13245c);
        ra raVar = this.f13243a;
        if (raVar == null || !raVar.e()) {
            return false;
        }
        NativeModel nativeModel = adItemModel.getNativeModel();
        if (nativeModel == null) {
            return true;
        }
        this.f13250h = nativeModel.getRenderId();
        return true;
    }

    @Override // com.beizi.fusion.ee
    public void b() {
        ra raVar = this.f13243a;
        if (raVar != null) {
            raVar.b();
            this.f13243a = null;
        }
        ge geVar = this.f13244b;
        if (geVar != null) {
            geVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(cb cbVar) {
        this.f13251i.a(cbVar.f(), cbVar);
        if (this.f13251i.a()) {
            for (int i2 = 0; i2 < this.f13251i.b(); i2++) {
                b((cb) this.f13251i.a(i2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004c A[PHI: r6
      0x004c: PHI (r6v6 int) = (r6v4 int), (r6v8 int) binds: [B:27:0x0049, B:22:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(com.beizi.fusion.cb r10) {
        /*
            r9 = this;
            if (r10 != 0) goto L6
            r9.a(r10)
            return
        L6:
            com.beizi.fusion.je r0 = r10.d()
            if (r0 == 0) goto La5
            r1 = r0
            android.view.View r1 = (android.view.View) r1
            com.beizi.fusion.cb r2 = r10.e()
            r3 = 1
            r4 = -2
            if (r2 != 0) goto L56
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer r2 = r9.f13248f
            com.beizi.fusion.da r5 = r9.f13246d
            float[] r5 = r9.a(r5)
            r6 = 0
            r6 = r5[r6]
            int r6 = (int) r6
            r5 = r5[r3]
            int r5 = (int) r5
            com.beizi.fusion.ie r7 = r10.a()
            android.widget.RelativeLayout$LayoutParams r7 = r7.i()
            if (r7 == 0) goto L45
            if (r6 == 0) goto L33
            goto L39
        L33:
            int r6 = r7.width
            if (r6 <= 0) goto L38
            goto L39
        L38:
            r6 = r4
        L39:
            if (r5 == 0) goto L40
            int r8 = r7.height
            if (r5 <= r8) goto L40
            goto L4d
        L40:
            int r5 = r7.height
            if (r5 <= 0) goto L4c
            goto L4d
        L45:
            if (r6 == 0) goto L48
            goto L49
        L48:
            r6 = r4
        L49:
            if (r5 == 0) goto L4c
            goto L4d
        L4c:
            r5 = r4
        L4d:
            android.widget.RelativeLayout$LayoutParams r7 = new android.widget.RelativeLayout$LayoutParams
            r7.<init>(r6, r5)
            r2.setLayoutParams(r7)
            goto L67
        L56:
            com.beizi.fusion.cb r2 = r10.e()
            com.beizi.fusion.je r2 = r2.d()
            boolean r5 = r2 instanceof android.view.ViewGroup
            if (r5 == 0) goto L65
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            goto L67
        L65:
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer r2 = r9.f13248f
        L67:
            com.beizi.fusion.ie r5 = r10.a()
            android.widget.RelativeLayout$LayoutParams r5 = r5.i()
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer r6 = r9.f13248f
            r0.setExpressRoot(r6)
            if (r2 == 0) goto L9c
            if (r5 == 0) goto L9c
            boolean r10 = r1 instanceof com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeLogoView
            if (r10 != 0) goto L80
            boolean r10 = r1 instanceof com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTagView
            if (r10 == 0) goto L82
        L80:
            r5.width = r4
        L82:
            r1.setLayoutParams(r5)
            int r10 = r0.getLayer()
            if (r10 != r3) goto L8c
            goto L8f
        L8c:
            r2.getChildCount()
        L8f:
            r2.addView(r1)
            com.beizi.fusion.cn$d r10 = new com.beizi.fusion.cn$d
            r1 = 0
            r10.<init>(r9, r1)
            r0.fillContent(r10)
            goto L9f
        L9c:
            r9.a(r10)
        L9f:
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer r10 = r9.f13248f
            r10.requestLayout()
            return
        La5:
            r9.a(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.cn.b(com.beizi.fusion.cb):void");
    }

    @Override // com.beizi.fusion.ee
    public View a() {
        return this.f13248f;
    }

    private void a(ra raVar) {
        cb cbVarF = raVar.f();
        a aVar = null;
        if (cbVarF.a() != null) {
            float[] fArrA = a(this.f13246d);
            rm.d("Render", "广告展示大小 " + fArrA[0] + " " + fArrA[1]);
            if (fArrA.length == 2) {
                int i2 = (int) fArrA[0];
                int i3 = (int) fArrA[1];
                cbVarF.a().b(i2);
                cbVarF.a().c(i3);
                cbVarF.a().a(new c(this, aVar));
                cbVarF.a().c();
                return;
            }
        }
        a((cb) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(cb cbVar) {
        this.f13244b.a(he.a.RENDER_FAILED, null, cbVar);
    }

    private float[] a(da daVar) {
        float[] fArrD = daVar.d();
        if (daVar.b() == EnumC1130d.SPLASH) {
            if (fArrD[0] <= 0.0f) {
                fArrD[0] = jn.f(this.f13245c);
            }
            if (fArrD[1] <= 0.0f) {
                fArrD[1] = jn.d(this.f13245c);
            }
        }
        return fArrD;
    }
}
