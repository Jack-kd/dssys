package io.flutter.embedding.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterMeasureSpec;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.RenderSurface;
import java.nio.ByteBuffer;
import java.util.Locale;

/* loaded from: classes5.dex */
public class FlutterImageView extends View implements RenderSurface {
    private static final String TAG = "FlutterImageView";

    @Nullable
    private Bitmap currentBitmap;

    @Nullable
    private Image currentImage;

    @Nullable
    private FlutterRenderer flutterRenderer;

    @NonNull
    private ImageReader imageReader;
    private boolean isAttachedToFlutterRenderer;
    private boolean isContentSizingEnabled;
    private SurfaceKind kind;

    public enum SurfaceKind {
        background,
        overlay
    }

    public FlutterImageView(@NonNull Context context, int i2, int i3, SurfaceKind surfaceKind) {
        this(context, createImageReader(i2, i3), surfaceKind);
    }

    private void closeCurrentImage() {
        Image image = this.currentImage;
        if (image != null) {
            image.close();
            this.currentImage = null;
        }
    }

    @NonNull
    @SuppressLint({"WrongConstant"})
    private static ImageReader createImageReader(int i2, int i3) {
        int i4;
        int i5;
        if (i2 <= 0) {
            logW("ImageReader width must be greater than 0, but given width=%d, set width=1", Integer.valueOf(i2));
            i4 = 1;
        } else {
            i4 = i2;
        }
        if (i3 <= 0) {
            logW("ImageReader height must be greater than 0, but given height=%d, set height=1", Integer.valueOf(i3));
            i5 = 1;
        } else {
            i5 = i3;
        }
        return Build.VERSION.SDK_INT >= 29 ? ImageReader.newInstance(i4, i5, 1, 3, 768L) : ImageReader.newInstance(i4, i5, 1, 3);
    }

    private void init() {
        setAlpha(0.0f);
        this.isContentSizingEnabled = ContentSizingFlag.isEnabled(getContext());
    }

    private static void logW(String str, Object... objArr) {
        Log.w(TAG, String.format(Locale.US, str, objArr));
    }

    private void updateCurrentBitmap() {
        if (Build.VERSION.SDK_INT >= 29) {
            HardwareBuffer hardwareBuffer = this.currentImage.getHardwareBuffer();
            this.currentBitmap = Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
            hardwareBuffer.close();
            return;
        }
        Image.Plane[] planes = this.currentImage.getPlanes();
        if (planes.length != 1) {
            return;
        }
        Image.Plane plane = planes[0];
        int rowStride = plane.getRowStride() / plane.getPixelStride();
        int height = this.currentImage.getHeight();
        Bitmap bitmap = this.currentBitmap;
        if (bitmap == null || bitmap.getWidth() != rowStride || this.currentBitmap.getHeight() != height) {
            this.currentBitmap = Bitmap.createBitmap(rowStride, height, Bitmap.Config.ARGB_8888);
        }
        ByteBuffer buffer = plane.getBuffer();
        buffer.rewind();
        this.currentBitmap.copyPixelsFromBuffer(buffer);
    }

    public boolean acquireLatestImage() {
        if (!this.isAttachedToFlutterRenderer) {
            return false;
        }
        Image imageAcquireLatestImage = this.imageReader.acquireLatestImage();
        if (imageAcquireLatestImage != null) {
            closeCurrentImage();
            this.currentImage = imageAcquireLatestImage;
            invalidate();
        }
        return imageAcquireLatestImage != null;
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void attachToRenderer(@NonNull FlutterRenderer flutterRenderer) {
        if (this.kind.ordinal() == 0) {
            flutterRenderer.swapSurface(this.imageReader.getSurface());
        }
        setAlpha(1.0f);
        this.flutterRenderer = flutterRenderer;
        this.isAttachedToFlutterRenderer = true;
    }

    public void closeImageReader() {
        this.imageReader.close();
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void detachFromRenderer() {
        if (this.isAttachedToFlutterRenderer) {
            setAlpha(0.0f);
            acquireLatestImage();
            this.currentBitmap = null;
            closeCurrentImage();
            invalidate();
            this.isAttachedToFlutterRenderer = false;
        }
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    @Nullable
    public FlutterRenderer getAttachedRenderer() {
        return this.flutterRenderer;
    }

    public ImageReader getImageReader() {
        return this.imageReader;
    }

    @NonNull
    public Surface getSurface() {
        return this.imageReader.getSurface();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.currentImage != null) {
            updateCurrentBitmap();
        }
        Bitmap bitmap = this.currentBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.isContentSizingEnabled) {
            FlutterMeasureSpec.onMeasure(i2, i3, new FlutterMeasureSpec.MeasureCallback() { // from class: io.flutter.embedding.android.g
                @Override // io.flutter.embedding.android.FlutterMeasureSpec.MeasureCallback
                public final void onMeasure(int i4, int i5) {
                    this.f50820a.setMeasuredDimension(i4, i5);
                }
            });
        } else {
            super.onMeasure(i2, i3);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (!(i2 == this.imageReader.getWidth() && i3 == this.imageReader.getHeight()) && this.kind == SurfaceKind.background && this.isAttachedToFlutterRenderer) {
            resizeIfNeeded(i2, i3);
            this.flutterRenderer.swapSurface(this.imageReader.getSurface());
        }
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void pause() {
    }

    public void resizeIfNeeded(int i2, int i3) {
        if (this.flutterRenderer == null) {
            return;
        }
        if (i2 == this.imageReader.getWidth() && i3 == this.imageReader.getHeight()) {
            return;
        }
        closeCurrentImage();
        closeImageReader();
        this.imageReader = createImageReader(i2, i3);
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void resume() {
    }

    public FlutterImageView(@NonNull Context context) {
        this(context, 1, 1, SurfaceKind.background);
    }

    public FlutterImageView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        this(context, 1, 1, SurfaceKind.background);
    }

    @VisibleForTesting
    public FlutterImageView(@NonNull Context context, @NonNull ImageReader imageReader, SurfaceKind surfaceKind) {
        super(context, null);
        this.isContentSizingEnabled = false;
        this.isAttachedToFlutterRenderer = false;
        this.imageReader = imageReader;
        this.kind = surfaceKind;
        init();
    }
}
