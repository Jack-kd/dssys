package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;
import java.util.List;

/* loaded from: classes5.dex */
public class GuideToClickAnimPlayerView extends BaseAnimPlayerView {

    /* renamed from: B, reason: collision with root package name */
    public GuideToClickView f43709B;

    public GuideToClickAnimPlayerView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(c cVar, a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        Bitmap bitmap;
        super.init(cVar, aVar, z2, list, cVar2);
        Context applicationContext = getContext().getApplicationContext();
        a(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels);
        GuideToClickView guideToClickView = new GuideToClickView(applicationContext);
        this.f43709B = guideToClickView;
        addView(guideToClickView, -1, -1);
        List list2 = this.f43685v;
        if (list2 == null || list2.size() <= 0 || (bitmap = (Bitmap) this.f43685v.get(0)) == null || bitmap.isRecycled()) {
            return;
        }
        this.f43709B.setFingerImageResource(bitmap);
    }

    public GuideToClickAnimPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GuideToClickAnimPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
