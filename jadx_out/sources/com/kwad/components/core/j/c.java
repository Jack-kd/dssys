package com.kwad.components.core.j;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class c {
    private Object aaW;
    private AdTemplate aaX;

    public c(@NonNull AdTemplate adTemplate, int i2) {
        this.aaW = null;
        try {
            this.aaW = new b(adTemplate, i2);
        } catch (Throwable unused) {
            this.aaX = adTemplate;
        }
    }

    public static List<AdTemplate> q(List<c> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getAdTemplate());
        }
        return arrayList;
    }

    public final AdTemplate getAdTemplate() {
        AdTemplate adTemplate;
        Object obj = this.aaW;
        if (obj != null) {
            try {
                adTemplate = ((b) obj).getAdTemplate();
            } catch (Exception unused) {
            }
        } else {
            adTemplate = null;
        }
        return adTemplate == null ? this.aaX : adTemplate;
    }

    public final Object getHost() {
        return this.aaW;
    }
}
