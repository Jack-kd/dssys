package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel;
import com.beizi.fusion.z9;

/* loaded from: classes2.dex */
public abstract class ja extends ca {
    @Override // com.beizi.fusion.fc
    public void a(View view, int i2) {
        this.f13232a.a(z9.a.AD_CLICK, view, Integer.valueOf(i2));
        NativeModel nativeModel = this.f13233b;
        LinkModel link = nativeModel != null ? nativeModel.getLink() : null;
        if (link != null) {
            a(link, view, i2);
        }
    }

    public abstract void a(LinkModel linkModel, View view, int i2);
}
