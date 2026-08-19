package com.smartdigimkt.v1;

import com.anythink.core.common.a.b;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import java.util.List;

/* loaded from: classes5.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44621a;

    public u0(BaseScreenATView baseScreenATView) {
        this.f44621a = baseScreenATView;
    }

    public final void a(List list) {
        com.smartdigimkt.c2.d dVar;
        com.smartdigimkt.c2.d dVar2;
        if (this.f44621a.f43276Q == 5 && (list == null || list.size() == 0)) {
            this.f44621a.f43276Q = 1;
        }
        if (this.f44621a.f43276Q == 2 && !com.smartdigimkt.t1.d.a().c(b.d.f2195i)) {
            this.f44621a.f43276Q = 1;
        }
        this.f44621a.a(list);
        BaseScreenATView baseScreenATView = this.f44621a;
        if (!baseScreenATView.f43281V || (dVar = baseScreenATView.f43229o) == null) {
            return;
        }
        BasePlayerView basePlayerView = dVar.f39641h;
        if ((basePlayerView == null || !basePlayerView.isPlaying()) && (dVar2 = this.f44621a.f43229o) != null) {
            dVar2.c();
        }
    }
}
