package com.meishu.sdk.core.cache;

import android.graphics.Bitmap;
import com.meishu.sdk.core.bquery.g;

/* loaded from: classes4.dex */
public class b implements d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f31532a;

    public b(String str) {
        this.f31532a = str;
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a() {
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a(int i2) {
        try {
            c.f31533a.remove(g.b(this.f31532a));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a(Bitmap bitmap, byte[] bArr, boolean z2) {
        try {
            c.f31533a.remove(g.b(this.f31532a));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
