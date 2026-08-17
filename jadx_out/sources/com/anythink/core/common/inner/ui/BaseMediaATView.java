package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseMediaATView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    protected w f4839a;

    /* renamed from: b, reason: collision with root package name */
    protected y f4840b;

    /* renamed from: c, reason: collision with root package name */
    protected x f4841c;

    /* renamed from: d, reason: collision with root package name */
    protected a f4842d;

    /* renamed from: e, reason: collision with root package name */
    protected boolean f4843e;

    /* renamed from: f, reason: collision with root package name */
    protected FrameLayout f4844f;

    /* renamed from: g, reason: collision with root package name */
    protected CloseImageView f4845g;

    /* renamed from: h, reason: collision with root package name */
    protected int f4846h;

    /* renamed from: i, reason: collision with root package name */
    protected com.anythink.core.common.inner.ui.e.a f4847i;

    /* renamed from: j, reason: collision with root package name */
    private int f4848j;

    /* renamed from: k, reason: collision with root package name */
    private int f4849k;

    /* renamed from: com.anythink.core.common.inner.ui.BaseMediaATView$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = BaseMediaATView.this.f4842d;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public interface a {
        void a();
    }

    public BaseMediaATView(Context context) {
        super(context);
        this.f4848j = 0;
        this.f4849k = 0;
    }

    private void a() {
        if (this.f4849k <= 0) {
            int i2 = this.f4846h;
            if (i2 == 1 || i2 == 2) {
                this.f4849k = (int) (this.f4848j * 0.5f);
            } else {
                this.f4849k = (int) (this.f4848j * 0.75f);
            }
        }
    }

    private void b() {
        CloseImageView closeImageView = this.f4845g;
        if (closeImageView == null) {
            return;
        }
        if (this.f4843e) {
            closeImageView.setVisibility(0);
        } else {
            closeImageView.setVisibility(8);
        }
        this.f4845g.setOnClickListener(new AnonymousClass1());
    }

    public void destroy() {
    }

    public List<View> getClickViews() {
        return new ArrayList();
    }

    public int getMediaViewHeight() {
        return this.f4849k;
    }

    public int getMediaViewWidth() {
        return this.f4848j;
    }

    public void init(int i2, int i3, int i4) {
        this.f4848j = i2;
        this.f4849k = i3;
        this.f4846h = i4;
        if (i3 <= 0) {
            if (i4 == 1 || i4 == 2) {
                this.f4849k = (int) (i2 * 0.5f);
            } else {
                this.f4849k = (int) (i2 * 0.75f);
            }
        }
        CloseImageView closeImageView = this.f4845g;
        if (closeImageView != null) {
            if (this.f4843e) {
                closeImageView.setVisibility(0);
            } else {
                closeImageView.setVisibility(8);
            }
            this.f4845g.setOnClickListener(new AnonymousClass1());
        }
    }

    public BaseMediaATView(Context context, w wVar, x xVar, boolean z2, a aVar) {
        super(context);
        this.f4848j = 0;
        this.f4849k = 0;
        this.f4839a = wVar;
        this.f4840b = xVar.f4500t;
        this.f4843e = z2;
        this.f4842d = aVar;
        this.f4841c = xVar;
        LayoutInflater.from(getContext()).inflate(p.a(getContext(), "base_myoffer_media_ad_view", "layout"), this);
        this.f4844f = (FrameLayout) findViewById(p.a(getContext(), "base_media_view_content", "id"));
        this.f4845g = (CloseImageView) findViewById(p.a(getContext(), "base_media_ad_close", "id"));
    }
}
