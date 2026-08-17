package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.byazt.uhg.l;
import com.byazt.uhg.u;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes3.dex */
public class AVMDLResponse {
    private static final String TAG = "AVMDLResponse";
    public l call;
    public long readOff;
    public AVMDLRequest request;
    public u response;
    public long contentlength = -1;
    public int statusCode = -1;
    public boolean isReadErr = false;

    public AVMDLResponse(AVMDLRequest aVMDLRequest, u uVar, l lVar) {
        this.request = aVMDLRequest;
        this.response = uVar;
        this.call = lVar;
        this.readOff = aVMDLRequest.reqOff;
        parseResponse();
    }

    private void parseResponse() {
        int iLastIndexOf;
        u uVar = this.response;
        if (uVar == null) {
            return;
        }
        int iJx = uVar.jx();
        this.statusCode = iJx;
        if (iJx == 200) {
            this.contentlength = toInt(this.response.hp(c.f37366e));
            return;
        }
        if (iJx == 206) {
            String strHp = this.response.hp(c.f37367f);
            if (TextUtils.isEmpty(strHp) || (iLastIndexOf = strHp.lastIndexOf(ServiceReference.DELIMITER)) < 0 || iLastIndexOf >= strHp.length() - 1) {
                return;
            }
            this.contentlength = toInt(strHp.substring(iLastIndexOf + 1), -1);
        }
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public void cancel() {
        l lVar = this.call;
        if (lVar != null) {
            lVar.jx();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public boolean isFinish() {
        AVMDLRequest aVMDLRequest = this.request;
        long j2 = aVMDLRequest.size;
        long j3 = j2 >= 0 ? aVMDLRequest.reqOff + j2 : this.contentlength;
        long j4 = this.contentlength;
        if (j3 > j4) {
            j3 = j4;
        }
        String.format("check readoff:%d reqoff:%d reqsize:%d contentlen:%d endoff:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size), Long.valueOf(this.contentlength), Long.valueOf(j3));
        return this.readOff >= j3;
    }

    public boolean isOpenSuccessful() {
        int i2 = this.statusCode;
        return i2 >= 200 && i2 < 300;
    }

    public boolean isReadSuccessful() {
        return !this.isReadErr;
    }

    @SuppressLint({"CI_DefaultLocale"})
    public int readData(byte[] bArr) throws IOException {
        if (this.response.a() == null) {
            return 0;
        }
        try {
            int i2 = this.response.a().jx().read(bArr);
            if (i2 <= 0) {
                return -1;
            }
            String.format("before read off:%d reqoff:%d req size:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            long j2 = i2;
            this.readOff += j2;
            AVMDLRequest aVMDLRequest = this.request;
            aVMDLRequest.reqOff += j2;
            long j3 = aVMDLRequest.size;
            if (j3 > 0) {
                aVMDLRequest.size = j3 - j2;
            }
            String.format("after read,ret:%d off:%d reqoff:%d req size:%d", Integer.valueOf(i2), Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            return i2;
        } catch (IOException e2) {
            this.isReadErr = true;
            AVMDLLog.e(TAG, "read data exception:" + e2.getLocalizedMessage());
            return -1;
        }
    }

    public void reset() {
        this.response = null;
        this.call = null;
        this.contentlength = -1L;
        this.statusCode = -1;
        this.isReadErr = false;
    }

    public static int toInt(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }
}
