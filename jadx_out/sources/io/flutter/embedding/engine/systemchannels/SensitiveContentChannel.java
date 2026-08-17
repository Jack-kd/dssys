package io.flutter.embedding.engine.systemchannels;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;

/* loaded from: classes5.dex */
public class SensitiveContentChannel {

    @VisibleForTesting
    public static final int AUTO_SENSITIVE_CONTENT_SENSITIVITY = 0;

    @VisibleForTesting
    public static final int NOT_SENSITIVE_CONTENT_SENSITIVITY = 2;

    @VisibleForTesting
    public static final int SENSITIVE_CONTENT_SENSITIVITY = 1;
    private static final String TAG = "SensitiveContentChannel";

    @VisibleForTesting
    public static final int UNKNOWN_CONTENT_SENSITIVITY = 3;
    public final MethodChannel channel;

    @NonNull
    public final MethodChannel.MethodCallHandler parsingMethodHandler;
    private SensitiveContentMethodHandler sensitiveContentMethodHandler;

    public interface SensitiveContentMethodHandler {
        int getContentSensitivity();

        boolean isSupported();

        void setContentSensitivity(@NonNull int i2);
    }

    public SensitiveContentChannel(@NonNull DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.SensitiveContentChannel.1
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
                String str;
                if (SensitiveContentChannel.this.sensitiveContentMethodHandler == null) {
                    return;
                }
                str = methodCall.method;
                Log.v(SensitiveContentChannel.TAG, "Received '" + str + "' message.");
                str.getClass();
                switch (str) {
                    case "SensitiveContent.getContentSensitivity":
                        try {
                            result.success(Integer.valueOf(SensitiveContentChannel.this.serializeContentSensitivity(SensitiveContentChannel.this.sensitiveContentMethodHandler.getContentSensitivity())));
                            break;
                        } catch (IllegalArgumentException | IllegalStateException e2) {
                            result.error("error", e2.getMessage(), null);
                            return;
                        }
                    case "SensitiveContent.setContentSensitivity":
                        try {
                            SensitiveContentChannel.this.sensitiveContentMethodHandler.setContentSensitivity(SensitiveContentChannel.this.deserializeContentSensitivity(((Integer) methodCall.arguments()).intValue()));
                            break;
                        } catch (IllegalArgumentException | IllegalStateException e3) {
                            result.error("error", e3.getMessage(), null);
                            return;
                        }
                    case "SensitiveContent.isSupported":
                        result.success(Boolean.valueOf(SensitiveContentChannel.this.sensitiveContentMethodHandler.isSupported()));
                        break;
                    default:
                        Log.v(SensitiveContentChannel.TAG, "Method " + str + " is not implemented for the SensitiveContentChannel.");
                        result.notImplemented();
                        break;
                }
            }
        };
        this.parsingMethodHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/sensitivecontent", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public int deserializeContentSensitivity(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        throw new IllegalArgumentException("contentSensitivityIndex " + i2 + " not known to the SensitiveContentChannel.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public int serializeContentSensitivity(int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                return 3;
            }
        }
        return i3;
    }

    public void setSensitiveContentMethodHandler(@Nullable SensitiveContentMethodHandler sensitiveContentMethodHandler) {
        this.sensitiveContentMethodHandler = sensitiveContentMethodHandler;
    }
}
