package com.smartdigimkt.sdk.basead.ui.simpleview;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.g2.q;
import com.smartdigimkt.g2.v;
import com.smartdigimkt.j0.j0;
import com.smartdigimkt.o0.c;
import com.smartdigimkt.p2.d;
import com.smartdigimkt.p2.e;
import com.smartdigimkt.p2.f;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.w0.j;
import com.smartdigimkt.y0.g;
import com.smartdigimkt.z.b0;
import com.smartdigimkt.z0.n;
import com.smartdigimkt.z0.p;
import java.io.File;

/* loaded from: classes5.dex */
public class SimplePlayer extends RelativeLayout {
    public static final String TAG = "SimplePlayer";

    /* renamed from: a, reason: collision with root package name */
    public j0 f44003a;

    /* renamed from: b, reason: collision with root package name */
    public j f44004b;

    /* renamed from: c, reason: collision with root package name */
    public final TextureView f44005c;

    /* renamed from: d, reason: collision with root package name */
    public d f44006d;

    /* renamed from: e, reason: collision with root package name */
    public e f44007e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f44008f;

    /* renamed from: g, reason: collision with root package name */
    public String f44009g;

    /* renamed from: h, reason: collision with root package name */
    public String f44010h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f44011i;

    /* renamed from: j, reason: collision with root package name */
    public f f44012j;

    public SimplePlayer(Context context) {
        this(context, null);
    }

    private String getValidVideoPath() {
        return new File(this.f44009g).exists() ? this.f44009g : this.f44010h;
    }

    public final void a(String str, boolean z2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f44003a == null) {
                a();
                return;
            }
            this.f44008f = TextUtils.equals(str, this.f44009g);
            Uri uri = Uri.parse(str);
            if (str.toLowerCase().startsWith("http")) {
                this.f44004b = new j(uri, new p(), new c());
            } else {
                this.f44004b = new j(uri, new n(getContext()), new c());
            }
            this.f44003a.a(this.f44005c);
            this.f44003a.a(this.f44004b);
        } catch (Throwable th) {
            th.printStackTrace();
            if (!TextUtils.equals(str, this.f44010h) && !z2) {
                a(this.f44010h, true);
            } else {
                th.getMessage();
                a();
            }
        }
    }

    public void autoFitVideoSize(int i2, int i3, View view) {
        float fMax = Math.max(i2 / view.getMeasuredWidth(), i3 / view.getMeasuredHeight());
        int iCeil = (int) Math.ceil(r4 / fMax);
        int iCeil2 = (int) Math.ceil(r5 / fMax);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = iCeil;
        layoutParams.height = iCeil2;
        view.setLayoutParams(layoutParams);
    }

    public void load(String str, boolean z2) {
        this.f44010h = str;
        b0.a().getClass();
        this.f44009g = b0.a(3, str);
        this.f44011i = false;
        if (!new File(this.f44009g).exists() && TextUtils.isEmpty(this.f44010h)) {
            a();
            return;
        }
        if (this.f44003a == null) {
            j0 j0Var = new j0(new com.smartdigimkt.j0.f(getContext()), new g(), new com.smartdigimkt.j0.c());
            this.f44003a = j0Var;
            d dVar = new d(this);
            this.f44006d = dVar;
            j0Var.f40899b.f40917g.add(dVar);
            e eVar = new e(this);
            this.f44007e = eVar;
            this.f44003a.f40902e.add(eVar);
            this.f44003a.a(1.0f);
            this.f44003a.a(z2);
            a(getValidVideoPath(), false);
        }
        postDelayed(new com.smartdigimkt.p2.c(this), 5000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j0 j0Var = this.f44003a;
        if (j0Var != null) {
            if (j0Var.i()) {
                this.f44003a.k();
            }
            d dVar = this.f44006d;
            if (dVar != null) {
                this.f44003a.f40899b.f40917g.remove(dVar);
            }
            e eVar = this.f44007e;
            if (eVar != null) {
                this.f44003a.f40902e.remove(eVar);
            }
            this.f44003a.j();
            this.f44003a = null;
        }
        this.f44012j = null;
    }

    public void setSimplePlayerViewListener(f fVar) {
        this.f44012j = fVar;
    }

    public void stopVideo() {
        j0 j0Var = this.f44003a;
        if (j0Var == null || !j0Var.i()) {
            return;
        }
        this.f44003a.k();
    }

    public SimplePlayer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimplePlayer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44009g = "";
        this.f44010h = "";
        this.f44008f = false;
        setBackgroundColor(Color.parseColor("#000000"));
        if (this.f44005c == null) {
            TextureView textureView = new TextureView(getContext());
            this.f44005c = textureView;
            textureView.setKeepScreenOn(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            removeAllViews();
            addView(textureView, layoutParams);
        }
    }

    public final void a() {
        SimplePlayer simplePlayer;
        f fVar = this.f44012j;
        if (fVar != null) {
            q qVar = (q) fVar;
            v vVar = qVar.f40356a;
            if (!vVar.f40364s && (simplePlayer = vVar.f40362q) != null) {
                com.smartdigimkt.z3.d.a(simplePlayer);
            }
            v vVar2 = qVar.f40356a;
            vVar2.f40329j = false;
            vVar2.f40330k = null;
            vVar2.f40333n.refresh(vVar2.f40332m);
            CountDownView countDownView = qVar.f40356a.f40333n;
            if (countDownView != null) {
                countDownView.setVisibility(0);
                v vVar3 = qVar.f40356a;
                CountDownView countDownView2 = vVar3.f40333n;
                Context context = vVar3.f40320a;
                countDownView2.setCountDownEndDrawable(com.smartdigimkt.z3.d.a(context, k.a(context, "myoffer_base_close_icon", "drawable")));
                qVar.f40356a.f40333n.setOnClickListener(new com.smartdigimkt.g2.p(qVar));
            }
        }
    }
}
