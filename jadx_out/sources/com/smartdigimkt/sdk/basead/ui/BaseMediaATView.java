package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m1.r;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.n;
import com.smartdigimkt.v1.e0;
import com.smartdigimkt.v1.f0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BaseMediaATView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final c f43250a;

    /* renamed from: b, reason: collision with root package name */
    public final e f43251b;

    /* renamed from: c, reason: collision with root package name */
    public final a f43252c;

    /* renamed from: d, reason: collision with root package name */
    public final r f43253d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f43254e;

    /* renamed from: f, reason: collision with root package name */
    public int f43255f;

    /* renamed from: g, reason: collision with root package name */
    public int f43256g;

    /* renamed from: h, reason: collision with root package name */
    public final FrameLayout f43257h;

    /* renamed from: i, reason: collision with root package name */
    public final CloseImageView f43258i;

    /* renamed from: j, reason: collision with root package name */
    public int f43259j;

    public BaseMediaATView(Context context) {
        super(context);
        this.f43255f = 0;
        this.f43256g = 0;
    }

    public final void a() {
        int i2;
        if (this.f43256g != -2 || (i2 = this.f43255f) <= 0) {
            return;
        }
        int i3 = this.f43259j;
        if (i3 == 1 || i3 == 2) {
            this.f43256g = (int) (i2 * 0.5f);
        } else {
            this.f43256g = (int) (i2 * 0.75f);
        }
    }

    public void changeCloseViewSizeAfterClick() {
        CloseImageView closeImageView = this.f43258i;
        if (closeImageView == null || this.f43251b == null) {
            return;
        }
        n.a(closeImageView, true, this.f43252c, true);
    }

    public void destroy() {
    }

    public List<View> getClickViews() {
        return new ArrayList();
    }

    public List<View> getContainerClickViews() {
        return new ArrayList();
    }

    public int getMediaViewHeight() {
        return this.f43256g;
    }

    public int getMediaViewWidth() {
        return this.f43255f;
    }

    public View getMonitorClickView() {
        return null;
    }

    public void init(int i2, int i3, int i4) {
        this.f43255f = i2;
        this.f43256g = i3;
        this.f43259j = i4;
        a();
        CloseImageView closeImageView = this.f43258i;
        if (closeImageView != null) {
            if (this.f43254e) {
                closeImageView.setVisibility(0);
            } else {
                closeImageView.setVisibility(8);
            }
            n.a(this.f43258i, false, this.f43252c, true);
            this.f43258i.setOnClickListener(new f0(this));
        }
        if (this.f43255f == -1) {
            post(new e0(this));
        }
    }

    public BaseMediaATView(Context context, c cVar, a aVar, r rVar) {
        super(context);
        this.f43255f = 0;
        this.f43256g = 0;
        this.f43250a = cVar;
        e eVar = aVar.f41644r;
        this.f43251b = eVar;
        this.f43254e = eVar.f41957o == 0;
        this.f43253d = rVar;
        this.f43252c = aVar;
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "base_myoffer_media_ad_view", "layout"), this);
        this.f43257h = (FrameLayout) findViewById(k.a(getContext(), "base_media_view_content", "id"));
        this.f43258i = (CloseImageView) findViewById(k.a(getContext(), "base_media_ad_close", "id"));
    }
}
