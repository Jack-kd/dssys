package org.fourthline.cling.support.avtransport;

import com.anythink.core.common.d.i;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* loaded from: classes5.dex */
public class AVTransportException extends ActionException {
    public AVTransportException(int i2, String str) {
        super(i2, str);
    }

    public AVTransportException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public AVTransportException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public AVTransportException(ErrorCode errorCode) {
        super(errorCode);
    }

    public AVTransportException(AVTransportErrorCode aVTransportErrorCode, String str) {
        super(aVTransportErrorCode.getCode(), aVTransportErrorCode.getDescription() + ". " + str + i.f2495E);
    }

    public AVTransportException(AVTransportErrorCode aVTransportErrorCode) {
        super(aVTransportErrorCode.getCode(), aVTransportErrorCode.getDescription());
    }
}
