package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.PanelView;

/* loaded from: classes5.dex */
public final class h4 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44491a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PanelView f44492b;

    public h4(PanelView panelView, String str) {
        this.f44492b = panelView;
        this.f44491a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44491a)) {
            this.f44492b.f43510b.setImageBitmap(bitmap);
        }
    }
}
