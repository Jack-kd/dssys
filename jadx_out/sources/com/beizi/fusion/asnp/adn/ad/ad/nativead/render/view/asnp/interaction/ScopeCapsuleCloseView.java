package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bl;
import com.beizi.fusion.dd;
import com.beizi.fusion.kc;
import java.util.Locale;

/* loaded from: classes2.dex */
public class ScopeCapsuleCloseView extends ScopeInteractionTextView implements kc {

    /* renamed from: j, reason: collision with root package name */
    private bl f12680j;

    /* renamed from: k, reason: collision with root package name */
    private dd f12681k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f12682l;

    public class a extends bl {
        public a(long j2, long j3) {
            super(j2, j3);
        }

        @Override // com.beizi.fusion.bl
        public void a(long j2) {
            ScopeCapsuleCloseView.this.a(j2);
        }

        @Override // com.beizi.fusion.bl
        public void c() {
            ScopeCapsuleCloseView.this.b();
            ScopeCapsuleCloseView.this.f12682l = false;
        }

        @Override // com.beizi.fusion.bl
        public void d() {
            ScopeCapsuleCloseView.this.c();
            ScopeCapsuleCloseView.this.f12682l = false;
            ScopeCapsuleCloseView.this.f12680j = null;
        }
    }

    public ScopeCapsuleCloseView(@NonNull Context context) {
        super(context);
        this.f12682l = false;
    }

    @Override // com.beizi.fusion.kc
    public void addExtraExecutor(dd ddVar) {
        this.f12681k = ddVar;
    }

    public void b() {
    }

    public void c() {
        dd ddVar = this.f12681k;
        if (ddVar != null) {
            ddVar.a(this);
        }
    }

    public void d() {
    }

    public int getCountDownTime() {
        RenderModel renderModel = this.f12876d;
        return (renderModel == null || renderModel.getInteractionModel() == null || this.f12876d.getInteractionModel().getCountDownTime() < 1000) ? getDefaultCountDownTime() : this.f12876d.getInteractionModel().getCountDownTime();
    }

    public int getDefaultCountDownTime() {
        return 5000;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        bl blVar = this.f12680j;
        if (blVar != null) {
            blVar.a();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionTextView, com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        bl blVar = this.f12680j;
        if (blVar == null || this.f12682l) {
            return;
        }
        blVar.g();
        this.f12682l = true;
    }

    public ScopeCapsuleCloseView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12682l = false;
    }

    public void a(long j2) {
        setText(String.format(Locale.ENGLISH, "%d %s", Integer.valueOf((int) (j2 / 1000)), this.f12876d.getViewModel().getTitle()));
    }

    public ScopeCapsuleCloseView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12682l = false;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView
    public void a() {
        if (getCountDownTime() > 0) {
            this.f12680j = new a(getCountDownTime() + 500, 1000L);
        } else {
            d();
        }
    }
}
