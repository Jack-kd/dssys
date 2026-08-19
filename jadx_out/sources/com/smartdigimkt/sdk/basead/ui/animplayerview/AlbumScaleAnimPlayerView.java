package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.y1.a;
import com.smartdigimkt.y1.m;
import java.util.List;

/* loaded from: classes5.dex */
public class AlbumScaleAnimPlayerView extends BaseMainAnimPlayerView {

    /* renamed from: B, reason: collision with root package name */
    public m f43678B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f43679C;

    /* renamed from: D, reason: collision with root package name */
    public List f43680D;

    /* renamed from: E, reason: collision with root package name */
    public Paint f43681E;

    public AlbumScaleAnimPlayerView(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView
    public final void a(Context context) {
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, getWidth(), getHeight(), new int[]{Color.parseColor("#DF4B32"), Color.parseColor("#800915")}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        Paint paint = new Paint();
        this.f43681E = paint;
        paint.setShader(linearGradient);
        com.smartdigimkt.t3.m.a(getContext()).a(new o(1, this.f43686w), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new a(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
        m mVar = this.f43678B;
        if (mVar != null) {
            mVar.release();
            this.f43678B = null;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
        m mVar = this.f43678B;
        if (mVar != null) {
            mVar.start();
        } else {
            this.f43679C = true;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
        m mVar = this.f43678B;
        if (mVar != null) {
            mVar.stop();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public int getMinAnimDuration() {
        return TTAdConstant.INIT_LOCAL_FAIL_CODE;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView, com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(c cVar, com.smartdigimkt.l3.a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        this.f43680D = list;
        super.init(cVar, aVar, z2, list, cVar2);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f43681E != null) {
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.f43681E);
        }
    }

    public AlbumScaleAnimPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleAnimPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
        m mVar = this.f43678B;
        if (mVar != null) {
            mVar.pause();
        }
    }
}
