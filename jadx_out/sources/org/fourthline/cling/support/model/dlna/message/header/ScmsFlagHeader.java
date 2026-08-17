package org.fourthline.cling.support.model.dlna.message.header;

import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.ScmsFlagType;

/* loaded from: classes5.dex */
public class ScmsFlagHeader extends DLNAHeader<ScmsFlagType> {
    static final Pattern pattern = Pattern.compile("^[01]{2}$", 2);

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        ScmsFlagType value = getValue();
        StringBuilder sb = new StringBuilder();
        sb.append(value.isCopyright() ? "0" : "1");
        sb.append(value.isOriginal() ? "0" : "1");
        return sb.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException {
        if (pattern.matcher(str).matches()) {
            setValue(new ScmsFlagType(str.charAt(0) == '0', str.charAt(1) == '0'));
            return;
        }
        throw new InvalidHeaderException("Invalid ScmsFlag header value: " + str);
    }
}
