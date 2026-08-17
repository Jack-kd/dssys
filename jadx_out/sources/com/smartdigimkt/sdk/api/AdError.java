package com.smartdigimkt.sdk.api;

import com.smartdigimkt.f.i;

/* loaded from: classes5.dex */
public class AdError {
    protected String code;
    protected String message;

    public AdError(String str, String str2) {
        this.code = str;
        this.message = str2;
    }

    public String getCode() {
        return this.code;
    }

    public String getErrorInfo() {
        StringBuilder sb = new StringBuilder("{code='");
        sb.append(this.code);
        sb.append("', message='");
        return i.a(sb, this.message, "'}");
    }

    public String getMessage() {
        return this.message;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdError{code='");
        sb.append(this.code);
        sb.append("', message='");
        return i.a(sb, this.message, "'}");
    }
}
