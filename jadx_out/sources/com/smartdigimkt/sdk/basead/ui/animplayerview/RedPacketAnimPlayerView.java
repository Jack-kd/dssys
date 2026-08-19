package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket.RedPacketAnimatorView;
import java.util.List;

/* loaded from: classes5.dex */
public class RedPacketAnimPlayerView extends BaseMainAnimPlayerView {

    /* renamed from: B, reason: collision with root package name */
    public List f43710B;

    /* renamed from: C, reason: collision with root package name */
    public RedPacketAnimatorView f43711C;

    public RedPacketAnimPlayerView(Context context) {
        this(context, null);
    }

    private ViewGroup.LayoutParams getLayoutParamsByOrientation() {
        if (!k.f(getContext())) {
            return new ViewGroup.LayoutParams(-1, -1);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getContext().getResources().getDisplayMetrics().heightPixels, -1);
        layoutParams.addRule(13);
        return layoutParams;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView
    public final void a(Context context) {
        super.a(context);
        RedPacketAnimatorView redPacketAnimatorView = new RedPacketAnimatorView(context);
        this.f43711C = redPacketAnimatorView;
        redPacketAnimatorView.setLayoutParams(getLayoutParamsByOrientation());
        this.f43711C.setBitmapResources(this.f43710B);
        addView(this.f43711C);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
        RedPacketAnimatorView redPacketAnimatorView = this.f43711C;
        if (redPacketAnimatorView != null) {
            redPacketAnimatorView.release();
            this.f43711C = null;
        }
        List<Bitmap> list = this.f43710B;
        if (list != null) {
            for (Bitmap bitmap : list) {
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
        RedPacketAnimatorView redPacketAnimatorView = this.f43711C;
        if (redPacketAnimatorView != null) {
            redPacketAnimatorView.start();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
        RedPacketAnimatorView redPacketAnimatorView = this.f43711C;
        if (redPacketAnimatorView != null) {
            redPacketAnimatorView.stop();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(c cVar, a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        this.f43710B = list;
        super.init(cVar, aVar, z2, list, cVar2);
    }

    public RedPacketAnimPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketAnimPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
        RedPacketAnimatorView redPacketAnimatorView = this.f43711C;
        if (redPacketAnimatorView != null) {
            redPacketAnimatorView.pause();
        }
    }
}
