package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class g extends f {

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.g2.d f41312i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f41313j = false;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
        int i3 = aVar.f41644r.f41878N0;
        if (i3 == 2) {
            this.f41312i = new com.smartdigimkt.g2.g(context, cVar, aVar, eVar, i2, viewGroup);
            return;
        }
        if (i3 == 3) {
            this.f41312i = new com.smartdigimkt.g2.k(context, cVar, aVar, eVar, i2, viewGroup);
        } else if (i3 == 4) {
            this.f41312i = new com.smartdigimkt.g2.v(context, cVar, aVar, eVar, i2, viewGroup);
        } else {
            if (i3 != 5) {
                return;
            }
            this.f41312i = new com.smartdigimkt.g2.o(context, cVar, aVar, eVar, i2, viewGroup);
        }
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        com.smartdigimkt.g2.d dVar;
        Object obj;
        com.smartdigimkt.g2.d dVar2;
        if (i2 == 102) {
            if (this.f41313j || (dVar = this.f41312i) == null) {
                return;
            }
            dVar.d();
            return;
        }
        if (i2 == 103) {
            if (!this.f41313j) {
                com.smartdigimkt.g2.d dVar3 = this.f41312i;
                if (dVar3 != null) {
                    dVar3.a(this.f41309f);
                    return;
                }
                return;
            }
            if (com.smartdigimkt.z.z.d(this.f41305b, this.f41306c)) {
                return;
            }
            int iA = com.smartdigimkt.z.z.a(this.f41306c, this.f41307d.getContext());
            com.smartdigimkt.m3.c cVar = this.f41305b;
            com.smartdigimkt.l3.a aVar = this.f41306c;
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            com.smartdigimkt.y3.h.a(cVar, aVar, iA, false, 0, "", 0, eVar != null ? eVar.f41878N0 : 1);
            return;
        }
        if (i2 == 112) {
            com.smartdigimkt.g2.d dVar4 = this.f41312i;
            if (dVar4 != null) {
                dVar4.f40329j = false;
                dVar4.f40330k = null;
                this.f41312i = null;
                return;
            }
            return;
        }
        if (i2 != 113) {
            if (i2 == 125 && (obj = map.get("video_reset_player_view_type")) != null && (obj instanceof Integer) && ((Integer) obj).intValue() == 1 && (dVar2 = this.f41312i) != null) {
                dVar2.f40329j = false;
                dVar2.f40330k = null;
                this.f41312i = null;
                return;
            }
            return;
        }
        this.f41313j = true;
        com.smartdigimkt.g2.d dVar5 = this.f41312i;
        if (dVar5 != null) {
            dVar5.a();
        }
    }
}
