package org.fourthline.cling.support.connectionmanager;

import com.anythink.core.common.d.i;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* loaded from: classes5.dex */
public class ConnectionManagerException extends ActionException {
    public ConnectionManagerException(int i2, String str) {
        super(i2, str);
    }

    public ConnectionManagerException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public ConnectionManagerException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ConnectionManagerException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode, String str) {
        super(connectionManagerErrorCode.getCode(), connectionManagerErrorCode.getDescription() + ". " + str + i.f2495E);
    }

    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode) {
        super(connectionManagerErrorCode.getCode(), connectionManagerErrorCode.getDescription());
    }
}
