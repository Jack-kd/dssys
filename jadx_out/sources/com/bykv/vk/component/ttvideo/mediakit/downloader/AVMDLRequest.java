package com.bykv.vk.component.ttvideo.mediakit.downloader;

import com.byazt.uhg.u;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class AVMDLRequest {
    public static final int UrlStateIsForbidden = 1;
    public static final int UrlStateIsNormal = 0;
    public HashMap<String, String> headers;
    public int mCurlUrlIndex;
    public int mMaxTryCout;
    public int mOpenTimeOut;
    public int mRWTimeOut;
    public int[] mUrlErrCount;
    public int[] mUrlState;
    public long reqOff;
    public u response;
    public long size;
    public String[] urls;

    public AVMDLRequest() {
        this.urls = null;
        this.headers = new HashMap<>();
        this.reqOff = -1L;
        this.size = 0L;
        this.response = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = 0;
        this.mOpenTimeOut = 10;
        this.mRWTimeOut = 10;
    }

    public AVMDLRequest(long j2, long j3, String[] strArr, Object obj, int i2, int i3, int i4) {
        this.urls = strArr;
        this.headers = (HashMap) obj;
        this.reqOff = j2;
        this.size = j3;
        this.response = null;
        this.mUrlState = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = i2;
        this.mOpenTimeOut = i3;
        this.mRWTimeOut = i4;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.mUrlState = new int[strArr.length];
        int i5 = 0;
        while (true) {
            int[] iArr = this.mUrlState;
            if (i5 >= iArr.length) {
                break;
            }
            iArr[i5] = 0;
            i5++;
        }
        this.mUrlErrCount = new int[this.urls.length];
        int i6 = 0;
        while (true) {
            int[] iArr2 = this.mUrlErrCount;
            if (i6 >= iArr2.length) {
                return;
            }
            iArr2[i6] = 0;
            i6++;
        }
    }

    public AVMDLRequest(long j2, long j3, String[] strArr, HashMap<String, String> map) {
        this.urls = strArr;
        this.headers = map;
        this.reqOff = j2;
        this.size = j3;
        this.response = null;
        this.mUrlState = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = 0;
        this.mOpenTimeOut = 10;
        this.mRWTimeOut = 10;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.mUrlState = new int[strArr.length];
        int i2 = 0;
        while (true) {
            int[] iArr = this.mUrlState;
            if (i2 >= iArr.length) {
                return;
            }
            iArr[i2] = 0;
            i2++;
        }
    }
}
