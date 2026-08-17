package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class eo extends r3 {
    public eo(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a(fc fcVar) {
        super.a(fcVar);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.ya
    public /* bridge */ /* synthetic */ xa d() {
        return super.d();
    }

    @Override // com.beizi.fusion.r3
    public void e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a(fd.a.CLICK_INTERACTIVE_TRIGGER);
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(InteractionModel interactionModel) {
        super.a(interactionModel);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
        if (view != 0) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.C
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f12521b.a(view2);
                }
            });
            if (view instanceof kc) {
                ((kc) view).addExtraExecutor(new dd() { // from class: com.beizi.fusion.D
                    @Override // com.beizi.fusion.dd
                    public final void a(View view2) {
                        this.f12523a.b(view2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a(fd.a.CLICK_INTERACTIVE_TRIGGER);
    }
}
