package com.smartdigimkt.i;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.j.u;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.s3.a f40598a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40599b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f40600c;

    public b(com.smartdigimkt.s3.a aVar, com.smartdigimkt.m3.c cVar, Context context) {
        this.f40598a = aVar;
        this.f40599b = cVar;
        this.f40600c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.s3.a aVar = this.f40598a;
        if (aVar == null) {
            return;
        }
        if (this.f40599b == null) {
            aVar.a(false);
            return;
        }
        u uVarA = u.a(this.f40600c);
        com.smartdigimkt.m3.c cVar = this.f40599b;
        uVarA.getClass();
        String strA = com.smartdigimkt.c5.j.a(cVar);
        ConcurrentHashMap concurrentHashMap = uVarA.f40822c;
        if (concurrentHashMap != null && concurrentHashMap.containsKey(strA)) {
            this.f40598a.a(true);
        } else if (com.smartdigimkt.n.b.b(this.f40600c, this.f40599b.f41822m)) {
            this.f40598a.a(true);
        } else {
            String strA2 = com.smartdigimkt.n.c.a(com.smartdigimkt.c5.j.a(this.f40599b));
            com.smartdigimkt.b4.e.a().a(new a(this, TextUtils.isEmpty(strA2) ? false : new File(strA2).exists()));
        }
    }
}
