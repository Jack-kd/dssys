package com.kwad.sdk.l.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class a {
    private final List<b> bmG = new ArrayList();

    public final void addBackPressable(b bVar) {
        if (bVar != null) {
            this.bmG.add(bVar);
        }
    }

    public final boolean onBackPressed() {
        Iterator<b> it = this.bmG.iterator();
        while (it.hasNext()) {
            if (it.next().onBackPressed()) {
                return true;
            }
        }
        return false;
    }

    public final void removeBackPressable(b bVar) {
        if (bVar != null) {
            this.bmG.remove(bVar);
        }
    }

    public final void addBackPressable(b bVar, int i2) {
        if (bVar != null) {
            this.bmG.add(i2, bVar);
        }
    }
}
