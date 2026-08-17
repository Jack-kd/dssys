package com.bykv.vk.component.ttvideo.player;

import java.util.ArrayList;
import java.util.List;

@JNINamespace("PLAYER")
/* loaded from: classes3.dex */
public class SidxListObject extends NativeObject {
    private long mBitrate;
    private int mEndIndex;
    private String mFileId;
    private List<SidxItem> mItems = new ArrayList();
    private int mMediaType;
    private int mStartIndex;
    private int mTotalNum;

    public static class SidxItem {
        private long mDuration;
        private int mIndex;
        private long mOffset;
        private long mSize;
        private long mTimestamp;

        public SidxItem(int i2, long j2, long j3, long j4, long j5) {
            this.mIndex = i2;
            this.mOffset = j2;
            this.mTimestamp = j3;
            this.mDuration = j4;
            this.mSize = j5;
        }

        public long getDuration() {
            return this.mDuration;
        }

        public int getIndex() {
            return this.mIndex;
        }

        public long getOffset() {
            return this.mOffset;
        }

        public long getSize() {
            return this.mSize;
        }

        public long getTimestamp() {
            return this.mTimestamp;
        }
    }

    @CalledByNative
    public SidxListObject(int i2, int i3, int i4, int i5, long j2, String str) {
        this.mMediaType = i2;
        this.mTotalNum = i3;
        this.mStartIndex = i4;
        this.mEndIndex = i5;
        this.mBitrate = j2;
        this.mFileId = str;
    }

    @CalledByNative
    public void addItem(int i2, long j2, long j3, long j4, long j5) {
        this.mItems.add(new SidxItem(i2, j2, j3, j4, j5));
    }

    public long getBitrate() {
        return this.mBitrate;
    }

    public int getEndIndex() {
        return this.mEndIndex;
    }

    public String getFileId() {
        return this.mFileId;
    }

    public SidxItem getItem(int i2) {
        if (i2 < 0 || i2 >= this.mItems.size()) {
            return null;
        }
        return this.mItems.get(i2);
    }

    public int getMediaType() {
        return this.mMediaType;
    }

    public int getStartIndex() {
        return this.mStartIndex;
    }

    public int getTotalNum() {
        return this.mTotalNum;
    }
}
