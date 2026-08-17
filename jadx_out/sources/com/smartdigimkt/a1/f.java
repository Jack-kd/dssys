package com.smartdigimkt.a1;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class f implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f39269g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a, reason: collision with root package name */
    public final Handler f39270a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f39271b = new int[1];

    /* renamed from: c, reason: collision with root package name */
    public EGLDisplay f39272c;

    /* renamed from: d, reason: collision with root package name */
    public EGLContext f39273d;

    /* renamed from: e, reason: collision with root package name */
    public EGLSurface f39274e;

    /* renamed from: f, reason: collision with root package name */
    public SurfaceTexture f39275f;

    public f(Handler handler) {
        this.f39270a = handler;
    }

    public final void a(int i2) {
        EGLConfig eGLConfig;
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == null) {
            throw new e("eglGetDisplay failed");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            throw new e("eglInitialize failed");
        }
        this.f39272c = eGLDisplayEglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, f39269g, 0, eGLConfigArr, 0, 1, iArr2, 0);
        if (!zEglChooseConfig || iArr2[0] <= 0 || (eGLConfig = eGLConfigArr[0]) == null) {
            Object[] objArr = {Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]};
            int i3 = t.f39303a;
            throw new e(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", objArr));
        }
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.f39272c, eGLConfig, EGL14.EGL_NO_CONTEXT, i2 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eGLContextEglCreateContext == null) {
            throw new e("eglCreateContext failed");
        }
        this.f39273d = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = this.f39272c;
        if (i2 == 1) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i2 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eGLSurfaceEglCreatePbufferSurface == null) {
                throw new e("eglCreatePbufferSurface failed");
            }
        }
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
            throw new e("eglMakeCurrent failed");
        }
        this.f39274e = eGLSurfaceEglCreatePbufferSurface;
        GLES20.glGenTextures(1, this.f39271b, 0);
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            throw new e("glGenTextures failed. Error: " + Integer.toHexString(iGlGetError));
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f39271b[0]);
        this.f39275f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public final SurfaceTexture b() {
        SurfaceTexture surfaceTexture = this.f39275f;
        surfaceTexture.getClass();
        return surfaceTexture;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        this.f39270a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f39275f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f39271b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f39272c;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f39272c;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f39274e;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f39272c, this.f39274e);
            }
            EGLContext eGLContext = this.f39273d;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f39272c, eGLContext);
            }
            if (t.f39303a >= 19) {
                EGL14.eglReleaseThread();
            }
            this.f39272c = null;
            this.f39273d = null;
            this.f39274e = null;
            this.f39275f = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f39270a.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f39275f;
        if (surfaceTexture != null) {
            surfaceTexture.updateTexImage();
        }
    }
}
