package org.fourthline.cling.support.contentdirectory.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;

/* loaded from: classes5.dex */
public abstract class GetSystemUpdateID extends ActionCallback {
    public GetSystemUpdateID(Service service) {
        super(new ActionInvocation(service.getAction("GetSystemUpdateID")));
    }

    public abstract void received(ActionInvocation actionInvocation, long j2);

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        long jLongValue;
        boolean z2;
        try {
            jLongValue = Long.valueOf(actionInvocation.getOutput("Id").getValue().toString()).longValue();
            z2 = true;
        } catch (Exception e2) {
            actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, "Can't parse GetSystemUpdateID response: " + e2, e2));
            failure(actionInvocation, null);
            jLongValue = 0;
            z2 = false;
        }
        if (z2) {
            received(actionInvocation, jLongValue);
        }
    }
}
