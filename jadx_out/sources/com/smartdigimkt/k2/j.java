package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes5.dex */
public final class j extends f {

    /* renamed from: i, reason: collision with root package name */
    public boolean f41318i = false;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.h2.o f41319j;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
        this.f41319j = new com.smartdigimkt.h2.o(context, cVar, aVar, i2, relativeLayout, view, eVar);
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        com.smartdigimkt.h2.o oVar;
        int i3;
        com.smartdigimkt.h2.e0 e0Var;
        int i4;
        com.smartdigimkt.h2.o oVar2;
        if (i2 == 107 || i2 == 108) {
            if (this.f41308e != 1 || (oVar = this.f41319j) == null) {
                return;
            }
            com.smartdigimkt.h2.e0 e0Var2 = oVar.f40517h;
            if (e0Var2 != null) {
                e0Var2.a();
            }
            oVar.a();
            ConcurrentLinkedQueue concurrentLinkedQueue = oVar.f40516g;
            if (concurrentLinkedQueue != null) {
                concurrentLinkedQueue.clear();
            }
            this.f41319j = null;
            return;
        }
        if (i2 == 110) {
            com.smartdigimkt.h2.o oVar3 = this.f41319j;
            if (oVar3 != null) {
                if (this.f41318i || (i3 = this.f41308e) == 1 || i3 == 2) {
                    oVar3.b();
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 111) {
            com.smartdigimkt.h2.o oVar4 = this.f41319j;
            if (oVar4 != null) {
                if ((this.f41318i || (i4 = this.f41308e) == 1 || i4 == 2) && (e0Var = oVar4.f40517h) != null) {
                    e0Var.a();
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 113) {
            com.smartdigimkt.h2.o oVar5 = this.f41319j;
            if (oVar5 != null) {
                com.smartdigimkt.h2.e0 e0Var3 = oVar5.f40517h;
                if (e0Var3 != null) {
                    e0Var3.a();
                }
                oVar5.a();
                ConcurrentLinkedQueue concurrentLinkedQueue2 = oVar5.f40516g;
                if (concurrentLinkedQueue2 != null) {
                    concurrentLinkedQueue2.clear();
                }
                this.f41319j = null;
                return;
            }
            return;
        }
        if (i2 == 114) {
            this.f41318i = true;
            com.smartdigimkt.h2.o oVar6 = this.f41319j;
            if (oVar6 != null) {
                oVar6.f40519j = map;
                oVar6.b();
                return;
            }
            return;
        }
        if (i2 == 119 && (oVar2 = this.f41319j) != null) {
            com.smartdigimkt.h2.e0 e0Var4 = oVar2.f40517h;
            if (e0Var4 != null) {
                e0Var4.a();
            }
            oVar2.a();
            ConcurrentLinkedQueue concurrentLinkedQueue3 = oVar2.f40516g;
            if (concurrentLinkedQueue3 != null) {
                concurrentLinkedQueue3.clear();
            }
            this.f41319j = null;
        }
    }
}
