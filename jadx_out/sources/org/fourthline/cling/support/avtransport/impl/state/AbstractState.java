package org.fourthline.cling.support.avtransport.impl.state;

import org.fourthline.cling.support.model.AVTransport;
import org.fourthline.cling.support.model.TransportAction;

/* loaded from: classes5.dex */
public abstract class AbstractState<T extends AVTransport> {
    private T transport;

    public AbstractState(T t2) {
        this.transport = t2;
    }

    public abstract TransportAction[] getCurrentTransportActions();

    public T getTransport() {
        return this.transport;
    }
}
