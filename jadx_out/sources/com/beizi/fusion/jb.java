package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;

/* loaded from: classes2.dex */
public abstract class jb implements od {

    /* renamed from: a, reason: collision with root package name */
    protected final Context f14656a;

    /* renamed from: b, reason: collision with root package name */
    private final b f14657b = new b();

    public class b implements oc {
        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            if (C1135g.a.EXPIRED != aVar) {
                jb.this.a(configResponseModel, aVar);
            }
        }

        private b() {
        }
    }

    public jb(Context context) {
        this.f14656a = context.getApplicationContext();
    }

    @Override // com.beizi.fusion.od
    public final void a() {
        C1135g c1135g = (C1135g) C1136h.a().b(this.f14656a);
        if (c1135g != null) {
            c1135g.a(this.f14657b);
        }
    }

    public abstract void a(ConfigResponseModel configResponseModel, C1135g.a aVar);
}
