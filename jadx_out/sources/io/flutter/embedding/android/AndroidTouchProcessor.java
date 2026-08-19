package io.flutter.embedding.android;

import android.R;
import android.content.Context;
import android.graphics.Matrix;
import android.os.Build;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class AndroidTouchProcessor {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @VisibleForTesting
    static final int BYTES_PER_FIELD = 8;

    @VisibleForTesting
    static final int DEFAULT_HORIZONTAL_SCROLL_FACTOR = 48;

    @VisibleForTesting
    static final int DEFAULT_VERTICAL_SCROLL_FACTOR = 48;
    private static final Matrix IDENTITY_TRANSFORM = new Matrix();
    private static final int IMPLICIT_VIEW_ID = 0;

    @VisibleForTesting
    static final int POINTER_DATA_FIELD_COUNT = 36;
    private static final int POINTER_DATA_FLAG_BATCHED = 1;
    private static final int POINTER_DATA_FLAG_MULTIPLE = 2;
    private static final int POINTER_DATA_MULTIPLE_POINTER_COUNT_SHIFT = 8;
    private static final String TAG = "AndroidTouchProcessor";
    private static final int TOOL_TYPE_BITS = 3;
    private static final int TOOL_TYPE_MASK = 7;
    private int cachedVerticalScrollFactor;

    @NonNull
    private final FlutterRenderer renderer;
    private final boolean trackMotionEvents;
    private final Map<Integer, float[]> ongoingPans = new HashMap();

    @NonNull
    private final MotionEventTracker motionEventTracker = MotionEventTracker.getInstance();

    public @interface PointerChange {
        public static final int ADD = 1;
        public static final int CANCEL = 0;
        public static final int DOWN = 4;
        public static final int HOVER = 3;
        public static final int MOVE = 5;
        public static final int PAN_ZOOM_END = 9;
        public static final int PAN_ZOOM_START = 7;
        public static final int PAN_ZOOM_UPDATE = 8;
        public static final int REMOVE = 2;
        public static final int UP = 6;
    }

    public @interface PointerDeviceKind {
        public static final int INVERTED_STYLUS = 3;
        public static final int MOUSE = 1;
        public static final int STYLUS = 2;
        public static final int TOUCH = 0;
        public static final int TRACKPAD = 4;
        public static final int UNKNOWN = 5;
    }

    public @interface PointerSignalKind {
        public static final int NONE = 0;
        public static final int SCALE = 3;
        public static final int SCROLL = 1;
        public static final int SCROLL_INERTIA_CANCEL = 2;
        public static final int UNKNOWN = 4;
    }

    public AndroidTouchProcessor(@NonNull FlutterRenderer flutterRenderer, boolean z2) {
        this.renderer = flutterRenderer;
        this.trackMotionEvents = z2;
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i2, int i3, int i4, Matrix matrix, ByteBuffer byteBuffer) {
        addPointerForIndex(motionEvent, i2, i3, i4, matrix, byteBuffer, null);
    }

    private float getHorizontalScrollFactor(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 26 ? ViewConfiguration.get(context).getScaledHorizontalScrollFactor() : getVerticalScrollFactorPre26(context);
    }

    @PointerChange
    private int getPointerChangeForAction(int i2) {
        if (i2 == 0) {
            return 4;
        }
        if (i2 == 1) {
            return 6;
        }
        if (i2 == 5) {
            return 4;
        }
        if (i2 == 6) {
            return 6;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 == 7) {
            return 3;
        }
        if (i2 == 3) {
            return 0;
        }
        return i2 == 8 ? 3 : -1;
    }

    @PointerChange
    private int getPointerChangeForPanZoom(int i2) {
        if (i2 == 4) {
            return 7;
        }
        if (i2 == 5) {
            return 8;
        }
        return (i2 == 6 || i2 == 0) ? 9 : -1;
    }

    @PointerDeviceKind
    private int getPointerDeviceTypeForToolType(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 != 3) {
            return i2 != 4 ? 5 : 3;
        }
        return 1;
    }

    private float getVerticalScrollFactor(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 26 ? getVerticalScrollFactorAbove26(context) : getVerticalScrollFactorPre26(context);
    }

    @RequiresApi(26)
    private float getVerticalScrollFactorAbove26(@NonNull Context context) {
        return ViewConfiguration.get(context).getScaledVerticalScrollFactor();
    }

    private int getVerticalScrollFactorPre26(@NonNull Context context) {
        if (this.cachedVerticalScrollFactor == 0) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                return 48;
            }
            this.cachedVerticalScrollFactor = (int) typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.cachedVerticalScrollFactor;
    }

    private int uniquePointerIdByType(MotionEvent motionEvent, int i2) {
        return (motionEvent.getToolType(i2) & 7) | (motionEvent.getPointerId(i2) << 3);
    }

    public boolean onGenericMotionEvent(@NonNull MotionEvent motionEvent, @NonNull Context context) {
        boolean zIsFromSource = motionEvent.isFromSource(2);
        boolean z2 = motionEvent.getActionMasked() == 7 || motionEvent.getActionMasked() == 8;
        if (!zIsFromSource || !z2) {
            return false;
        }
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(motionEvent.getPointerCount() * MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, IDENTITY_TRANSFORM, byteBufferAllocateDirect, context);
        if (byteBufferAllocateDirect.position() % MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE != 0) {
            throw new AssertionError("Packet position is not on field boundary.");
        }
        this.renderer.dispatchPointerDataPacket(byteBufferAllocateDirect, byteBufferAllocateDirect.position());
        return true;
    }

    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return onTouchEvent(motionEvent, IDENTITY_TRANSFORM);
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i2, int i3, int i4, Matrix matrix, ByteBuffer byteBuffer, Context context) {
        int i5;
        int i6;
        long j2;
        long j3;
        double min;
        double max;
        double horizontalScrollFactor;
        double verticalScrollFactor;
        InputDevice.MotionRange motionRange;
        int i7 = -1;
        if (i3 == -1) {
            return;
        }
        int iUniquePointerIdByType = uniquePointerIdByType(motionEvent, i2);
        int pointerDeviceTypeForToolType = getPointerDeviceTypeForToolType(motionEvent.getToolType(i2));
        float[] fArr = {motionEvent.getX(i2), motionEvent.getY(i2)};
        matrix.mapPoints(fArr);
        if (pointerDeviceTypeForToolType == 1) {
            i6 = 0;
            j2 = 0;
            long buttonState = motionEvent.getButtonState() & 31;
            if (buttonState == 0) {
                i5 = 1;
                if (motionEvent.getSource() == 8194 && i3 == 4) {
                    this.ongoingPans.put(Integer.valueOf(iUniquePointerIdByType), fArr);
                }
            } else {
                i5 = 1;
            }
            j3 = buttonState;
        } else {
            i5 = 1;
            i6 = 0;
            j2 = 0;
            j3 = pointerDeviceTypeForToolType == 2 ? (motionEvent.getButtonState() >> 4) & 15 : 0L;
        }
        boolean zContainsKey = this.ongoingPans.containsKey(Integer.valueOf(iUniquePointerIdByType));
        if (zContainsKey) {
            int pointerChangeForPanZoom = getPointerChangeForPanZoom(i3);
            if (pointerChangeForPanZoom == -1) {
                return;
            } else {
                i7 = pointerChangeForPanZoom;
            }
        }
        long id = this.trackMotionEvents ? this.motionEventTracker.track(motionEvent).getId() : j2;
        int i8 = motionEvent.getActionMasked() == 8 ? i5 : i6;
        long eventTime = motionEvent.getEventTime() * 1000;
        byteBuffer.putLong(id);
        byteBuffer.putLong(eventTime);
        if (zContainsKey) {
            byteBuffer.putLong(i7);
            byteBuffer.putLong(4L);
        } else {
            byteBuffer.putLong(i3);
            byteBuffer.putLong(pointerDeviceTypeForToolType);
        }
        byteBuffer.putLong(i8);
        byteBuffer.putLong(iUniquePointerIdByType);
        byteBuffer.putLong(j2);
        if (zContainsKey) {
            float[] fArr2 = this.ongoingPans.get(Integer.valueOf(iUniquePointerIdByType));
            byteBuffer.putDouble(fArr2[i6]);
            byteBuffer.putDouble(fArr2[i5]);
        } else {
            byteBuffer.putDouble(fArr[i6]);
            byteBuffer.putDouble(fArr[i5]);
        }
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putLong(j3);
        byteBuffer.putLong(0L);
        byteBuffer.putLong(0L);
        byteBuffer.putDouble(motionEvent.getPressure(i2));
        if (motionEvent.getDevice() == null || (motionRange = motionEvent.getDevice().getMotionRange(2)) == null) {
            min = 0.0d;
            max = 1.0d;
        } else {
            min = motionRange.getMin();
            max = motionRange.getMax();
        }
        byteBuffer.putDouble(min);
        byteBuffer.putDouble(max);
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(24, i2));
            byteBuffer.putDouble(0.0d);
        } else {
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putDouble(motionEvent.getSize(i2));
        byteBuffer.putDouble(motionEvent.getToolMajor(i2));
        byteBuffer.putDouble(motionEvent.getToolMinor(i2));
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(motionEvent.getAxisValue(8, i2));
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(25, i2));
        } else {
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putLong(i4);
        if (i8 == i5) {
            if (context != null) {
                horizontalScrollFactor = getHorizontalScrollFactor(context);
                verticalScrollFactor = getVerticalScrollFactor(context);
            } else {
                horizontalScrollFactor = 48.0d;
                verticalScrollFactor = 48.0d;
            }
            byteBuffer.putDouble(horizontalScrollFactor * (-motionEvent.getAxisValue(10, i2)));
            byteBuffer.putDouble(verticalScrollFactor * (-motionEvent.getAxisValue(9, i2)));
        } else {
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        if (zContainsKey) {
            float[] fArr3 = this.ongoingPans.get(Integer.valueOf(iUniquePointerIdByType));
            byteBuffer.putDouble(fArr[i6] - fArr3[i6]);
            byteBuffer.putDouble(fArr[1] - fArr3[1]);
        } else {
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(1.0d);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putLong(0L);
        if (zContainsKey && i7 == 9) {
            this.ongoingPans.remove(Integer.valueOf(iUniquePointerIdByType));
        }
    }

    public boolean onTouchEvent(@NonNull MotionEvent motionEvent, @NonNull Matrix matrix) {
        int actionMasked = motionEvent.getActionMasked();
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        boolean z2 = actionMasked == 0 || actionMasked == 5;
        boolean z3 = !z2 && (actionMasked == 1 || actionMasked == 6);
        int i2 = (z3 && getPointerDeviceTypeForToolType(motionEvent.getToolType(motionEvent.getActionIndex())) == 0) ? 1 : 0;
        int pointerCount = motionEvent.getPointerCount();
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((pointerCount + i2) * MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        if (z2) {
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, byteBufferAllocateDirect);
        } else if (z3) {
            for (int i3 = 0; i3 < pointerCount; i3++) {
                if (i3 != motionEvent.getActionIndex() && motionEvent.getToolType(i3) == 1) {
                    addPointerForIndex(motionEvent, i3, 5, 1, matrix, byteBufferAllocateDirect);
                }
            }
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, byteBufferAllocateDirect);
            if (i2 != 0) {
                addPointerForIndex(motionEvent, motionEvent.getActionIndex(), 2, 0, matrix, byteBufferAllocateDirect);
            }
        } else {
            for (int i4 = 0; i4 < pointerCount; i4++) {
                addPointerForIndex(motionEvent, i4, pointerChangeForAction, (pointerCount << 8) | 2, matrix, byteBufferAllocateDirect);
            }
        }
        if (byteBufferAllocateDirect.position() % MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE != 0) {
            throw new AssertionError("Packet position is not on field boundary");
        }
        this.renderer.dispatchPointerDataPacket(byteBufferAllocateDirect, byteBufferAllocateDirect.position());
        return true;
    }
}
