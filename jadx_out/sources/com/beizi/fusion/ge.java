package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.he;

/* loaded from: classes2.dex */
public class ge implements xa {

    /* renamed from: a, reason: collision with root package name */
    private he f14060a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f14061b = false;

    public void b() {
        this.f14061b = false;
        this.f14060a = null;
    }

    public void a(Object obj) {
        this.f14061b = false;
    }

    @Override // com.beizi.fusion.xa
    public void a() {
        this.f14061b = true;
    }

    public void a(za zaVar, View view, cb cbVar) {
        he heVar;
        if (!this.f14061b || (heVar = this.f14060a) == null) {
            return;
        }
        if (zaVar == he.a.RENDER_FAILED) {
            heVar.f();
        }
        if (zaVar == he.a.RENDER_SUCCESS) {
            this.f14060a.a();
        }
        if (zaVar == he.a.SINGLE_VIEW_RENDERED) {
            this.f14060a.a(cbVar);
        }
    }

    @Override // com.beizi.fusion.xa
    public void a(he heVar) {
        this.f14060a = heVar;
        heVar.a(this);
    }
}
