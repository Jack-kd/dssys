package com.smartdigimkt.e;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.R;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f39944a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f39945b;

    public j(k kVar, Bitmap bitmap) {
        this.f39945b = kVar;
        this.f39944a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object tag = this.f39945b.f39951f.f39952a.getTag(R.id.sdm_bubble_delay_runnable_tag);
        l lVar = this.f39945b.f39951f;
        if (tag != lVar.f39953b[0]) {
            q.a(this.f39944a);
            return;
        }
        if (q.a(lVar.f39952a)) {
            k kVar = this.f39945b;
            l lVar2 = kVar.f39951f;
            q.a(lVar2.f39952a, this.f39944a, kVar.f39948c, kVar.f39949d, lVar2.f39953b[0]);
        } else {
            q.a(this.f39944a);
            l lVar3 = this.f39945b.f39951f;
            q.b(lVar3.f39952a, lVar3.f39953b[0]);
        }
    }
}
