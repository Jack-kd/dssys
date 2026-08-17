package com.smartdigimkt.h3;

import android.content.Context;
import com.anythink.core.common.v.o;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40568a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40569b = o.a.f8258a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.c5.e f40570c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m f40571d;

    public j(m mVar, Context context, com.smartdigimkt.c5.e eVar) {
        this.f40571d = mVar;
        this.f40568a = context;
        this.f40570c = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new f(this.f40568a, this.f40569b, this.f40570c));
        m.a(this.f40571d, arrayList, false);
    }
}
