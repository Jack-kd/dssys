package com.meishu.sdk.core.download;

import com.meishu.sdk.core.safe.l;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f31567a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f31568b;

    public f(d dVar, b bVar) {
        this.f31568b = dVar;
        this.f31567a = bVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        Iterator<h> it = this.f31568b.f31557e.values().iterator();
        while (it.hasNext()) {
            it.next().a(this.f31567a);
        }
    }
}
