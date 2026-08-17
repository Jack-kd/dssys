package org.fourthline.cling.model.meta;

/* loaded from: classes5.dex */
public class StateVariableEventDetails {
    private final int eventMaximumRateMilliseconds;
    private final int eventMinimumDelta;
    private final boolean sendEvents;

    public StateVariableEventDetails() {
        this(true, 0, 0);
    }

    public int getEventMaximumRateMilliseconds() {
        return this.eventMaximumRateMilliseconds;
    }

    public int getEventMinimumDelta() {
        return this.eventMinimumDelta;
    }

    public boolean isSendEvents() {
        return this.sendEvents;
    }

    public StateVariableEventDetails(boolean z2) {
        this(z2, 0, 0);
    }

    public StateVariableEventDetails(boolean z2, int i2, int i3) {
        this.sendEvents = z2;
        this.eventMaximumRateMilliseconds = i2;
        this.eventMinimumDelta = i3;
    }
}
