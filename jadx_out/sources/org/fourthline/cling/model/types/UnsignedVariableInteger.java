package org.fourthline.cling.model.types;

import io.flutter.embedding.android.KeyboardMap;
import java.util.logging.Logger;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public abstract class UnsignedVariableInteger {
    private static final Logger log = Logger.getLogger(UnsignedVariableInteger.class.getName());
    protected long value;

    public enum Bits {
        EIGHT(255),
        SIXTEEN(WebSocketProtocol.PAYLOAD_SHORT_MAX),
        TWENTYFOUR(16777215),
        THIRTYTWO(KeyboardMap.kValueMask);

        private long maxValue;

        Bits(long j2) {
            this.maxValue = j2;
        }

        public long getMaxValue() {
            return this.maxValue;
        }
    }

    public UnsignedVariableInteger() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((UnsignedVariableInteger) obj).value;
    }

    public abstract Bits getBits();

    public int getMinValue() {
        return 0;
    }

    public Long getValue() {
        return Long.valueOf(this.value);
    }

    public int hashCode() {
        long j2 = this.value;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public UnsignedVariableInteger increment(boolean z2) {
        if (this.value + 1 > getBits().getMaxValue()) {
            this.value = z2 ? 1L : 0L;
            return this;
        }
        this.value++;
        return this;
    }

    public void isInRange(long j2) throws NumberFormatException {
        if (j2 < getMinValue() || j2 > getBits().getMaxValue()) {
            throw new NumberFormatException("Value must be between " + getMinValue() + " and " + getBits().getMaxValue() + ": " + j2);
        }
    }

    public UnsignedVariableInteger setValue(long j2) throws NumberFormatException {
        isInRange(j2);
        this.value = j2;
        return this;
    }

    public String toString() {
        return Long.toString(this.value);
    }

    public UnsignedVariableInteger(long j2) throws NumberFormatException {
        setValue(j2);
    }

    public UnsignedVariableInteger(String str) throws NumberFormatException {
        if (str.startsWith("-")) {
            log.warning("Invalid negative integer value '" + str + "', assuming value 0!");
            str = "0";
        }
        setValue(Long.parseLong(str.trim()));
    }
}
