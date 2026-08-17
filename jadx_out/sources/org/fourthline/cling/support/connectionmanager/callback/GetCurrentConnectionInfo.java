package org.fourthline.cling.support.connectionmanager.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.ConnectionInfo;
import org.fourthline.cling.support.model.ProtocolInfo;

/* loaded from: classes5.dex */
public abstract class GetCurrentConnectionInfo extends ActionCallback {
    public GetCurrentConnectionInfo(Service service, int i2) {
        this(service, null, i2);
    }

    public abstract void received(ActionInvocation actionInvocation, ConnectionInfo connectionInfo);

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        try {
            received(actionInvocation, new ConnectionInfo(((Integer) actionInvocation.getInput("ConnectionID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("RcsID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("AVTransportID").getValue()).intValue(), new ProtocolInfo(actionInvocation.getOutput("ProtocolInfo").toString()), new ServiceReference(actionInvocation.getOutput("PeerConnectionManager").toString()), ((Integer) actionInvocation.getOutput("PeerConnectionID").getValue()).intValue(), ConnectionInfo.Direction.valueOf(actionInvocation.getOutput("Direction").toString()), ConnectionInfo.Status.valueOf(actionInvocation.getOutput("Status").toString())));
        } catch (Exception e2) {
            actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, "Can't parse ConnectionInfo response: " + e2, e2));
            failure(actionInvocation, null);
        }
    }

    public GetCurrentConnectionInfo(Service service, ControlPoint controlPoint, int i2) throws InvalidValueException {
        super(new ActionInvocation(service.getAction("GetCurrentConnectionInfo")), controlPoint);
        getActionInvocation().setInput("ConnectionID", Integer.valueOf(i2));
    }
}
