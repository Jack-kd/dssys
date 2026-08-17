package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import com.byazt.uhg.a;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.l;
import com.byazt.uhg.u;
import com.byazt.uhg.v;
import com.byazt.uhg.zy;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import com.sigmob.sdk.downloader.core.c;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes3.dex */
public class AVMDLHttpExcutor {
    private static final String TAG = "AVMDLHttpExcutor";
    private static jl okHttpClient;

    public static String buildRangeHeader(long j2, long j3) {
        String strFormRangeStrBySize = formRangeStrBySize(j2, j3);
        if (strFormRangeStrBySize == null) {
            return null;
        }
        return BytesRange.PREFIX.concat(strFormRangeStrBySize);
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static AVMDLResponse excute(AVMDLRequest aVMDLRequest, int i2) throws Exception {
        k.hp hpVar = new k.hp();
        hpVar.hp(aVMDLRequest.urls[i2]);
        hpVar.hp("GET", (v) null);
        hpVar.hp(toOkHttpHeaders(aVMDLRequest));
        l lVarHp = getOkHttpClient().hp(hpVar.l());
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            u uVarL = lVarHp.l();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            aVMDLRequest.mCurlUrlIndex = i2;
            String.format("http open cost time:%d url:%s", Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis), aVMDLRequest.urls[i2]);
            return new AVMDLResponse(aVMDLRequest, uVarL, lVarHp);
        } catch (Exception e2) {
            AVMDLLog.e(TAG, "request exception is " + e2.getLocalizedMessage());
            throw e2;
        }
    }

    public static String formRangeStrByPos(long j2, long j3) {
        if (j2 >= 0 && j3 > 0) {
            return j2 + "-" + j3;
        }
        if (j2 >= 0) {
            return j2 + "-";
        }
        if (j2 >= 0 || j3 <= 0) {
            return null;
        }
        return "-".concat(String.valueOf(j3));
    }

    public static String formRangeStrBySize(long j2, long j3) {
        return formRangeStrByPos(j2, j3 > 0 ? (j3 + j2) - 1 : -1L);
    }

    private static synchronized jl getOkHttpClient() {
        long j2;
        try {
            if (okHttpClient == null) {
                AVMDLDataLoaderConfigure config = AVMDLDataLoader.getInstance().getConfig();
                if (config != null) {
                    long j3 = config.mOpenTimeOut > 0 ? r4 * 1000 : 10000L;
                    long j4 = j3;
                    j2 = config.mRWTimeOut > 0 ? r1 * 1000 : 10000L;
                    j = j4;
                } else {
                    j2 = 10000;
                }
                jl.hp hpVar = new jl.hp();
                hpVar.hp(Collections.singletonList(zy.HTTP_1_1));
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                hpVar.hp(j, timeUnit).l(j2, timeUnit).jx(j2, timeUnit);
                okHttpClient = hpVar.hp();
            }
        } catch (Throwable th) {
            throw th;
        }
        return okHttpClient;
    }

    private static a toOkHttpHeaders(AVMDLRequest aVMDLRequest) {
        a.hp hpVar = new a.hp();
        HashMap<String, String> map = aVMDLRequest.headers;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                entry.getKey();
                entry.getValue();
                hpVar.l(entry.getKey(), entry.getValue());
            }
        }
        String strBuildRangeHeader = buildRangeHeader(aVMDLRequest.reqOff, aVMDLRequest.size);
        if (strBuildRangeHeader != null) {
            hpVar.l(c.f37363b, strBuildRangeHeader);
        }
        hpVar.l("Accept-Encoding", "identity");
        return hpVar.hp();
    }
}
