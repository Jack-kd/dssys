package com.byazt.ze;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings;
import android.text.TextUtils;
import com.byazt.fj.n;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

@com.byazt.kj.hp(hp = {0, 1, 683, 45})
/* loaded from: classes3.dex */
public final class e {
    public static final ThreadLocal<PathMeasure> hp = new ThreadLocal<PathMeasure>() { // from class: com.byazt.ze.e.1
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public static final ThreadLocal<Path> f28387l = new ThreadLocal<Path>() { // from class: com.byazt.ze.e.2
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    };
    public static final ThreadLocal<Path> jx = new ThreadLocal<Path>() { // from class: com.byazt.ze.e.3
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    };

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal<float[]> f28386j = new ThreadLocal<float[]>() { // from class: com.byazt.ze.e.4
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public float[] initialValue() {
            return new float[4];
        }
    };

    /* renamed from: w, reason: collision with root package name */
    public static final float f28388w = (float) (Math.sqrt(2.0d) / 2.0d);

    public static int hp(float f2, float f3, float f4, float f5) {
        int i2 = f2 != 0.0f ? (int) (f2 * 527.0f) : 17;
        if (f3 != 0.0f) {
            i2 = (int) (i2 * 31 * f3);
        }
        if (f4 != 0.0f) {
            i2 = (int) (i2 * 31 * f4);
        }
        return f5 != 0.0f ? (int) (i2 * 31 * f5) : i2;
    }

    public static boolean l(Matrix matrix) {
        float[] fArr = f28386j.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static boolean hp(int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i2 < i5) {
            return false;
        }
        if (i2 > i5) {
            return true;
        }
        if (i3 < i6) {
            return false;
        }
        return i3 > i6 || i4 >= i7;
    }

    public static Path hp(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
            float f2 = pointF.x + pointF3.x;
            float f3 = pointF.y + pointF3.y;
            float f4 = pointF2.x;
            float f5 = f4 + pointF4.x;
            float f6 = pointF2.y;
            path.cubicTo(f2, f3, f5, f6 + pointF4.y, f4, f6);
            return path;
        }
        path.lineTo(pointF2.x, pointF2.y);
        return path;
    }

    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static float hp(Matrix matrix) {
        float[] fArr = f28386j.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f2 = f28388w;
        fArr[2] = f2;
        fArr[3] = f2;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static void hp(Path path, n nVar) {
        if (nVar == null || nVar.w()) {
            return;
        }
        hp(path, ((com.byazt.dt.j) nVar.l()).q() / 100.0f, ((com.byazt.dt.j) nVar.jx()).q() / 100.0f, ((com.byazt.dt.j) nVar.j()).q() / 360.0f);
    }

    public static void hp(Path path, float f2, float f3, float f4) {
        com.byazt.na.w.hp("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = hp.get();
        Path path2 = f28387l.get();
        Path path3 = jx.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f2 == 1.0f && f3 == 0.0f) {
            com.byazt.na.w.l("applyTrimPathIfNeeded");
            return;
        }
        if (length >= 1.0f && Math.abs((f3 - f2) - 1.0f) >= 0.01d) {
            float f5 = f2 * length;
            float f6 = f3 * length;
            float f7 = f4 * length;
            float fMin = Math.min(f5, f6) + f7;
            float fMax = Math.max(f5, f6) + f7;
            if (fMin >= length && fMax >= length) {
                fMin = q.hp(fMin, length);
                fMax = q.hp(fMax, length);
            }
            if (fMin < 0.0f) {
                fMin = q.hp(fMin, length);
            }
            if (fMax < 0.0f) {
                fMax = q.hp(fMax, length);
            }
            if (fMin == fMax) {
                path.reset();
                com.byazt.na.w.l("applyTrimPathIfNeeded");
                return;
            }
            if (fMin >= fMax) {
                fMin -= length;
            }
            path2.reset();
            pathMeasure.getSegment(fMin, fMax, path2, true);
            if (fMax > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, fMax % length, path3, true);
                path2.addPath(path3);
            } else if (fMin < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(fMin + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            com.byazt.na.w.l("applyTrimPathIfNeeded");
            return;
        }
        com.byazt.na.w.l("applyTrimPathIfNeeded");
    }

    public static float hp() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float hp(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static Bitmap hp(Bitmap bitmap, int i2, int i3) {
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i3) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static boolean hp(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static void hp(Canvas canvas, RectF rectF, Paint paint) {
        hp(canvas, rectF, paint, 31);
    }

    public static void hp(Canvas canvas, RectF rectF, Paint paint, int i2) {
        com.byazt.na.w.hp("Utils#saveLayer");
        canvas.saveLayer(rectF, paint);
        com.byazt.na.w.l("Utils#saveLayer");
    }

    public static float hp(String str, String str2, int i2) {
        if (str2 != null) {
            try {
                if (str2.contains("%")) {
                    return (Integer.parseInt(str2.substring(0, str2.length() - 1)) / 100.0f) * i2;
                }
                return Integer.parseInt(str2) * hp();
            } catch (Throwable unused) {
            }
        }
        if (TextUtils.equals("x", str) || TextUtils.equals("y", str)) {
            return 0.0f;
        }
        return i2;
    }
}
