package com.anythink.core.common.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.anythink.core.common.v.l;

/* loaded from: classes2.dex */
public final class f extends d {

    /* renamed from: h, reason: collision with root package name */
    a f2425h;

    public interface a {
        void a(PackageInfo packageInfo);
    }

    public f(Context context, String str, a aVar) {
        super(context, str, "", 0L);
        this.f2425h = aVar;
    }

    @Override // com.anythink.core.common.c.e
    public final c b() {
        PackageInfo packageInfoA = !TextUtils.isEmpty(this.f2421d) ? l.a(this.f2422e, this.f2421d) : null;
        a aVar = this.f2425h;
        if (aVar != null) {
            aVar.a(packageInfoA);
        }
        return null;
    }

    @Override // com.anythink.core.common.c.e
    public final int c() {
        return 3;
    }

    private f(Context context, String str, String str2, long j2) {
        super(context, str, str2, j2);
    }
}
