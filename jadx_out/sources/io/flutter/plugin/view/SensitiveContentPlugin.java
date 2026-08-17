package io.flutter.plugin.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.systemchannels.SensitiveContentChannel;

/* loaded from: classes5.dex */
public class SensitiveContentPlugin implements SensitiveContentChannel.SensitiveContentMethodHandler {
    private Activity mFlutterActivity;
    private final int mFlutterViewId;
    private final SensitiveContentChannel mSensitiveContentChannel;

    public SensitiveContentPlugin(@NonNull int i2, @NonNull Activity activity, @NonNull SensitiveContentChannel sensitiveContentChannel) {
        this.mFlutterActivity = activity;
        this.mFlutterViewId = i2;
        this.mSensitiveContentChannel = sensitiveContentChannel;
        sensitiveContentChannel.setSensitiveContentMethodHandler(this);
    }

    private String getFlutterViewNotFoundErrorReason() {
        return "FlutterView with ID " + this.mFlutterViewId + "not found";
    }

    private String getNotSupportedErrorReason() {
        return "isSupported() should be called before attempting to set content sensitivity as it is not supported on this device.";
    }

    public void destroy() {
        this.mSensitiveContentChannel.setSensitiveContentMethodHandler(null);
        this.mFlutterActivity = null;
    }

    @Override // io.flutter.embedding.engine.systemchannels.SensitiveContentChannel.SensitiveContentMethodHandler
    @SuppressLint({"NewApi"})
    public int getContentSensitivity() {
        if (!isSupported()) {
            return 2;
        }
        View viewFindViewById = this.mFlutterActivity.findViewById(this.mFlutterViewId);
        if (viewFindViewById != null) {
            return viewFindViewById.getContentSensitivity();
        }
        throw new IllegalArgumentException(getFlutterViewNotFoundErrorReason());
    }

    @Override // io.flutter.embedding.engine.systemchannels.SensitiveContentChannel.SensitiveContentMethodHandler
    public boolean isSupported() {
        return Build.VERSION.SDK_INT >= 35;
    }

    @Override // io.flutter.embedding.engine.systemchannels.SensitiveContentChannel.SensitiveContentMethodHandler
    @SuppressLint({"NewApi"})
    public void setContentSensitivity(@NonNull int i2) {
        if (!isSupported()) {
            throw new IllegalStateException(getNotSupportedErrorReason());
        }
        View viewFindViewById = this.mFlutterActivity.findViewById(this.mFlutterViewId);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException(getFlutterViewNotFoundErrorReason());
        }
        if (viewFindViewById.getContentSensitivity() == i2) {
            return;
        }
        viewFindViewById.setContentSensitivity(i2);
        viewFindViewById.invalidate();
    }
}
