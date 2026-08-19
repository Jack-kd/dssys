package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeMuteView;

/* loaded from: classes2.dex */
public class k1 extends ca {
    @Override // com.beizi.fusion.fc
    public void a(View view, int i2) {
        if (view instanceof ScopeMuteView) {
            ((ScopeMuteView) view).switchVideoVoice();
        }
    }
}
