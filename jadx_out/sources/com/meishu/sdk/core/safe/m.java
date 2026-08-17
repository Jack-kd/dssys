package com.meishu.sdk.core.safe;

import android.graphics.SurfaceTexture;
import android.view.TextureView;

/* loaded from: classes4.dex */
public class m implements TextureView.SurfaceTextureListener {
    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        try {
            safeOnSurfaceTextureAvailable(surfaceTexture, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        try {
            return safeOnSurfaceTextureDestroyed(surfaceTexture);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
            return false;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        try {
            safeOnSurfaceTextureSizeChanged(surfaceTexture, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        try {
            safeOnSurfaceTextureUpdated(surfaceTexture);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    public boolean safeOnSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void safeOnSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    public void safeOnSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
