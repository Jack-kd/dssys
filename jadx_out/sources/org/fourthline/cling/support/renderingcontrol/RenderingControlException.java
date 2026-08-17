package org.fourthline.cling.support.renderingcontrol;

import com.anythink.core.common.d.i;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* loaded from: classes5.dex */
public class RenderingControlException extends ActionException {
    public RenderingControlException(int i2, String str) {
        super(i2, str);
    }

    public RenderingControlException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public RenderingControlException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public RenderingControlException(ErrorCode errorCode) {
        super(errorCode);
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode, String str) {
        super(renderingControlErrorCode.getCode(), renderingControlErrorCode.getDescription() + ". " + str + i.f2495E);
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode) {
        super(renderingControlErrorCode.getCode(), renderingControlErrorCode.getDescription());
    }
}
