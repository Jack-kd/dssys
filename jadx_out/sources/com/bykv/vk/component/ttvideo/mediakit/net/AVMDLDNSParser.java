package com.bykv.vk.component.ttvideo.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class AVMDLDNSParser {
    public static final int AVMDL_DNS_BACKUP_TYPE = 1;
    public static final int AVMDL_DNS_DEFAULT_EXPIRED_TIME = 2;
    public static final int AVMDL_DNS_ENABLE_BACKUP_IP = 5;
    public static final int AVMDL_DNS_ENABLE_DNS_LOG = 7;
    public static final int AVMDL_DNS_ENABLE_PARALLEL = 4;
    public static final int AVMDL_DNS_ENABLE_REFRESH = 6;
    public static final int AVMDL_DNS_FORCE_EXPIRED_TIME = 10;
    public static final int AVMDL_DNS_GOOGLE_PARSE_HOST = 9;
    public static final int AVMDL_DNS_MAIN_DELAYED_USE_BACKUP_TIME = 3;
    public static final int AVMDL_DNS_MAIN_TYPE = 0;
    public static final int AVMDL_DNS_OWN_PARSE_HOST = 8;
    public static final int DNS_TYPE_BACKUP_IP = 11;
    public static final int DNS_TYPE_HTTP_ALI = 1;
    public static final int DNS_TYPE_HTTP_CUSTOM = 4;
    public static final int DNS_TYPE_HTTP_GOOGLE = 3;
    public static final int DNS_TYPE_HTTP_OWN = 2;
    public static final int DNS_TYPE_HTTP_SERVER = 10;
    public static final int DNS_TYPE_LOCAL = 0;
    public static final int PARSER_IS_BACKUP = 1;
    public static final int PARSER_IS_MAIN = 0;
    private static final String TAG = "AVMDLDNSParser";
    public static AVMDLCustomHTTPDNSParser mCustomHttpDNSParser = null;
    public static int mGlobalBackType = 2;
    public static int mGlobalBackUpDelayedTime = 0;
    public static int mGlobalDefaultExpiredTime = 60;
    public static int mGlobalEnableBackUpIp = 0;
    public static int mGlobalEnableDNSLog = 0;
    public static int mGlobalEnableParallel = 0;
    public static int mGlobalEnableRefresh = 0;
    public static int mGlobalForceExpiredTime = 0;
    public static String mGlobalGoogleDNSParseHost = "";
    public static int mGlobalMainType = 0;
    public static String mGlobalOwnDNSParseHost = "";
    private static AVMDLDNSParser mInstance;
    public static AVMDLNetClientMaker mNetClientMaker;
    private Handler mHandler;
    private int mRefCount;
    private int mState;
    private HandlerThread mThread;
    private int mType;
    private int mTimeOut = 5;
    private Lock mLock = new ReentrantLock();
    private Map<String, AVMDLHostProcessor> mProcessors = new HashMap();

    public AVMDLDNSParser() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mThread.getLooper()) { // from class: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParser.1
            @Override // android.os.Handler
            @SuppressLint({"CI_DefaultLocale"})
            public void handleMessage(Message message) {
                Object obj = message.obj;
                AVMDLDNSInfo aVMDLDNSInfo = obj != null ? (AVMDLDNSInfo) obj : null;
                String.format("----receive msg what:%d info:%s", Integer.valueOf(message.what), aVMDLDNSInfo);
                int i2 = message.what;
                if (i2 == 2) {
                    AVMDLDNSParser.this.proccessFailMsg(i2, aVMDLDNSInfo);
                } else if (i2 == 3) {
                    AVMDLDNSParser.this.proccessSucMsg(i2, aVMDLDNSInfo);
                } else if (i2 == 4) {
                    AVMDLDNSParser.this.proccessPreParseMsg(i2, aVMDLDNSInfo);
                } else if (i2 == 6) {
                    AVMDLDNSParser.this.processParseMsg(i2, aVMDLDNSInfo);
                } else if (i2 == 7) {
                    AVMDLDNSParser.this.processBatchParseMsg(i2, aVMDLDNSInfo);
                }
                String.format("****end proc msg what:%d info:%s", Integer.valueOf(message.what), aVMDLDNSInfo);
            }
        };
    }

    private void addListenerInternal(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        String str2;
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String.format("---add listener:%s for host:%s", aVMDLDNSParserListener, str);
        this.mLock.lock();
        try {
            AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(str);
            String.format("get processor:%s", aVMDLHostProcessor);
            if (aVMDLHostProcessor == null) {
                str2 = str;
                AVMDLHostProcessor aVMDLHostProcessor2 = new AVMDLHostProcessor(str2, this.mHandler, mGlobalMainType, mGlobalBackType, mGlobalBackUpDelayedTime, mGlobalEnableParallel);
                String.format("create processor:%s", aVMDLHostProcessor2);
                z2 = true;
                aVMDLHostProcessor = aVMDLHostProcessor2;
            } else {
                str2 = str;
                z2 = false;
            }
            if (aVMDLDNSParserListener != null && !aVMDLHostProcessor.mListeners.containsKey(aVMDLDNSParserListener)) {
                String.format("add listener", new Object[0]);
                aVMDLHostProcessor.mListeners.put(aVMDLDNSParserListener, 1);
            }
            this.mProcessors.put(str2, aVMDLHostProcessor);
            if (z2) {
                String.format("new processor implement parse", new Object[0]);
                aVMDLHostProcessor.processMsg(5, new AVMDLDNSInfo(mGlobalMainType, str2, (String) null, 0L, (String) null));
            }
            this.mLock.unlock();
            String.format("****end add listener", new Object[0]);
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public static AVMDLDNSParser getInstance() {
        if (mInstance == null) {
            synchronized (AVMDLDNSParser.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new AVMDLDNSParser();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public static int getIntValue(int i2) {
        int i3;
        String.format("----get value for key:%d", Integer.valueOf(i2));
        synchronized (AVMDLDNSParser.class) {
            try {
                if (i2 != 10) {
                    switch (i2) {
                        case 0:
                            i3 = mGlobalMainType;
                            break;
                        case 1:
                            i3 = mGlobalBackType;
                            break;
                        case 2:
                            i3 = mGlobalDefaultExpiredTime;
                            break;
                        case 3:
                            i3 = mGlobalBackUpDelayedTime;
                            break;
                        case 4:
                            i3 = mGlobalEnableParallel;
                            break;
                        case 5:
                            i3 = mGlobalEnableBackUpIp;
                            break;
                        case 6:
                            i3 = mGlobalEnableRefresh;
                            break;
                        case 7:
                            i3 = mGlobalEnableDNSLog;
                            break;
                        default:
                            i3 = Integer.MIN_VALUE;
                            break;
                    }
                } else {
                    i3 = mGlobalForceExpiredTime;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        String.format("****get value:%d for key:%d", Integer.valueOf(i3), Integer.valueOf(i2));
        return i3;
    }

    public static AVMDLNetClient getNetClient() {
        AVMDLNetClient netClient;
        synchronized (AVMDLDNSParser.class) {
            try {
                AVMDLNetClientMaker aVMDLNetClientMaker = mNetClientMaker;
                netClient = aVMDLNetClientMaker != null ? aVMDLNetClientMaker.getNetClient() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return netClient == null ? new AVMDLHTTPNetwork() : netClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proccessFailMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo == null || aVMDLDNSInfo.mHost == null) {
            String.format("proc fail msg  fail, info or host is null", new Object[0]);
            return;
        }
        String.format("----proc fail msg what:%d host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost);
        this.mLock.lock();
        try {
            AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
            String.format("get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost);
            if (aVMDLHostProcessor != null && aVMDLHostProcessor.isValidSourceId(aVMDLDNSInfo.mId)) {
                aVMDLHostProcessor.processResult(i2, aVMDLDNSInfo);
                if (aVMDLHostProcessor.isEnd()) {
                    String.format("processor end, notify result", new Object[0]);
                    for (AVMDLDNSParserListener aVMDLDNSParserListener : aVMDLHostProcessor.mListeners.keySet()) {
                        if (aVMDLDNSParserListener != null) {
                            String.format("listener:%s oncompletion fail", aVMDLDNSParserListener);
                            aVMDLDNSParserListener.onCompletion(0, aVMDLDNSInfo.mHost, null, 0L, null, aVMDLDNSInfo.mType);
                        }
                    }
                    aVMDLHostProcessor.mListeners.clear();
                    this.mProcessors.remove(aVMDLDNSInfo.mHost);
                } else {
                    String.format("processor is not end", new Object[0]);
                }
            }
            this.mLock.unlock();
            String.format("****end proc fail msg what", new Object[0]);
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proccessPreParseMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        if (mGlobalEnableRefresh <= 0) {
            return;
        }
        if (aVMDLDNSInfo == null || aVMDLDNSInfo.mHost == null) {
            String.format("proc pre msg  fail, info or host is null", new Object[0]);
            return;
        }
        String.format("----proc pre parse msg what:%d host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost);
        AVMDLDNSInfo aVMDLDNSInfo2 = IPCache.getInstance().get(aVMDLDNSInfo.mHost);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String.format("cache:%s expiredT:%d", aVMDLDNSInfo2, Long.valueOf(aVMDLDNSInfo2 == null ? -1L : aVMDLDNSInfo2.mExpiredTime));
        if (aVMDLDNSInfo2 == null || aVMDLDNSInfo2.mExpiredTime < jCurrentTimeMillis) {
            addListenerInternal(aVMDLDNSInfo.mHost, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void proccessSucMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        HashMap<AVMDLDNSParserListener, Integer> map;
        if (aVMDLDNSInfo == null || aVMDLDNSInfo.mHost == null) {
            String.format("proc suc msg  fail, info or host is null", new Object[0]);
            return;
        }
        String.format("----proc suc msg what:%d host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost);
        this.mLock.lock();
        try {
            AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
            String.format("get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost);
            if (aVMDLHostProcessor != null && (map = aVMDLHostProcessor.mListeners) != null) {
                for (AVMDLDNSParserListener aVMDLDNSParserListener : map.keySet()) {
                    if (aVMDLDNSParserListener != null) {
                        String.format("listener:%s oncompletion suc", aVMDLDNSParserListener);
                        aVMDLDNSParserListener.onCompletion(0, aVMDLDNSInfo.mHost, aVMDLDNSInfo.mIpList, aVMDLDNSInfo.mExpiredTime, null, aVMDLDNSInfo.mType);
                    }
                }
                aVMDLHostProcessor.mListeners.clear();
                this.mProcessors.remove(aVMDLDNSInfo.mHost);
                String.format("remove all listeners and remove host", new Object[0]);
            }
            sendPreParseMsg(aVMDLDNSInfo.mHost, aVMDLDNSInfo.mExpiredTime - System.currentTimeMillis());
            reportLog(aVMDLDNSInfo);
            this.mLock.unlock();
            String.format("****end proc suc msg", new Object[0]);
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void processBatchParseMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        String[] strArr;
        if (aVMDLDNSInfo == null || (strArr = aVMDLDNSInfo.mHosts) == null || strArr.length == 0) {
            String.format("proc parser msg  fail, info or host is null", new Object[0]);
            return;
        }
        String.format("----proc batch parse msg what:%d", Integer.valueOf(i2));
        if (mGlobalEnableParallel <= 0 && mGlobalMainType != 2) {
            new LocalDNSHosts(aVMDLDNSInfo.mHosts, this.mHandler).start();
            String.format("****end proc batch parser msg", new Object[0]);
        } else {
            try {
                new HTTPDNSHosts(aVMDLDNSInfo.mHosts, null, 2, this.mHandler).start();
            } catch (Exception e2) {
                String.format("parse end create httpdnshosts fail".concat(String.valueOf(e2)), new Object[0]);
            }
        }
    }

    public static void processHijack() {
        String.format("----process hijack old dnsmain:%d back:%d", Integer.valueOf(mGlobalMainType), Integer.valueOf(mGlobalBackType));
        int i2 = mGlobalMainType;
        if (i2 == 0) {
            mGlobalMainType = mGlobalBackType;
            mGlobalBackType = i2;
        }
        String.format("****process hijack new dnsmain:%d back:%d", Integer.valueOf(mGlobalMainType), Integer.valueOf(mGlobalBackType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void processParseMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo == null || aVMDLDNSInfo.mHost == null) {
            String.format("proc parser msg  fail, info or host is null", new Object[0]);
            return;
        }
        String.format("----proc parser msg what:%d host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost);
        this.mLock.lock();
        try {
            AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
            if (aVMDLHostProcessor != null) {
                String.format("----get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost);
                aVMDLHostProcessor.processMsg(i2, aVMDLDNSInfo);
            } else {
                String.format("****get processor null for host:%s", aVMDLDNSInfo.mHost);
            }
            this.mLock.unlock();
            String.format("****end proc parser msg", new Object[0]);
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    private void removeListenerInternal(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        if (TextUtils.isEmpty(str) || aVMDLDNSParserListener == null) {
            return;
        }
        String.format("---remove listener:%s for host:%s", aVMDLDNSParserListener, str);
        this.mLock.lock();
        try {
            AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(str);
            String.format("get processor:%s", aVMDLHostProcessor);
            if (aVMDLHostProcessor != null) {
                String.format("remove listener", new Object[0]);
                aVMDLHostProcessor.mListeners.remove(aVMDLDNSParserListener);
            }
            if (aVMDLHostProcessor != null && aVMDLHostProcessor.mListeners.size() == 0) {
                String.format("listeners empty for processors", new Object[0]);
            }
            this.mLock.unlock();
            String.format("****end remove listener", new Object[0]);
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    private void reportLog(AVMDLDNSInfo aVMDLDNSInfo) throws JSONException {
        if (aVMDLDNSInfo == null || TextUtils.isEmpty(aVMDLDNSInfo.mIpList) || mGlobalEnableDNSLog <= 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("log_type", "mdl_dns_log");
            jSONObject.put("dns_type", aVMDLDNSInfo.mType);
            jSONObject.put("ip_list", aVMDLDNSInfo.mIpList);
            AVMDLDataLoader.getInstance().onLogInfo(15, 0, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    private void sendBatchParseMsg(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(mGlobalMainType, strArr, (String) null, 0L, (String) null);
        Message message = new Message();
        message.what = 7;
        message.obj = aVMDLDNSInfo;
        String.format("send msg for batch parse", new Object[0]);
        this.mHandler.sendMessage(message);
    }

    private void sendPreParseMsg(String str, long j2) {
        if (TextUtils.isEmpty(str) || j2 <= 0 || mGlobalEnableRefresh <= 0) {
            return;
        }
        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(mGlobalMainType, str, (String) null, 0L, (String) null);
        Message message = new Message();
        message.what = 4;
        message.obj = aVMDLDNSInfo;
        long j3 = j2 + 3000;
        String.format("send preparse for host:%s delayTime:%d", aVMDLDNSInfo.mHost, Long.valueOf(j3));
        this.mHandler.sendMessageDelayed(message, j3);
    }

    public static void setClientMaker(AVMDLNetClientMaker aVMDLNetClientMaker) {
        synchronized (AVMDLDNSParser.class) {
            if (aVMDLNetClientMaker != null) {
                try {
                    mNetClientMaker = aVMDLNetClientMaker;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static void setCustomHttpDNSParser(AVMDLCustomHTTPDNSParser aVMDLCustomHTTPDNSParser) {
        synchronized (AVMDLDNSParser.class) {
            try {
                String.format("set custom http dns parser:%d", Integer.valueOf(aVMDLCustomHTTPDNSParser == null ? 0 : 1));
                if (aVMDLCustomHTTPDNSParser != null) {
                    mCustomHttpDNSParser = aVMDLCustomHTTPDNSParser;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static void setIntValue(int i2, int i3) {
        String.format("****set value:%d for key:%d", Integer.valueOf(i3), Integer.valueOf(i2));
        synchronized (AVMDLDNSParser.class) {
            try {
                if (i2 != 10) {
                    switch (i2) {
                        case 0:
                            mGlobalMainType = i3;
                            break;
                        case 1:
                            mGlobalBackType = i3;
                            break;
                        case 2:
                            mGlobalDefaultExpiredTime = i3;
                            break;
                        case 3:
                            mGlobalBackUpDelayedTime = i3;
                            break;
                        case 4:
                            mGlobalEnableParallel = i3;
                            break;
                        case 5:
                            mGlobalEnableBackUpIp = i3;
                            break;
                        case 6:
                            mGlobalEnableRefresh = i3;
                            break;
                        case 7:
                            mGlobalEnableDNSLog = i3;
                            break;
                    }
                } else {
                    mGlobalForceExpiredTime = i3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setStringValue(int i2, String str) {
        String.format("****set value:%s for key:%d", str, Integer.valueOf(i2));
        synchronized (AVMDLDNSParser.class) {
            try {
                if (i2 != 8) {
                    if (i2 == 9 && !TextUtils.isEmpty(str)) {
                        mGlobalGoogleDNSParseHost = str;
                    }
                } else if (!TextUtils.isEmpty(str)) {
                    mGlobalOwnDNSParseHost = str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void updateDNSInfo(String str, String str2, long j2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        IPCache.getInstance().put(str, new AVMDLDNSInfo(10, str, str2, (j2 + mGlobalDefaultExpiredTime) * 1000, (String) null));
    }

    public void addHost(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        addListenerInternal(str, aVMDLDNSParserListener);
    }

    public void doParseHosts(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        int length = strArr.length;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!TextUtils.isEmpty(strArr[i2])) {
                if (IPCache.getInstance().get(strArr[i2]) != null) {
                    String.format("for host:%s has dns info not need do batch parse", strArr[i2]);
                    strArr[i2] = null;
                    length--;
                } else {
                    this.mLock.lock();
                    try {
                        if (this.mProcessors.get(strArr[i2]) != null) {
                            String.format("for host:%s has processor not need do batch parse", strArr[i2]);
                            strArr[i2] = null;
                            length--;
                        }
                    } finally {
                        this.mLock.unlock();
                    }
                }
            }
        }
        if (length == 0) {
            return;
        }
        sendBatchParseMsg(strArr);
    }

    public void postParseHostMsg(String str, int i2) {
        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(i2, str, (String) null, 0L, (String) null);
        Message message = new Message();
        message.what = 5;
        message.obj = aVMDLDNSInfo;
        this.mHandler.sendMessage(message);
    }

    public void release() {
    }

    public void removeHost(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        removeListenerInternal(str, aVMDLDNSParserListener);
    }

    public void setBackUpIP(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        IPCache.getInstance().putBackUpIp(str, new AVMDLDNSInfo(11, str, str2, 0L, (String) null));
    }
}
