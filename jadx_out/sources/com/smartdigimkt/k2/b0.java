package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;
import com.smartdigimkt.sdk.basead.ui.specialnote.ScreenSpecialNoteView;
import com.smartdigimkt.sdk.basead.ui.specialnote.SimpleSpecialNoteView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class b0 extends f {

    /* renamed from: i, reason: collision with root package name */
    public BaseSpecialNoteView f41287i;

    /* renamed from: j, reason: collision with root package name */
    public long f41288j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f41289k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f41290l = false;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        com.smartdigimkt.m3.e eVar2;
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
        int i3 = this.f41308e;
        if (i3 == 4 || i3 == 5 || i3 == 6) {
            this.f41287i = new SimpleSpecialNoteView(this.f41304a);
        } else {
            this.f41287i = new ScreenSpecialNoteView(this.f41304a);
        }
        com.smartdigimkt.l3.a aVar2 = this.f41306c;
        if (aVar2 == null || !String.valueOf(aVar2.f41628b).equals("4") || (eVar2 = this.f41306c.f41644r) == null) {
            return;
        }
        this.f41288j = eVar2.f41948l;
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        if (i2 == 102) {
            this.f41290l = true;
            return;
        }
        if (i2 == 103) {
            Object obj = map.get("key_has_endcard_improve");
            if (!(obj != null && (obj instanceof Boolean) && ((Boolean) obj).booleanValue()) && com.smartdigimkt.z.z.h(this.f41305b, this.f41306c)) {
                a(7);
                return;
            }
            return;
        }
        if (i2 != 119) {
            switch (i2) {
                case 112:
                    break;
                case 113:
                    this.f41289k = true;
                    break;
                case 114:
                    if (com.smartdigimkt.z.z.h(this.f41305b, this.f41306c)) {
                        if (this.f41308e != 1) {
                            a(6);
                            return;
                        } else {
                            if (this.f41290l) {
                                return;
                            }
                            a(6);
                            return;
                        }
                    }
                    a(5);
                    return;
                default:
                    return;
            }
            BaseSpecialNoteView baseSpecialNoteView = this.f41287i;
            if (baseSpecialNoteView != null) {
                baseSpecialNoteView.release();
                return;
            }
            return;
        }
        BaseSpecialNoteView baseSpecialNoteView2 = this.f41287i;
        if (baseSpecialNoteView2 != null) {
            baseSpecialNoteView2.release();
        }
    }

    public final void a(int i2) {
        long j2;
        long j3;
        long j4;
        this.f41305b.getClass();
        if (this.f41289k || this.f41287i == null) {
            return;
        }
        if (i2 == 5) {
            com.smartdigimkt.m3.e eVar = this.f41306c.f41644r;
            if (!eVar.f41925d0) {
                return;
            }
            j2 = eVar.f41934g0;
            j3 = eVar.f41937h0;
        } else if (i2 == 6) {
            com.smartdigimkt.m3.e eVar2 = this.f41306c.f41644r;
            if (!eVar2.f41928e0) {
                return;
            }
            j2 = eVar2.f41934g0;
            j3 = eVar2.f41937h0;
        } else {
            if (i2 != 7) {
                return;
            }
            com.smartdigimkt.m3.e eVar3 = this.f41306c.f41644r;
            if (!eVar3.f41931f0) {
                return;
            }
            j2 = eVar3.f41940i0;
            j3 = eVar3.f41943j0;
        }
        long j5 = this.f41288j;
        if (j5 <= 0 || j5 >= j2 + j3 + 1000) {
            j4 = j3;
        } else if (j3 + 1000 >= j5) {
            j4 = j5 - 1000;
            j2 = 0;
        } else {
            j2 = (j5 - j3) - 1000;
            j4 = j3;
        }
        if (j2 >= 0 && j4 >= 0) {
            com.smartdigimkt.b4.e.a().a(new a0(this, i2, j2, j4));
        }
    }
}
