package com.bykv.vk.component.ttvideo.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class AVMDLHostProcessor {
    private static final int BACKUP_DNS = 1;
    private static final int MAIN_DNS = 0;
    public static final int STATE_IS_IDLE = 0;
    public static final int STATE_IS_PARSE_END_ERROR = 2;
    public static final int STATE_IS_PARSE_END_SUC = 3;
    public static final int STATE_IS_WAIT_RESULT = 1;
    private static final String TAG = "AVMDLHostProcessor";
    private int mBackUpDelayedTime;
    private int mBackUpType;
    private int mEnableParallel;
    private Handler mHandler;
    public String mHost;
    public HashMap<AVMDLDNSParserListener, Integer> mListeners;
    private int mMainType;
    private int[] mStates = new int[2];
    private BaseDNS[] mParsers = new BaseDNS[2];

    public AVMDLHostProcessor(String str, Handler handler, int i2, int i3, int i4, int i5) {
        this.mMainType = i2;
        this.mBackUpType = i3;
        this.mHandler = handler;
        this.mHost = str;
        this.mBackUpDelayedTime = i4;
        this.mEnableParallel = i5;
        for (int i6 = 0; i6 < 2; i6++) {
            this.mParsers[i6] = null;
        }
        for (int i7 = 0; i7 < 2; i7++) {
            this.mStates[i7] = 0;
        }
        this.mListeners = new HashMap<>();
    }

    @SuppressLint({"CI_DefaultLocale"})
    private BaseDNS createDNSParser(String str, int i2, int i3) {
        CreateConstructor createConstructor;
        try {
            createConstructor = AVMDLDNSManager.getInstance().getCreateConstructor(i2);
        } catch (Exception unused) {
            createConstructor = null;
        }
        if (createConstructor != null) {
            return createConstructor.createDns(str, null, i2, this.mHandler);
        }
        if (i2 != 4 || AVMDLDNSParser.mCustomHttpDNSParser == null) {
            String.format("create local dns parser for host:%s type:%d", str, Integer.valueOf(i2));
            return new LocalDNS(str, this.mHandler);
        }
        String.format("create custom httpdns parser for host:%s type:%d", str, Integer.valueOf(i2));
        return new CustomHTTPDNS(str, this.mHandler);
    }

    private void doParseInternal(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        String.format("----do parse internal what:%d info:%s", Integer.valueOf(i2), aVMDLDNSInfo);
        if (aVMDLDNSInfo == null) {
            return;
        }
        if (i2 == 5 && this.mParsers[0] == null) {
            String.format("create main dns type:%d host:%s", Integer.valueOf(this.mMainType), aVMDLDNSInfo.mHost);
            this.mStates[0] = 1;
            this.mParsers[0] = createDNSParser(aVMDLDNSInfo.mHost, this.mMainType, 0);
            this.mParsers[0].start();
            Message message = new Message();
            message.what = 6;
            message.obj = aVMDLDNSInfo;
            if (this.mBackUpDelayedTime > 0 || this.mEnableParallel > 0) {
                String.format("BackUpDelayedTime:%d enableparallel:%d send backup delay first", Integer.valueOf(this.mMainType), Integer.valueOf(this.mEnableParallel));
                this.mHandler.sendMessageDelayed(message, this.mBackUpDelayedTime * 1000);
            }
        } else if (i2 == 6 && this.mParsers[1] == null) {
            String.format("create backup dns type:%d host:%s", Integer.valueOf(this.mBackUpType), aVMDLDNSInfo.mHost);
            this.mStates[1] = 1;
            this.mParsers[1] = createDNSParser(aVMDLDNSInfo.mHost, this.mBackUpType, 1);
            this.mParsers[1].start();
        }
        String.format("****do parse internal end", new Object[0]);
    }

    public boolean isEnd() {
        int i2;
        for (int i3 = 0; i3 < 2; i3++) {
            if (this.mParsers[i3] != null && (i2 = this.mStates[i3]) != 3 && i2 != 2) {
                return false;
            }
        }
        return true;
    }

    public boolean isValidSourceId(String str) {
        if (TextUtils.isEmpty(str)) {
            String.format("id: %s is empty", str);
            return false;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            BaseDNS baseDNS = this.mParsers[i2];
            if (baseDNS != null && str.equals(baseDNS.mId)) {
                String.format("id: %s is valid index: %d", str, Integer.valueOf(i2));
                return true;
            }
        }
        String.format("id: %s is valid", str);
        return false;
    }

    public void processMsg(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        int[] iArr;
        int i3;
        String.format("----processor pro msg what:%d host:%s info:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost, aVMDLDNSInfo);
        if (i2 != 5) {
            if (i2 == 6 && (((i3 = (iArr = this.mStates)[0]) == 1 || i3 == 2 || i3 == 3 || this.mEnableParallel > 0) && iArr[1] == 0)) {
                String.format("main dns is not end or enable parrallel and backup dns is idle call backup dns", new Object[0]);
                doParseInternal(i2, aVMDLDNSInfo);
            }
        } else if (this.mStates[0] == 0) {
            String.format("main dns is idle call main dns", new Object[0]);
            doParseInternal(i2, aVMDLDNSInfo);
        }
        String.format("****end processor pro msg what:%d host:%s info:%s", Integer.valueOf(i2), aVMDLDNSInfo.mHost, aVMDLDNSInfo);
    }

    public void processResult(int i2, AVMDLDNSInfo aVMDLDNSInfo) {
        String.format("----process result what:%d id:%s host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost);
        String str = (i2 == 2 || i2 == 3) ? aVMDLDNSInfo.mId : null;
        if (TextUtils.isEmpty(str)) {
            String.format("****process result err id is empty", new Object[0]);
            return;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= 2) {
                break;
            }
            BaseDNS baseDNS = this.mParsers[i3];
            if (baseDNS == null || !str.equals(baseDNS.mId)) {
                i3++;
            } else {
                this.mParsers[i3].close();
                this.mParsers[i3] = null;
                if (i2 == 3) {
                    this.mStates[i3] = 3;
                } else if (i2 == 2) {
                    this.mStates[i3] = 2;
                }
                String.format("****process result parser index:%d is end, be close", Integer.valueOf(i3));
            }
        }
        if (i3 == 0 && i2 == 2) {
            String.format("mian dns parse error, try back up dns", new Object[0]);
            processMsg(6, new AVMDLDNSInfo(this.mBackUpType, aVMDLDNSInfo.mHost, (String) null, 0L, (String) null));
        }
        String.format("****end process result what:%d id:%s host:%s", Integer.valueOf(i2), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost);
    }
}
