package com.smartdigimkt.b1;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;

/* loaded from: classes5.dex */
public final class d extends Surface {

    /* renamed from: c, reason: collision with root package name */
    public static int f39481c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f39482d;

    /* renamed from: a, reason: collision with root package name */
    public final c f39483a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f39484b;

    public d(c cVar, SurfaceTexture surfaceTexture) {
        super(surfaceTexture);
        this.f39483a = cVar;
    }

    public static synchronized boolean a(Context context) {
        String strEglQueryString;
        try {
            if (!f39482d) {
                int i2 = com.smartdigimkt.a1.t.f39303a;
                f39481c = (i2 >= 24 && (i2 >= 26 || !("samsung".equals(com.smartdigimkt.a1.t.f39305c) || "XT1650".equals(com.smartdigimkt.a1.t.f39306d))) && ((i2 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content"))) ? strEglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2 : 0;
                f39482d = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f39481c != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f39483a) {
            try {
                if (!this.f39484b) {
                    c cVar = this.f39483a;
                    cVar.f39477b.getClass();
                    cVar.f39477b.sendEmptyMessage(2);
                    this.f39484b = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
