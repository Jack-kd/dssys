package com.smartdigimkt.m1;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.BaseMediaATView;
import com.smartdigimkt.sdk.basead.ui.MraidMediaView;
import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes5.dex */
public final class s extends l {

    /* renamed from: E, reason: collision with root package name */
    public BaseMediaATView f41741E;

    /* renamed from: F, reason: collision with root package name */
    public List f41742F;

    public s(Context context, com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, boolean z2) {
        super(context, kVar, aVar, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
    @Override // com.smartdigimkt.m1.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.content.Context r9, com.smartdigimkt.e5.v r10) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.m1.s.a(android.content.Context, com.smartdigimkt.e5.v):android.view.View");
    }

    @Override // com.smartdigimkt.m1.t
    public final ViewGroup c() {
        return null;
    }

    @Override // com.smartdigimkt.m1.l, com.smartdigimkt.m1.t
    public final View d() {
        return this.f41744b.j() ? this.f41741E : this.f41724p;
    }

    @Override // com.smartdigimkt.m1.l
    public final void e() {
        BaseMediaATView baseMediaATView = this.f41741E;
        if (baseMediaATView != null) {
            baseMediaATView.changeCloseViewSizeAfterClick();
        }
    }

    @Override // com.smartdigimkt.m1.l
    public final void f() {
        super.f();
        BaseMediaATView baseMediaATView = this.f41741E;
        if (baseMediaATView != null) {
            baseMediaATView.destroy();
        }
    }

    @Override // com.smartdigimkt.m1.l
    public final View g() {
        OwnNativeATView ownNativeATView = this.f41724p;
        BaseMediaATView baseMediaATView = this.f41741E;
        if (baseMediaATView == null || baseMediaATView.getMonitorClickView() == null) {
            return ownNativeATView;
        }
        View monitorClickView = this.f41741E.getMonitorClickView();
        this.f41725q = new WeakReference(monitorClickView);
        return monitorClickView;
    }

    @Override // com.smartdigimkt.m1.l
    public final List h() {
        return this.f41742F;
    }

    @Override // com.smartdigimkt.m1.l
    public final void i() {
        super.i();
        if (this.f41748f && this.f41744b.j()) {
            BaseMediaATView baseMediaATView = this.f41741E;
            if (baseMediaATView instanceof MraidMediaView) {
                ((MraidMediaView) baseMediaATView).fireAudioVolumeChange(this.f41748f);
            }
        }
    }
}
