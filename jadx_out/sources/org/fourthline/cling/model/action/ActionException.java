package org.fourthline.cling.model.action;

import com.anythink.core.common.d.i;
import org.fourthline.cling.model.types.ErrorCode;

/* loaded from: classes5.dex */
public class ActionException extends Exception {
    private int errorCode;

    public ActionException(int i2, String str) {
        super(str);
        this.errorCode = i2;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public ActionException(int i2, String str, Throwable th) {
        super(str, th);
        this.errorCode = i2;
    }

    public ActionException(ErrorCode errorCode) {
        this(errorCode.getCode(), errorCode.getDescription());
    }

    public ActionException(ErrorCode errorCode, String str) {
        this(errorCode, str, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionException(ErrorCode errorCode, String str, boolean z2) {
        int code = errorCode.getCode();
        if (z2) {
            str = errorCode.getDescription() + ". " + str + i.f2495E;
        }
        this(code, str);
    }

    public ActionException(ErrorCode errorCode, String str, Throwable th) {
        this(errorCode.getCode(), errorCode.getDescription() + ". " + str + i.f2495E, th);
    }
}
