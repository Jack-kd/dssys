package com.byazt.cw;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.cw.l;

@com.byazt.kj.hp(hp = {0, 1, 2191, 2192})
/* loaded from: classes2.dex */
public class SSRenderTextureView extends TextureView implements TextureView.SurfaceTextureListener, l {
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public l.hp f19004l;

    public SSRenderTextureView(Context context) {
        this(context, null);
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.byazt.cw.l
    public View getView() {
        return this;
    }

    @Override // com.byazt.cw.l
    public void hp(hp hpVar) {
        this.hp = hpVar;
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(surfaceTexture, i2, i3);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp(surfaceTexture);
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
    }

    public void setWindowVisibilityChangedListener(l.hp hpVar) {
        this.f19004l = hpVar;
    }

    public SSRenderTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.byazt.cw.l
    public void hp(int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i3;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
    }
}
