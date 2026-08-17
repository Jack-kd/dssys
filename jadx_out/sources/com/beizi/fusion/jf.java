package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.kf;

/* loaded from: classes2.dex */
public class jf implements xa {

    /* renamed from: a, reason: collision with root package name */
    private kf f14666a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f14667b;

    public void b() {
        this.f14667b = false;
    }

    @Override // com.beizi.fusion.xa
    public void a() {
        this.f14667b = true;
    }

    public void a(za zaVar, View view, Integer num) {
        if (this.f14667b) {
            if (zaVar == kf.a.VIDEO_START) {
                this.f14666a.c(zaVar);
            }
            if (zaVar == kf.a.VIDEO_PROCESS) {
                this.f14666a.a(zaVar, num.intValue());
            }
            if (zaVar == kf.a.VIDEO_FINISHED) {
                this.f14666a.e(zaVar);
            }
            if (zaVar == kf.a.VIDEO_ERROR) {
                this.f14666a.j(zaVar);
            }
            if (zaVar == kf.a.VIDEO_PREPARED) {
                this.f14666a.b(zaVar, num.intValue());
            }
            if (zaVar == kf.a.VIDEO_CACHE_FAILED) {
                this.f14666a.i(zaVar);
            }
        }
    }

    @Override // com.beizi.fusion.xa
    public void a(kf kfVar) {
        this.f14666a = kfVar;
        kfVar.a(this);
    }
}
