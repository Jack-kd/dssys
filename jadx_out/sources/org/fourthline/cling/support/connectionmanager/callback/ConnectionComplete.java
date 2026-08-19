package org.fourthline.cling.support.connectionmanager.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.InvalidValueException;

/* loaded from: classes5.dex */
public abstract class ConnectionComplete extends ActionCallback {
    public ConnectionComplete(Service service, int i2) {
        this(service, null, i2);
    }

    public ConnectionComplete(Service service, ControlPoint controlPoint, int i2) throws InvalidValueException {
        super(new ActionInvocation(service.getAction("ConnectionComplete")), controlPoint);
        getActionInvocation().setInput("ConnectionID", Integer.valueOf(i2));
    }
}
