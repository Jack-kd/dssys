package org.fourthline.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.model.Channel;

/* loaded from: classes5.dex */
public abstract class SetMute extends ActionCallback {
    private static Logger log = Logger.getLogger(SetMute.class.getName());

    public SetMute(Service service, boolean z2) {
        this(new UnsignedIntegerFourBytes(0L), service, z2);
    }

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        log.fine("Executed successfully");
    }

    public SetMute(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, boolean z2) throws InvalidValueException {
        super(new ActionInvocation(service.getAction("SetMute")));
        getActionInvocation().setInput("InstanceID", unsignedIntegerFourBytes);
        getActionInvocation().setInput("Channel", Channel.Master.toString());
        getActionInvocation().setInput("DesiredMute", Boolean.valueOf(z2));
    }
}
