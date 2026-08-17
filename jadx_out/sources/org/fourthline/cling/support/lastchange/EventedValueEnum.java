package org.fourthline.cling.support.lastchange;

import java.lang.Enum;
import java.util.Map;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;

/* loaded from: classes5.dex */
public abstract class EventedValueEnum<E extends Enum> extends EventedValue<E> {
    public EventedValueEnum(E e2) {
        super(e2);
    }

    public abstract E enumValueOf(String str);

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public Datatype getDatatype() {
        return null;
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public String toString() {
        return getValue().name();
    }

    public EventedValueEnum(Map.Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public E valueOf(String str) throws InvalidValueException {
        return (E) enumValueOf(str);
    }
}
