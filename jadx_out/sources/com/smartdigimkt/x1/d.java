package com.smartdigimkt.x1;

import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes5.dex */
public final class d extends f {

    /* renamed from: q, reason: collision with root package name */
    public final h f45064q;

    public d(View view) {
        super(view);
        if (view == null) {
            return;
        }
        h hVar = new h(view);
        this.f45064q = hVar;
        hVar.f45079e = 0.85f;
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final void a() {
        super.a();
        h hVar = this.f45064q;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final void pause() {
        super.pause();
        h hVar = this.f45064q;
        if (hVar != null) {
            hVar.pause();
        }
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final synchronized void start() {
        super.start();
        h hVar = this.f45064q;
        if (hVar != null) {
            hVar.start();
        }
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final void stop() {
        super.stop();
        h hVar = this.f45064q;
        if (hVar != null) {
            hVar.stop();
        }
    }

    @Override // com.smartdigimkt.x1.f, com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final void a(Canvas canvas) {
        super.a(canvas);
    }

    @Override // com.smartdigimkt.x1.f, com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final void a(int i2, int i3) {
        super.a(i2, i3);
        h hVar = this.f45064q;
        if (hVar != null) {
            hVar.f45061c = i2;
            hVar.f45062d = i3;
        }
    }
}
