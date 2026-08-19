package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class AdErrorInfo {
    public static int LOAD_ERROR = 1;
    public static int RENDER_ERROR = 2;
    private int code;
    private int errorType;
    private String message;

    public AdErrorInfo(int i2, int i3, String str) {
        this.errorType = i2;
        this.code = i3;
        this.message = str;
    }

    public int getCode() {
        return this.code;
    }

    public int getErrorType() {
        return this.errorType;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setErrorType(int i2) {
        this.errorType = i2;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
