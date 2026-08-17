package org.fourthline.cling.model.gena;

import java.util.LinkedHashMap;
import java.util.Map;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

/* loaded from: classes5.dex */
public abstract class GENASubscription<S extends Service> {
    protected int actualDurationSeconds;
    protected UnsignedIntegerFourBytes currentSequence;
    protected Map<String, StateVariableValue<S>> currentValues;
    protected int requestedDurationSeconds;
    protected S service;
    protected String subscriptionId;

    public GENASubscription(S s2) {
        this.requestedDurationSeconds = 1800;
        this.currentValues = new LinkedHashMap();
        this.service = s2;
    }

    public abstract void established();

    public abstract void eventReceived();

    public synchronized int getActualDurationSeconds() {
        return this.actualDurationSeconds;
    }

    public synchronized UnsignedIntegerFourBytes getCurrentSequence() {
        return this.currentSequence;
    }

    public synchronized Map<String, StateVariableValue<S>> getCurrentValues() {
        return this.currentValues;
    }

    public synchronized int getRequestedDurationSeconds() {
        return this.requestedDurationSeconds;
    }

    public synchronized S getService() {
        return this.service;
    }

    public synchronized String getSubscriptionId() {
        return this.subscriptionId;
    }

    public synchronized void setActualSubscriptionDurationSeconds(int i2) {
        this.actualDurationSeconds = i2;
    }

    public synchronized void setSubscriptionId(String str) {
        this.subscriptionId = str;
    }

    public String toString() {
        return "(GENASubscription, SID: " + getSubscriptionId() + ", SEQUENCE: " + getCurrentSequence() + ")";
    }

    public GENASubscription(S s2, int i2) {
        this(s2);
        this.requestedDurationSeconds = i2;
    }
}
