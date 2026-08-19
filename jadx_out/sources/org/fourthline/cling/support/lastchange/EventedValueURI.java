package org.fourthline.cling.support.lastchange;

import java.net.URI;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Exceptions;

/* loaded from: classes5.dex */
public class EventedValueURI extends EventedValue<URI> {
    private static final Logger log = Logger.getLogger(EventedValueURI.class.getName());

    public EventedValueURI(URI uri) {
        super(uri);
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public Datatype getDatatype() {
        return Datatype.Builtin.URI.getDatatype();
    }

    public EventedValueURI(Map.Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public URI valueOf(String str) throws InvalidValueException {
        try {
            return (URI) super.valueOf(str);
        } catch (InvalidValueException e2) {
            log.info("Ignoring invalid URI in evented value '" + str + "': " + Exceptions.unwrap(e2));
            return null;
        }
    }
}
