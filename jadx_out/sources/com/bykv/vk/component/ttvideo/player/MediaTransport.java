package com.bykv.vk.component.ttvideo.player;

import java.nio.ByteBuffer;

@JNINamespace("PLAYER")
/* loaded from: classes3.dex */
public abstract class MediaTransport extends NativeObject {
    public static final int FILTER_AUDIO = 2;
    public static final int FILTER_VIDEO = 1;

    @Keep
    public static class MediaPacket {
        public static final int CODEC_ID_AAC = 2;
        public static final int CODEC_ID_BYTE_VC1 = 1;
        public static final int CODEC_ID_H264 = 0;
        public static final int FLAG_CONFIG_FRAME = 1;
        public static final int FLAG_IS_DECODED_ONLY = 3;
        public static final int FLAG_KEY_FRAME = 2;
        public ByteBuffer mBuffer;
        public int mCodecId;
        public int mFlags;
        public boolean mIsAccessUnit;
        public boolean mIsVideo;
        public int mOffset;
        public long mPresentationTimeMs;
        public int mSize;

        @CalledByNative("MediaPacket")
        public MediaPacket() {
        }

        @CalledByNative("MediaPacket")
        public void set(ByteBuffer byteBuffer, boolean z2, boolean z3, int i2, int i3, long j2, int i4, int i5) {
            this.mBuffer = byteBuffer;
            this.mOffset = i2;
            this.mSize = i3;
            this.mPresentationTimeMs = j2;
            this.mFlags = i4;
            this.mIsVideo = z2;
            this.mCodecId = i5;
            this.mIsAccessUnit = z3;
        }
    }

    private native void nativeSetFilterType(int i2);

    @CalledByNative
    public abstract void sendPacket(MediaPacket mediaPacket);

    public void setFilterType(int i2) {
        nativeSetFilterType(i2);
    }
}
