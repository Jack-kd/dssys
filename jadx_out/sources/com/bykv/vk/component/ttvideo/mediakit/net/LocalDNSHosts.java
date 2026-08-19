package com.bykv.vk.component.ttvideo.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public class LocalDNSHosts {
    private static final String TAG = "BatchParseLocalDNSHosts";
    private static final int TIME_OUT = 10000;
    private InetAddress[] mAddress;
    private Future mFuture;
    protected Handler mHandler;
    public String[] mHosts;
    public String mId;
    private boolean mRet = false;
    protected boolean mCancelled = false;
    protected AVMDLNetClient mNetClient = null;

    public static class MyRunnable implements Runnable {
        private final WeakReference<LocalDNSHosts> mLocalDNSRef;

        public MyRunnable(LocalDNSHosts localDNSHosts) {
            this.mLocalDNSRef = new WeakReference<>(localDNSHosts);
        }

        @Override // java.lang.Runnable
        public void run() {
            String.format("----implement delayed check for local dns", new Object[0]);
            LocalDNSHosts localDNSHosts = this.mLocalDNSRef.get();
            if (localDNSHosts == null) {
                String.format("****end implement delayed check for local dns, dns object null", new Object[0]);
            } else {
                if (localDNSHosts.mRet) {
                    return;
                }
                localDNSHosts.cancel();
                String.format("****end implement delayed check cancel local dns,", new Object[0]);
            }
        }
    }

    public LocalDNSHosts(String[] strArr, Handler handler) {
        this.mHosts = strArr;
        this.mHandler = handler;
    }

    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    public void close() {
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    public boolean isRunning() {
        return this.mRet;
    }

    public void start() {
        try {
            this.mFuture = AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.LocalDNSHosts.1
                @Override // java.lang.Runnable
                @SuppressLint({"CI_DefaultLocale"})
                public void run() {
                    int i2 = 0;
                    while (true) {
                        LocalDNSHosts localDNSHosts = LocalDNSHosts.this;
                        String[] strArr = localDNSHosts.mHosts;
                        if (i2 >= strArr.length) {
                            localDNSHosts.mRet = true;
                            return;
                        }
                        if (!TextUtils.isEmpty(strArr[i2])) {
                            try {
                                LocalDNSHosts localDNSHosts2 = LocalDNSHosts.this;
                                localDNSHosts2.mAddress = InetAddress.getAllByName(localDNSHosts2.mHosts[i2]);
                                String str = "";
                                for (int i3 = 0; i3 < LocalDNSHosts.this.mAddress.length; i3++) {
                                    String hostAddress = LocalDNSHosts.this.mAddress[i3].getHostAddress();
                                    if (!TextUtils.isEmpty(hostAddress)) {
                                        str = TextUtils.isEmpty(str) ? str + hostAddress : str + "," + hostAddress;
                                    }
                                }
                                String.format("host:%s pasrse suc result:%s", LocalDNSHosts.this.mHosts[i2], str);
                                if (!TextUtils.isEmpty(str)) {
                                    String.format("****default expiredtime:%d force expiredtime:%d ", Integer.valueOf(AVMDLDNSParser.mGlobalDefaultExpiredTime), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime));
                                    int i4 = AVMDLDNSParser.mGlobalForceExpiredTime;
                                    if (i4 <= 0) {
                                        i4 = AVMDLDNSParser.mGlobalDefaultExpiredTime;
                                    }
                                    IPCache.getInstance().put(LocalDNSHosts.this.mHosts[i2], new AVMDLDNSInfo(0, LocalDNSHosts.this.mHosts[i2], str, System.currentTimeMillis() + (i4 * 1000), LocalDNSHosts.this.mId));
                                }
                            } catch (Throwable th) {
                                String.format("host:%s pasrse err:%s", LocalDNSHosts.this.mHosts[i2], th.getMessage());
                            }
                        }
                        i2++;
                    }
                }
            });
        } catch (Exception e2) {
            String.format("****end call local dns, exception:%s", e2);
        }
        this.mHandler.postDelayed(new MyRunnable(this), 10000L);
    }
}
