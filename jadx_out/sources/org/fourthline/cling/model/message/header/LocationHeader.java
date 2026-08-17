package org.fourthline.cling.model.message.header;

import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes5.dex */
public class LocationHeader extends UpnpHeader<URL> {
    public LocationHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(new URL(str));
        } catch (MalformedURLException e2) {
            throw new InvalidHeaderException("Invalid URI: " + e2.getMessage());
        }
    }

    public LocationHeader(URL url) {
        setValue(url);
    }

    public LocationHeader(String str) throws InvalidHeaderException {
        setString(str);
    }
}
