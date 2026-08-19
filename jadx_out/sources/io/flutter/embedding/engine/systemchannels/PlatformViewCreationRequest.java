package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class PlatformViewCreationRequest {
    public final int direction;
    public final RequestedDisplayMode displayMode;
    public final double logicalHeight;
    public final double logicalLeft;
    public final double logicalTop;
    public final double logicalWidth;

    @Nullable
    public final ByteBuffer params;
    public final int viewId;

    @NonNull
    public final String viewType;

    public enum RequestedDisplayMode {
        TEXTURE_WITH_VIRTUAL_FALLBACK,
        TEXTURE_WITH_HYBRID_FALLBACK,
        HYBRID_ONLY
    }

    @VisibleForTesting
    public PlatformViewCreationRequest(int i2, @NonNull String str, double d2, double d3, double d4, double d5, int i3, @Nullable ByteBuffer byteBuffer) {
        this(i2, str, d2, d3, d4, d5, i3, RequestedDisplayMode.TEXTURE_WITH_VIRTUAL_FALLBACK, byteBuffer);
    }

    public static PlatformViewCreationRequest createHCPPRequest(int i2, String str, int i3, ByteBuffer byteBuffer) {
        return new PlatformViewCreationRequest(i2, str, 0.0d, 0.0d, 0.0d, 0.0d, i3, null, byteBuffer);
    }

    public static PlatformViewCreationRequest createHybridCompositionRequest(int i2, String str, int i3, ByteBuffer byteBuffer) {
        return new PlatformViewCreationRequest(i2, str, 0.0d, 0.0d, 0.0d, 0.0d, i3, RequestedDisplayMode.HYBRID_ONLY, byteBuffer);
    }

    public static PlatformViewCreationRequest createTLHCWithFallbackRequest(int i2, String str, double d2, double d3, double d4, double d5, int i3, boolean z2, ByteBuffer byteBuffer) {
        return new PlatformViewCreationRequest(i2, str, d2, d3, d4, d5, i3, z2 ? RequestedDisplayMode.TEXTURE_WITH_HYBRID_FALLBACK : RequestedDisplayMode.TEXTURE_WITH_VIRTUAL_FALLBACK, byteBuffer);
    }

    public PlatformViewCreationRequest(int i2, @NonNull String str, double d2, double d3, double d4, double d5, int i3, @Nullable RequestedDisplayMode requestedDisplayMode, @Nullable ByteBuffer byteBuffer) {
        this.viewId = i2;
        this.viewType = str;
        this.logicalTop = d2;
        this.logicalLeft = d3;
        this.logicalWidth = d4;
        this.logicalHeight = d5;
        this.direction = i3;
        this.displayMode = requestedDisplayMode;
        this.params = byteBuffer;
    }
}
