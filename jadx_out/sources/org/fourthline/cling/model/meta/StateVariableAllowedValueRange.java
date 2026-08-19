package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;

/* loaded from: classes5.dex */
public class StateVariableAllowedValueRange implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariableAllowedValueRange.class.getName());
    private final long maximum;
    private final long minimum;
    private final long step;

    public StateVariableAllowedValueRange(long j2, long j3) {
        this(j2, j3, 1L);
    }

    public long getMaximum() {
        return this.maximum;
    }

    public long getMinimum() {
        return this.minimum;
    }

    public long getStep() {
        return this.step;
    }

    public boolean isInRange(long j2) {
        return j2 >= getMinimum() && j2 <= getMaximum() && j2 % this.step == 0;
    }

    public String toString() {
        return "Range Min: " + getMinimum() + " Max: " + getMaximum() + " Step: " + getStep();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        return new ArrayList();
    }

    public StateVariableAllowedValueRange(long j2, long j3, long j4) {
        if (j2 > j3) {
            log.warning("UPnP specification violation, allowed value range minimum '" + j2 + "' is greater than maximum '" + j3 + "', switching values.");
            this.minimum = j3;
            this.maximum = j2;
        } else {
            this.minimum = j2;
            this.maximum = j3;
        }
        this.step = j4;
    }
}
