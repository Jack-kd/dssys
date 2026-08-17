package com.czhj.sdk.common.models;

import android.text.TextUtils;
import com.czhj.volley.toolbox.Volley;

/* loaded from: classes3.dex */
public class Config {
    private static Config gInstance;
    private boolean disable_boot_mark;
    private boolean disable_oaid_api;
    private int disable_up_oaid;
    private String log;
    private boolean logenc;
    private int max_send_log_records = 100;
    private int send_log_interval = 3;
    private int networkTimeout = 5000;
    private boolean mIsGDPRRegion = false;

    private Config() {
    }

    public static Config sharedInstance() {
        if (gInstance == null) {
            synchronized (Config.class) {
                try {
                    if (gInstance == null) {
                        gInstance = new Config();
                    }
                } finally {
                }
            }
        }
        return gInstance;
    }

    public int getDisable_up_OAid() {
        return this.disable_up_oaid;
    }

    public String getLogUrl() {
        if (!TextUtils.isEmpty(this.log)) {
            return this.log;
        }
        return "https://dc.sigmob.cn/log";
    }

    public int getMax_send_log_records() {
        if (this.max_send_log_records < 10) {
            this.max_send_log_records = 100;
        }
        return this.max_send_log_records;
    }

    public int getNetworkTimeout() {
        return this.networkTimeout;
    }

    public boolean getOaidApiDisable() {
        return this.disable_oaid_api;
    }

    public int getSend_log_interval() {
        return this.send_log_interval;
    }

    public boolean isDisableBootMark() {
        return this.disable_boot_mark;
    }

    public boolean isEnc() {
        return this.logenc;
    }

    public boolean isGDPRRegion() {
        return this.mIsGDPRRegion;
    }

    public void setEnable_okhttp3(boolean z2) {
        Volley.setEnableOkhttp3(z2);
    }

    public void setNetworkTimeout(int i2) {
        if (i2 <= 0 || i2 > 30) {
            return;
        }
        this.networkTimeout = i2 * 1000;
    }

    public void update(boolean z2, boolean z3, boolean z4, int i2, String str, int i3, int i4, boolean z5) {
        this.mIsGDPRRegion = z2;
        this.disable_boot_mark = z3;
        this.disable_oaid_api = z4;
        this.disable_up_oaid = i2;
        this.max_send_log_records = i4;
        this.send_log_interval = i3;
        this.log = str;
        this.logenc = z5;
    }
}
