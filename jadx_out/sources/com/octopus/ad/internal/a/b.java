package com.octopus.ad.internal.a;

import android.content.Context;
import android.widget.ViewAnimator;

/* loaded from: classes4.dex */
public class b extends ViewAnimator {

    /* renamed from: a, reason: collision with root package name */
    private g f34117a;

    /* renamed from: b, reason: collision with root package name */
    private i f34118b;

    /* renamed from: c, reason: collision with root package name */
    private h f34119c;

    /* renamed from: d, reason: collision with root package name */
    private long f34120d;

    public b(Context context, i iVar, h hVar, long j2) {
        super(context);
        this.f34117a = null;
        this.f34118b = iVar;
        this.f34119c = hVar;
        this.f34120d = j2;
        this.f34117a = a.a(iVar, j2, hVar);
        a();
    }

    public void a() {
        g gVar = this.f34117a;
        if (gVar != null) {
            setInAnimation(gVar.a());
            setOutAnimation(this.f34117a.b());
        }
    }

    @Override // android.view.View
    public void clearAnimation() {
        setInAnimation(null);
        setOutAnimation(null);
    }

    public h getTransitionDirection() {
        return this.f34119c;
    }

    public long getTransitionDuration() {
        return this.f34120d;
    }

    public i getTransitionType() {
        return this.f34118b;
    }

    public void setTransitionDirection(h hVar) {
        if (this.f34119c != hVar) {
            this.f34119c = hVar;
            this.f34117a = a.a(this.f34118b, this.f34120d, hVar);
            a();
        }
    }

    public void setTransitionDuration(long j2) {
        if (this.f34120d != j2) {
            this.f34120d = j2;
            this.f34117a = a.a(this.f34118b, j2, this.f34119c);
            a();
        }
    }

    public void setTransitionType(i iVar) {
        if (this.f34118b != iVar) {
            this.f34118b = iVar;
            this.f34117a = a.a(iVar, this.f34120d, this.f34119c);
            a();
        }
    }
}
