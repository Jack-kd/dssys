package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.SimpleMediaATView;

/* loaded from: classes5.dex */
public final class j5 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44513a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleMediaATView f44514b;

    public j5(SimpleMediaATView simpleMediaATView, String str) {
        this.f44514b = simpleMediaATView;
        this.f44513a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44513a)) {
            this.f44514b.post(new i5(this, bitmap));
        }
    }
}
