package com.fl.saas.adx.base.exception;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class FLError {
    private int code;
    private int errorType;
    private String message;

    public FLError() {
    }

    public static FLError create(int i2, int i3, String str) {
        return new FLError(i2, i3, str);
    }

    public int getCode() {
        return this.code;
    }

    public int getErrorType() {
        return this.errorType;
    }

    public String getMsg() {
        return TextUtils.isEmpty(this.message) ? "" : this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setErrorType(int i2) {
        this.errorType = i2;
    }

    public void setMsg(String str) {
        this.message = str;
    }

    public String toString() {
        return "{code=" + this.code + ", message='" + this.message + "', errorType=" + this.errorType + '}';
    }

    public FLError(int i2, int i3, String str) {
        this.code = i2;
        this.message = str;
        this.errorType = i3;
    }

    public static FLError create(int i2, String str) {
        return new FLError(i2, str);
    }

    public FLError(int i2, String str) {
        this.code = i2;
        this.message = str;
    }

    public static FLError create(String str) {
        return new FLError(str);
    }

    public FLError(String str) {
        this.message = str;
    }
}
